require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'associations' do

    before(:each) do
      @user = User.create!(username: "Kat", email: "kat@mail.com", password: "password")
      @friend = User.create!(username: "Nat", email: "nat@mail.com", password: "password")
      @user.friend_request(@friend)
      @game = Game.create!(name: "Risk")
      OwnedGame.create!(owner_id: @user.id, game_id: @game.id)
      @review = Review.create!(reviewer_id: @user.id, game_id: @game.id, rating: 5, body: "Awesome game!")
    end


    it 'returns the friend that was requested' do
      expect(@user.pending_friends).to include(@friend)
    end

    it 'returns the friend once the request is accepted' do
      @friend.accept_request(@user)
      expect(@user.friends).to include(@friend)
    end

    it 'returns the review that was made' do
      expect(@user.reviews).to include(@review)
    end

    it 'returns the game that was reviewed' do
      expect(@user.reviewed_games).to include(@game)
    end

    it 'returns the game that was made' do
      expect(@user.games).to include(@game)
    end
  end

end
