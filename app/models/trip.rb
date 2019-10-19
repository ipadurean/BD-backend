class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :driver
  validates :driver_id, :user_id, :start_time, :end_time, :address, presence: true
end
