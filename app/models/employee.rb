class Employee < ApplicationRecord
    validates :first_name, :last_name, presence: true
    validates :email, presence:true, uniqueness: true
    validates :city, :state, :country, :zipcode, :address_line_1, presence: true

    def name
        "#{first_name} #{last_name}".strip
    end
    def full_address
        "#{address_line_1}, #{address_line_2} #{city}, #{state}, #{country}, #{zipcode}".strip
    end
end
