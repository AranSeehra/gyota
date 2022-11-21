class Booking < ApplicationRecord
  belongs_to :teachers
  belongs_to :users
end
