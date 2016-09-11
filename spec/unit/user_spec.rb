require 'rails_helper'

describe User do
  describe '#owns?' do
    it 'returns true if user owns the article' do
      user_1 = User.new
      user_2 = User.new

      expect(user_1).to receive(:id).and_return 111
      expect(user_2).to receive(:id).and_return 112

      article = double Article, user_id: 111

      expect( user_1.owns?(article) ).to eql true
      expect( user_2.owns?(article) ).to eql false
    end
  end
end
