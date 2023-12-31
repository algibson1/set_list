require "rails_helper"

RSpec.describe "the songs show page" do
  it "displays the song title" do
    artist = Artist.create!(name: "Carly Rae Jepsen")
    song1 = artist.songs.create!(title: "I really like you", length: 233, play_count: 234)
    song2 = artist.songs.create!(title: "Call me maybe", length: 342, play_count: 654)
    visit "/songs/#{song1.id}"
    #localhost:3000/songs/1

    expect(page).to have_content(song1.title)
    expect(page).to_not have_content(song2.title)
  end

  it "displays the name of the artist for the song" do
    artist = Artist.create!(name: "Carly Rae Jepsen")
    song1 = artist.songs.create!(title: "I really like you", length: 233, play_count: 234)
    song2 = artist.songs.create!(title: "Call me maybe", length: 342, play_count: 654)
    
    visit "/songs/#{song1.id}"
    #save_and_open_page (capybara gem, will render the window so I see what the test is seeing/checking)
    expect(page).to have_content(artist.name)
  end
end