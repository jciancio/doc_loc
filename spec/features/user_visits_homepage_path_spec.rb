require 'rails_helper'

feature 'Visitng Homepage Path' do
  before do
    @user = User.create(email: 'example@example.com', password: 'password')
    visit new_user_session_path
    fill_in('Email', with: @user.email)
    fill_in('Password', with: @user.password)
    click_button('Log in')
  end

  it 'displays personal welcome message'
  it 'displays a zipcode form'
  it 'displays two selection dropdown menus'
  it 'displays a map'
end
