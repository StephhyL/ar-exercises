class Store < ActiveRecord::Base
  has_many :employees

  #store must have always a name that is min 3 char
  validates :name, length: { minimum: 3, too_short: 'name too short' }

  #annual_revenure => 0
  validates :annual_revenue,
            numericality: {
              only_interger: true,
              greater_than_or_equal_to: 0,
            }

  validate :must_carry_mens_and_or_womens_apparel

  def must_carry_mens_and_or_womens_apparel
    unless mens_apparel || womens_apparel
      errors.add(:mens_apparel, 'must carry mens_apparel and/or womens_apparel')
      errors.add(
        :womens_apparel,
        'must carry mens_apparel and/or womens_apparel',
      )
    end
  end
end
