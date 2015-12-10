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

  it 'displays a link to sign up' do
    find_link('Sign up')
  end

  it 'and clicking Sign Up goes to sign up path' do
    click_link('Sign up')
    expect(current_path).to eq(new_user_registration_path)
  end
end
