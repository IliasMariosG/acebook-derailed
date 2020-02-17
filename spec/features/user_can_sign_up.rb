require 'rails_helper'

feature "test index" do
 scenario "Can submit posts and view them" do
    sign_up 
    expect(page).to have_content("Hello")
  end
end
