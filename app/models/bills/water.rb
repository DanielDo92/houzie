module Bills
  class Water < Base
    PRICE_PER_PERSON = 100_000

    def unit_count
      room.tenants.count
    end

    def calculate_total
      self.total_price =
        if unit_count < 3
          unit_count * PRICE_PER_PERSON
        elsif unit_count == 3
          350_000
        else
          500_000
        end
    end
  end
end
