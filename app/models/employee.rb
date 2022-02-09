class Employee < ApplicationRecord
    validates :first_name, :middle_name, :last_name, :role, :salary, presence: true
    validates :first_name,:middle_name,:last_name, format: { with: /\A[a-zA-Z\s]+\z/, message: "only allows letters and spaces." }
    validates :salary, numericality: {only_integer: true, greater_than: 0}
    
end
