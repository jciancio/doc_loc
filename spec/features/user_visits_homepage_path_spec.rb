require 'rails_helper'

feature 'Visitng Homepage Path' do
  before do
    @user = User.create(email: 'example@example.com', password: 'password')
    visit new_user_session_path
    fill_in('Email', with: @user.email)
    fill_in('Password', with: @user.password)
    click_button('Log in')
  end

  it 'displays personal welcome message' do
    page.has_content?('Welcome' + @user.email)
  end

  it 'displays a zipcode form' do
    find_field('zipcode')
    find_button('Validate')
  end

  it 'displays two selection dropdown menus and a search button' do
    find('.specialty-dropdown')
    find('.specialty-dropdown')
    find_button('Search')
  end

  it 'displays a map' do
    find('#map')
  end

  it 'displays a logout link'
  it 'and clicking logout ends the session'
end
