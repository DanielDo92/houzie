class Room < ActiveRecord::Base
  validates :name, :level, :area, :price, presence: true
  validates :suited, inclusion: { in: [true, false] }

  has_many :bills, class_name: Bills::Base
  has_many :tenants, class_name: User

  def current_bills
    bills.where("? <= created_at <= ?",
                Date.current.beginning_of_month,
                Date.current.end_of_month)
         .where(paid: false)
  end

  def total_payable
    current_bills.inject(0) { |sum, bill| sum + bill.calculate_total }
  end
end
