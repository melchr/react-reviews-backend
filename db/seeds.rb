Review.destroy_all
Comment.destroy_all

5.times do 
Review.create(
    title: Faker::Music.band,
    content: Faker::Hipster.paragraph,
    genre: Faker::Music.genre,
    img_url: Faker::LoremPixel.image
)

end