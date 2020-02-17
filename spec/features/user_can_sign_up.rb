require 'rails_helper'

feature "test index" do
 scenario "users can sign up for an account" do
    sign_up 
    expect(page).to have_content("Hello")
  end
end
