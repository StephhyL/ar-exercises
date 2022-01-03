class Employee < ActiveRecord::Base
  belongs_to :store

  # first_name and last_name not null
  validates :first_name, :last_name, presence: true

  # hourly wage between 40 and 200
  validates :hourly_rate,
            numericality: {
              greater_than_or_equal_to: 40,
              less_than_or_equal_to: 200,
            }

  # employee must always have a store
  validates_associated :store
end
