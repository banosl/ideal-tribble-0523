# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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