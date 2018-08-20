class JobQuestion < ApplicationRecord
    belongs_to :job
    has_many :job_question_options, dependent: :destroy
end
