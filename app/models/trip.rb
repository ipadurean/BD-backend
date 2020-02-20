require 'date'

class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :driver
  validates :driver_id, :user_id, :start_time, :end_time, :address, presence: true

  def self.filtered_trips(starts, ends)
    date1 = DateTime.parse(starts)
    date2 = DateTime.parse(ends)
      Trip.all.select do |trip|
        d1 = DateTime.parse(trip.start_time.to_s)
        d2 = DateTime.parse(trip.end_time.to_s)
        (date1 > d1 && date1 < d2) || 
        (date2 > d1 && date2 < d2) || 
        (date1 <= d1 && date2 >= d2)
      end
  end
end
