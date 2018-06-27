class Admin::Client < ApplicationRecord
  has_many :lessons, dependent: :destroy



  # クライアントのフルネーム（性＋名）
  def full_name
    self.last_name + " " + self.first_name
  end

  # クライアントの住所
  def full_address
    self.prefecture + self.city + self.street + self.building
  end
end
