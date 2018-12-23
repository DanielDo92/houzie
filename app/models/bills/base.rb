module Bills
  class Base < ActiveRecord::Base
    belongs_to :room

    before_save :calculate_total

    validates :room, presence: true
    validates :paid, inclusion: { in: [true, false] }
    validates :total_price, presence: true, numericality: { only_integer: true }

    self.table_name = "bills"

    def unit
      "tenant"
    end

    def calculate_total
      total_price
    end
  end
end
