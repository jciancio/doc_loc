require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject(:comment) {Comment.new}

  it {is_expected.to belong_to(:message)}
  it {is_expected.to belong_to(:user)}
end
