require 'rails_helper'

feature 'Visitng Root' do
  before do
    visit root_path
  end

  it 'displays a link to login' do
    find_link('Login')
  end

  it 'and clicking Login goes to login path' do
    find_link('Login').click
    expect(current_path).to eq(new_user_session_path)
  end

  it 'displays a link to sign up'

  it 'and clicking Sign Up goes to sign up path'
end
