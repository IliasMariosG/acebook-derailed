# frozen_string_literal: true

require 'rails_helper'

describe 'test sign in' do
  it 'Sign up / logout and then sign in' do
    # First Sign Up so ben exists in the system
    sign_up
    click_link 'New post'
    fill_in 'post[message]', with: 'Hello, world!'
    click_button 'Submit'
    click_link 'logout'
    # Second Sign Up so bassel exists in the system
    sign_up2
    click_link 'ben@gmail.com'
    fill_in 'post[message]', with: 'Hi Ben!'
    click_button 'Submit'
    expect(page).to have_content('Hi Ben!')
    # click_link 'ben@gmail.com'

    # expect(page).to have_content("ben@gmail.com's profile")
  end
end
