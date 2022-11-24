class Teacher < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews
  has_one_attached :photo
  geocoded_by :location

  after_validation :geocode, if: :will_save_change_to_location?


  # include PgSearch::Model
  # pg_search_scope :search_by_location_and_first_name,
  #   against: [ :location, :first_name ],
  #   using: {
  #     tsearch: { prefix: true }
  #   }

  def avg_rating
    return 0 if reviews.empty?
    reviews.average(:rating).round
  end

end
