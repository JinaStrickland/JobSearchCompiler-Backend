class User < ApplicationRecord

    has_secure_password

    has_many :job_applications, dependent: :delete_all
    has_many :companies, through: :job_applications
    accepts_nested_attributes_for :job_application, allow_destroy: true

end
