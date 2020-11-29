class FollowUp < ApplicationRecord

    belongs_to :job_application


    def self.followups(job_application_id)
        JobApplication.all.find_all do |ja|
        ja.id == job_application_id
        end
    end
    

end
