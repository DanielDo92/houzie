require "rails_helper"

RSpec.feature "Users can sign out" do
  let!(:user) { FactoryGirl.create(:user) }

  before { login_as user }

  scenario do
    visit "/"
    click_link "Sign out"
    expect(page).to have_content "You need to sign in or sign up before continuing."
  end
end
