# frozen_string_literal: true

require 'rails_helper'

describe 'test new post' do
  it 'Can submit posts and view them' do
    sign_up
    click_link 'New post'
    fill_in 'Message', with: 'Hello, world!'
    click_button 'Submit'
    click_link 'logout'
    sign_up2
    fill_in 'comment[message]', with: 'Hello, Comment!'
    click_button 'Submit'
    expect(page).to have_content('Hello, Comment!')
  end
end
