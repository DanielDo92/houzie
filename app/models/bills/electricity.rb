module Bills
  class Electricity < Base
    ELECTRICITY_PRICE = 4000

    validates :unit_count, presence: true

    def unit
      "kWh"
    end

    def calculate_total
      self.total_price = unit_count * ELECTRICITY_PRICE
    end
  end
end
