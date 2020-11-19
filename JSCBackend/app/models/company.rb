class Company < ApplicationRecord

    has_many :contacts, dependent: :delete_all
    has_many :job_applications
    has_many :users, through: :job_applications

end
