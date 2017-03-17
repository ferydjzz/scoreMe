class MasterUser < ApplicationRecord
  validates_presence_of :full_name, :start_job_level, :role_id

  belongs_to :role
end
