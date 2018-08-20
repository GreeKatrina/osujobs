class Job < ApplicationRecord
    has_many :job_questions, dependent: :destroy
    has_many :required_documents, dependent: :destroy
    has_many :optional_documents, dependent: :destroy
    belongs_to :feed
end
