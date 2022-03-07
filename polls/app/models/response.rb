class Response < ApplicationRecord

    validates :user_id, :answer_choice_id, presence: true
    validate :not_duplicate_response

    def sibling_responses
      debugger
      self.question.responses.where.not(id: self.id)
    end

    def respondent_already_answered?
      self.sibling_responses.exists?(self.id)
    end

    belongs_to :answer_choice,
      primary_key: :id,
      foreign_key: :answer_choice_id,
      class_name: :AnswerChoice

    belongs_to :respondent,
      primary_key: :id,
      foreign_key: :user_id,
      class_name: :User

    has_one :question,
      through: :answer_choice,
      source: :question

  private
  def not_duplicate_response
    if respondent_already_answered?
      errors[:base] << 'Response already entered'
    end
  end


end