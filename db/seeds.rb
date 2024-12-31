# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

5.times do |i|
    user = User.create!(
        email: "test#{i+1}@gmail.com",
        password: '123456'
    )

    user.profile.update!(
        first_name: Faker::Lorem.unique.sentence(word_count: 1),
        last_name: Faker::Lorem.unique.sentence(word_count: 2),
        address: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state,
    country_code: Faker::Address.country_code
    )

    user.profile.image.attach(io: File.open("db/profile_pic/face_pic.png"), filename: user.profile.first_name)
end

6.times do |i|
    movie = Movie.create!(
        name: Faker::Lorem.unique.sentence(word_count: 2),
        country_code: Faker::Address.country_code,
        director: Faker::Lorem.unique.sentence(word_count: 2),
        year_of_release: Faker::Date.between(from: '1960-01-01', to: '2024-11-30').year,
    )
    movie.pictures.attach(io: File.open("db/movie_pictures/pic_1.png"), filename: movie.name)
    movie.pictures.attach(io: File.open("db/movie_pictures/pic_2.png"), filename: movie.name)
    movie.pictures.attach(io: File.open("db/movie_pictures/pic_3.png"), filename: movie.name)
end