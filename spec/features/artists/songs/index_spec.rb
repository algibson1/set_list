require "rails_helper"

RSpec.describe "Artists Song index" do
  before do
    @prince = Artist.create!(name: "Prince")
    @purple = @prince.songs.create!(title: "Purple Rain", length: 435, play_count: 2345)
    @beret = @prince.songs.create!(title: "Raspberry beret", length: 235, play_count: 25423)
  end
  
  it "shows all of the titles of the songs for the artist" do
    visit "/artists/#{@prince.id}/songs"

    expect(page).to have_content(@purple.title)
    expect(page).to have_content(@beret.title)
  end

  it "links to each song's showpage" do
    visit "/artists/#{@prince.id}/songs"

    click_on @purple.title

    expect(current_path).to eq("/songs/#{@purple.id}")
  end

  it "shows the average song length for the artist" do
    visit "/artists/#{@prince.id}/songs"

    expect(page).to have_content("Average Song Length for Prince: 335.0")
  end
end