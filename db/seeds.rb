
Comment.destroy_all
Review.destroy_all

review1 = Review.create(
    title: Faker::Music.band + " Album Review",
    content: Faker::Hipster.paragraph,
    genre: Faker::Music.genre,
    img_url: Faker::LoremPixel.image)


    comment1 = Comment.create(content: Faker::Hipster.paragraph, review_id: review1.id)