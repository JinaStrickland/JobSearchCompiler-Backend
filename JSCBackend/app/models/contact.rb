class Contact < ApplicationRecord

    has_many :job_contacts, dependent: :delete_all
    has_many :job_applications, through: :job_contacts

    belongs_to :company

end
