class Teacher < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_address?
end
