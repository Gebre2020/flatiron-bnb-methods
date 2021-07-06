class Neighborhood < ActiveRecord::Base

  # neighborhood_associations: city - neighborhood - listings - reservations
  belongs_to :city
  has_many :listings
  has_many :reservations, through: :listings

  include Reservable::InstanceMethods
  extend Reservable::ClassMethods
  
  def neighborhood_openings(start_date, end_date)
    openings(start_date, end_date)
  end


end
