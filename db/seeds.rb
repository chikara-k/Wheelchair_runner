# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  [
    {
      email: 'test@test',
      password: 'aaaaaa',
      name: "テスト太郎",
      profile_image: File.open('./app/assets/images/no_image.png'),
      introduction: "こんにちは。よろしくお願いします。",
      user_status: 0,
      experience: 1,
      is_active: true
    },
    {
      email: 'test2@test',
      password: 'aaaaaa',
      name: "テスト花子",
      profile_image: File.open('./app/assets/images/no_image.png'),
      introduction: "こんにちは。よろしくお願いします。",
      user_status: 1,
      experience: 6,
      is_active: true
    }
  ]
)

Post.create!(
  [
    {
      user_id: "1",
      name: "運動公園",
      image: File.open('./app/assets/images/no_image.png'),
      introduction: "とても良いところでした",
      toilet: true,
      recommend_level: 4,
      road_level: 2,
      parking: 1,
      rental_bicycle: false
    },
    {
      user_id: "1",
      name: "運動公園",
      image: File.open('./app/assets/images/no_image.png'),
      introduction: "とても良いところでした",
      toilet: true,
      recommend_level: 4,
      road_level: 2,
      parking: 3,
      rental_bicycle: false
    },
    {
      user_id: "1",
      name: "運動公園",
      image: File.open('./app/assets/images/no_image.png'),
      introduction: "とても良いところでした",
      toilet: true,
      recommend_level: 4,
      road_level: 2,
      parking: 0,
      rental_bicycle: false
    },
  ]
)