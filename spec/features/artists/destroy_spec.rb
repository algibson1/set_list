require "rails_helper"

RSpec.describe "Destroying an artist" do
  it "can delete the artist from index page" do
    artist = Artist.create!(name: "Prince")

    visit "/artists"
    expect(page).to have_content("Prince")
    click_button("Delete")

    expect(current_path).to eq("/artists")
    expect(page).to_not have_content("Prince")
  end
end