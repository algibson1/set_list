require "rails_helper"

RSpec.describe Artist do
  it {should have_many :songs}

  describe "instance methods" do
    describe "#average_song_length" do
      before do
        @prince = Artist.create!(name: "Prince")
        @purple = @prince.songs.create!(title: "Purple Rain", length: 435, play_count: 2345)
        @beret = @prince.songs.create!(title: "Raspberry beret", length: 235, play_count: 25423)
        @another = @prince.songs.create!(title: "Another Prince Song", length: 3, play_count: 354)
      end

      it "returns the average song length" do
        expect(@prince.average_song_length).to eq(224.33)
      end
    end
  end
end