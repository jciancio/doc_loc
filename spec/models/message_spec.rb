require 'rails_helper'

RSpec.describe Message, type: :model do
  subject(:message) {Message.new}

  it {is_expected.to have_many(:comments)}
  it {is_expected.to belong_to(:user)}
end
