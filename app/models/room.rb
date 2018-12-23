class Room < ActiveRecord::Base
  alias_attribute :tenants, :users

  validates :name, :level, :area, :price, presence: true
  validates :suited, presence: true, inclusion: { in: [true, false] }
  # has_many :bills
  has_many :users

  def current_bill
    bills.where("? <= date <= ?",
                Date.current.beginning_of_month,
                Date.current.end_of_month)
      .where(paid: false).last
  end
end
