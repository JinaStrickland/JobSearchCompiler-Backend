class JobContact < ApplicationRecord

    belongs_to :job_application
    belongs_to :contact
    
end
