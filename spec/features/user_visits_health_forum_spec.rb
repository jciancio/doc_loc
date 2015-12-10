require 'rails_helper'

feature 'Visiting Health Forum' do
  before do
    @user = User.create(email: 'example@example.com', password: 'password')
    @message = Message.create(tite: 'example', description: 'example', user_id: @user.id)
    visit new_user_session_path
    fill_in('Email', with: @user.email)
    fill_in('Password', with: @user.password)
    click_button('Log in')
    click_link('Health Forum')
  end

  it 'displays a new message form'
  it 'displays all messages'
  it 'displays a comment count on each message'
  it 'displays a timestamp on each message'
  it 'displays a user signature on each message'
end
