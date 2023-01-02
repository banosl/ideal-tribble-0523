require 'rails_helper'

RSpec.describe "Studio show page" do
  describe "visiting studio show page" do
    before :each do
      @studio_1 = Studio.create({name: "Paramount Pictures", location: "Hollywood, California, USA"})
      @studio_2 = Studio.create({name: "Warner Bros Pictures", location: "Burbank, California, USA"})
      @movie_1 = Movie.create({title: "American Psycho", creation_year: 2000, genre: "Horror", studio_id: @studio_1.id})
      @movie_2 = Movie.create({title: "The Thing", creation_year: 1982, genre: "Horror", studio_id: @studio_1.id})
      @movie_3 = Movie.create({title: "Jaws", creation_year: 1975, genre: "Thriller", studio_id: @studio_1.id})
      @movie_4 = Movie.create({title: "Heat", creation_year: 1995, genre: "Action", studio_id: @studio_2.id})
      @movie_5 = Movie.create({title: "Top Gun", creation_year: 1986, genre: "Action", studio_id: @studio_2.id})
      @movie_6 = Movie.create({title: "Pulp Fiction", creation_year: 1994, genre: "Crime", studio_id: @studio_2.id})
      @actor_1 = Actor.create({name: "Tom Cruise", age: 60,})
      @actor_2 = Actor.create({name: "Al Pacino", age: 80,})
      @actor_3 = Actor.create({name: "Uma Thurman", age: 52,})
      @actor_4 = Actor.create({name: "Lorraine Gary", age: 85,})
      @actor_5 = Actor.create({name: "Kurt Russel", age: 71,})
      @actor_6 = Actor.create({name: "Christian Bale", age: 48,})
      @move_actor_1 = MovieActor.create({movie_id: @movie_1.id, actor_id: @actor_1.id})
      @move_actor_2 = MovieActor.create({movie_id: @movie_2.id, actor_id: @actor_3.id})
      @move_actor_3 = MovieActor.create({movie_id: @movie_2.id, actor_id: @actor_2.id})
      @move_actor_4 = MovieActor.create({movie_id: @movie_2.id, actor_id: @actor_4.id})
    end

    it 'studios name and location is listed' do
      visit "/studios/#{@studio_1.id}"

      expect(page).to have_content("#{@studio_1.name}")
      expect(page).to have_content("Located in #{@studio_1.location}")
    end

    it "see a unique list of the actors that have worked on any of the studio's movies"
  end
end