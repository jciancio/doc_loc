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

  it 'submitting the form creates a user'
end
