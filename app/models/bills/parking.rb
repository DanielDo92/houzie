module Bills
  class Parking < Base
    PRICE_PER_VEHICLE = 100_000

    def unit_count
      room.vehicle_count
    end

    def calculate_total
      self.total_price = unit_count * PRICE_PER_VEHICLE
    end

  end
end
