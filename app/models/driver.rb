class Driver < ApplicationRecord
  has_many :trips
  has_many :users, through: :trips

  def self.search(query)
    Driver.all.select do |driver|
      driver.name.downcase.include?(query) ||
      driver.username.downcase.include?(query) ||
      driver.car.downcase.include?(query)
    end
  end
end
