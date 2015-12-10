require 'rails_helper'

feature 'Logging In' do
  before do
    visit new_user_session_path
  end

  it 'displays a login form'
  it 'submitting the form creates a new session'
end
