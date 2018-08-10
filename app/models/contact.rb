class Contact < ApplicationRecord
  validates :last_name, :first_name, :email, :phone_number, presence: true
  validates :last_name, length: { maximum: 15 }
  validates :first_name, length: { maximum: 15 }
end
