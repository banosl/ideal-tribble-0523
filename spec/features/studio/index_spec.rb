require 'rails_helper'

RSpec.describe "Studio Index" do
  describe "visiting studio index page" do
    before :each do
      @studio_1 = Studio.create({name: "Paramount Pictures", location: "Hollywood, California, USA"})
      @studio_2 = Studio.create({name: "Warner Bros Pictures", location: "Burbank, California, USA"})
      @movie_1 = Movie.create({title: "American Psycho", creation_year: 2000, genre: "Horror", studio_id: @studio_1.id})
      @movie_2 = Movie.create({title: "The Thing", creation_year: 1982, genre: "Horror", studio_id: @studio_1.id})
      @movie_3 = Movie.create({title: "Jaws", creation_year: 1975, genre: "Thriller", studio_id: @studio_1.id})
      @movie_4 = Movie.create({title: "Heat", creation_year: 1995, genre: "Action", studio_id: @studio_2.id})
      @movie_5 = Movie.create({title: "Top Gun", creation_year: 1986, genre: "Action", studio_id: @studio_2.id})
      @movie_6 = Movie.create({title: "Pulp Fiction", creation_year: 1994, genre: "Crime", studio_id: @studio_2.id})
    end
    it "see all of the studios including name and location" do
      visit '/studios'
 
      expect(page).to have_content("#{@studio_1.name}")
      expect(page).to have_content("#{@studio_2.name}")
      expect(page).to have_content("Location: #{@studio_1.location}")
      expect(page).to have_content("Location: #{@studio_2.location}")
    end

    it 'under each studio see all of its movies including movie title, creation year, genre' do
      visit '/studios'

      within ("#studio-#{@studio_1.id}") do
        expect(page).to have_content("#{@movie_1.title}")
        expect(page).to have_content("Year: #{@movie_1.creation_year}")
        expect(page).to have_content("Genre: #{@movie_1.genre}")
        expect(page).to have_content("#{@movie_2.title}")
        expect(page).to_not have_content("#{@movie_4.title}")
      end
save_and_open_page
      within ("#studio-#{@studio_2.id}") do
        expect(page).to have_content("#{@movie_4.title}")
        expect(page).to have_content("Year: #{@movie_4.creation_year}")
        expect(page).to have_content("Genre: #{@movie_4.genre}")
        expect(page).to have_content("#{@movie_5.title}")
        expect(page).to_not have_content("#{@movie_1.title}")
      end
    end
  end
end