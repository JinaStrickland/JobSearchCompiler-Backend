class User < ApplicationRecord
    
    has_many :job_applications, dependent: :delete_all
    has_many :companies, through: :job_applications
    accepts_nested_attributes_for :job_applications, allow_destroy: true
    
    has_secure_password
    validates :email, uniqueness: { case_sensitive: true }
    
end
