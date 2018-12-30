FactoryGirl.define do
  factory :bill, class: Bills::Base do
    type "Bills::Water"
    unit_count 2
    total_price 200_000
    room_id 1
  end
end
