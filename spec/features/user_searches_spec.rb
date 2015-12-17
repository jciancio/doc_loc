require 'rails_helper'

feature 'Searching on Homepage' do
  before do
    @user = User.create(email: 'example@example.com', password: 'password')
    visit new_user_session_path
    fill_in('Email', with: @user.email)
    fill_in('Password', with: @user.password)
    click_button('Log in')
  end

  it 'displays a correct search' do
    fill_in('zipcode', with: '33143')
    click_button('Validate')
  end
end
