require "rails_helper"

RSpec.feature "Admin can view" do
  let!(:admin) { FactoryGirl.create(:user, :admin) }
  let(:first_room) { FactoryGirl.create(:room) }
  let(:second_room) { FactoryGirl.create(:room) }
  let!(:first_bill) { FactoryGirl.create(:bill, room_id: first_room.id) }
  let!(:second_bill) { FactoryGirl.create(:bill, room_id: second_room.id) }

  before do
    login_as admin
  end

  scenario "all the rooms" do
    visit "/admin"
    within "table" do
      expect(page).to have_content first_room.name
      expect(page).to have_content first_room.tenants.count
      expect(page).to have_content number_with_delimiter(first_room.price, delimiter: ",")
      expect(page).to have_content second_room.name
      expect(page).to have_content second_room.tenants.count
      expect(page).to have_content number_with_delimiter(second_room.price, delimiter: ",")
    end
  end
end
