class RentalUnit < ApplicationRecord
  belongs_to :user

  def price
    price_cents / 100
  end

  def price_per_room
    price / rooms
  end
end
