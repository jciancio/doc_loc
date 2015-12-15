require 'rails_helper'

feature 'Visiting Health Forum' do
  before do
    @user = User.create(email: 'example@example.com', password: 'password')
    100.times do |i|
      @message = Message.create(title: "example #{i}", description: "example #{i}", user_id: @user.id)
    end
    visit new_user_session_path
    fill_in('Email', with: @user.email)
    fill_in('Password', with: @user.password)
    click_button('Log in')
    click_link('Health Forum')
  end

  it 'displays a new message form' do
    find_field('topic')
    find_field('Description')
    find_button('Create Message')
  end

  it 'displays all messages' do
    expect(page).to have_content(@message.title)
  end

  it 'displays a comment count on each message'
  it 'displays a timestamp on each message'
  it 'displays a user signature on each message'
end
