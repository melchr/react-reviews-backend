
Comment.destroy_all
Review.destroy_all

review1 = Review.create(
    title: Faker::Music.album + " Album Review",
    content: Faker::Hipster.paragraph + Faker::Hipster.paragraph,
    genre: Faker::Music.genre,
    img_url: Faker::LoremFlickr.image)
review2 = Review.create(
    title: Faker::Music.album + " Album Review",
    content: Faker::Hipster.paragraph + Faker::Hipster.paragraph,
    genre: Faker::Music.genre,
    img_url: Faker::LoremFlickr.image)
review3 = Review.create(
    title: Faker::Music.album + " Album Review",
    content: Faker::Hipster.paragraph + Faker::Hipster.paragraph,
    genre: Faker::Music.genre,
    img_url: Faker::LoremFlickr.image)
review4 = Review.create(
    title: Faker::Music.album + " Album Review",
    content: Faker::Hipster.paragraph + Faker::Hipster.paragraph,
    genre: Faker::Music.genre,
    img_url: Faker::LoremFlickr.image)


comment1 = Comment.create(content: Faker::Hipster.paragraph, review_id: review1.id)
comment2 = Comment.create(content: Faker::Hipster.paragraph, review_id: review2.id)