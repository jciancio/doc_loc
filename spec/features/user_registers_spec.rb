require 'rails_helper'

feature 'Registering' do
  before do
    visit new_user_registration_path
  end

  it 'displays a sign up form' do
    find_field('Email')
    find_field('Password')
    find_field('Password confirmation')
    find_button('Sign up')
  end

  it 'submitting the form creates a user' do
    fill_in('Email', with: 'example@example.com')
    fill_in('Password', with: 'password')
    fill_in('Password confirmation', with: 'password')
    click_button('Sign up')
    expect(User.find_by(email: 'example@example.com')).to be_a(User)
  end
end
