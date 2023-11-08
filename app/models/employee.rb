class Employee < ApplicationRecord
    validates :first_name, :last_name, presence: true
    validates :email, presence:true, uniqueness: true
    validates :city, :state, :country, :zipcode, :address_line_1, presence: true
end
