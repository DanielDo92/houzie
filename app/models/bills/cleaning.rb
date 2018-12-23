module Bills
  class Cleaning < Base
    PRICE_PER_PERSON = 10_000

    def unit_count
      room.tenants.count
    end

    def calculate_total
      self.total_price = unit_count * PRICE_PER_PERSON
    end
  end
end
