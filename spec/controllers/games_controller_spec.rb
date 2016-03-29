require 'rails_helper'

RSpec.describe GamesController, type: :controller do

  describe "Math" do
    it "expects math to be mathy" do
    expect(2).to eq(2)
    end
  end

end
