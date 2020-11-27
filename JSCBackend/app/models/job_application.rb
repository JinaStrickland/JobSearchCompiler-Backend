class JobApplication < ApplicationRecord

    belongs_to :user
    belongs_to :company
  
    has_many :follow_ups, dependent: :delete_all
    has_many :interviews, dependent: :delete_all
    has_many :job_contacts, dependent: :delete_all
    
    has_many :contacts, through: :job_contacts


    

end
