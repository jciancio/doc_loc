require 'rails_helper'

feature 'Logging In' do
  before do
    visit new_user_session_path
    @user = User.create(email: 'example@example.com', password: 'password')
  end

  it 'displays a login form' do
    find_field('Email')
    find_field('Password')
    find_button('Log in')
  end

  it 'submitting the form creates a new session' do
    fill_in('Email', with: @user.email)
    fill_in('Password', with: @user.password)
    click_button('Log in')
    expect(current_path).to eq(homepage_path)
  end
end
