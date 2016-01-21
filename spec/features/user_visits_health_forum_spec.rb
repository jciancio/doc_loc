require 'rails_helper'

feature 'Visiting Health Forum' do
  include ActionView::Helpers
  before do
    @user = User.create(email: 'example@example.com', password: 'password')
    (1..100).each do |i|
      @message = Message.create(id: i, title: "example #{i}", description: "example #{i}", user_id: @user.id)
      @comment = Comment.create(id: i, body: "comment #{i}", message_id: i)
    end
    visit new_user_session_path
    fill_in('Email', with: @user.email)
    fill_in('Password', with: @user.password)
    click_button('Log in')
    click_link('Health Forum')
  end

  it 'displays a new message form' do
    find_field('Topic')
    find_field('Description')
    find_button('Create Message')
  end

  it 'displays all messages' do
    expect(page).to have_content(@message.title)
  end

  it 'displays a comment count on each message' do
    expect(page).to have_content(@message.comments.count)
  end

  it 'displays a timestamp on each message' do
    expect(page).to have_content(time_ago_in_words(@message.created_at))
  end

  it 'displays a user signature on each message' do
    expect(page).to have_content(@message.user.email)
  end
end
