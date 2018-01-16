class Store < ActiveRecord::Base
  has_many :employees, :dependent => :restrict_with_error
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :must_carry_mens_or_womens_apparel
  before_destroy :check_for_employees


  def must_carry_mens_or_womens_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "must carry either mens or womens apparel")
      errors.add(:womens_apparel, "must carry either mens or womens apparel")
    end
  end

  private
    def check_for_employees
      if employees.size >= 1
        errors.add_to_base("Cannot destroy a store with employees!")
      end
    end
end
