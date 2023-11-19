class Employee < ApplicationRecord

    has_many :documents

    validates :first_name, :last_name, presence: true
    validates :email, presence:true, uniqueness: true
    validates :city, :state, :country, :zipcode, :address_line_1, presence: true
    validates :date_of_birth, :date_of_joining, :job_title, presence: true

    def name
        "#{first_name} #{last_name}".strip
    end
    def full_address
        "#{address_line_1}, #{address_line_2} #{city}, #{state}, #{country}, #{zipcode}".strip
    end
    def name_with_email
        "#{name}(#{email})"
    end
end
