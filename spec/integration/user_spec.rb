require 'rails_helper'

describe User do
  describe '#owns?' do
    it 'returns true if user owns the article' do
      user_1 = User.create! email: 'gk1@example.com',
        password: 'password',
        password_confirmation: 'password'

      user_2 = User.create! email: 'gk2@example.com',
        password: 'password',
        password_confirmation: 'password'

      article = Article.create! title: 'Title with more than 8 chars',
        text: 'Text',
        user_id: user_1.id

      expect( user_1.owns?(article) ).to eql true
      expect( user_2.owns?(article) ).to eql false
    end
  end
end
