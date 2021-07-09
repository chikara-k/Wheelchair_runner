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
      name: "太郎",
      profile_image: File.open('./app/assets/images/user_boy.png'),
      introduction: "初心者です。よろしくお願いします。",
      user_status: 0,
      experience: 1,
      is_active: true
    },
    {
      email: 'test2@test',
      password: 'aaaaaa',
      name: "花子",
      profile_image: File.open('./app/assets/images/user_girl.png'),
      introduction: "こんにちは。毎日たくさん練習してます！",
      user_status: 0,
      experience: 6,
      is_active: true
    },
    {
      email: 'test3@test',
      password: 'aaaaaa',
      name: "ユーザー桃子",
      profile_image: File.open('./app/assets/images/user_woman.png'),
      introduction: "練習場所を共有したいです！よろしくお願いいたします。",
      user_status: 0,
      experience: 10,
      is_active: true
    },
    {
      email: 'test4@test',
      password: 'aaaaaa',
      name: "山田二郎",
      profile_image: File.open('./app/assets/images/user_man.png'),
      introduction: "練習場所たくさん知っているので共有します。コメントよろしく。",
      user_status: 0,
      experience: 15,
      is_active: true
    },
    {
      email: 'test5@test',
      password: 'aaaaaa',
      name: "ボランティア太郎",
      profile_image: File.open('./app/assets/images/volunteer_man.png'),
      introduction: "初心者ですが、いろんな方をサポートしたいです。",
      user_status: 1,
      experience: 2,
      is_active: true
    },
    {
      email: 'test6@test',
      password: 'aaaaaa',
      name: "ボランティア花子",
      profile_image: File.open('./app/assets/images/volunteer_woman.png'),
      introduction: "トレーニング方法などサポートできます！よろしく！",
      user_status: 1,
      experience: 7,
      is_active: true
    },
  ]
)

Post.create!(
  [
    {
      user_id: "1",
      name: "運動公園",
      image: File.open('./app/assets/images/road.png'),
      introduction: "とても良いコースでした。工事も終わっているためきれいです！",
      toilet: true,
      recommend_level: 5,
      road_level: 2,
      parking: 1,
      rental_bicycle: false,
      address: "宮崎県宮崎市○○○２ー７ー３"
    },
    {
      user_id: "2",
      name: "運動公園",
      image: File.open('./app/assets/images/road_2.png'),
      introduction: "とても良いところでした",
      toilet: true,
      recommend_level: 5,
      road_level: 3,
      parking: 2,
      rental_bicycle: false,
      address: "宮崎県都城市○○○２ー７ー３"
    },
    {
      user_id: "3",
      name: "運動公園",
      image: File.open('./app/assets/images/road.png'),
      introduction: "とても良いところでした",
      toilet: true,
      recommend_level: 3,
      road_level: 1,
      parking: 0,
      rental_bicycle: true,
      address: "宮崎県宮崎市○○○２ー７ー３"
    },
    {
      user_id: "4",
      name: "運動公園",
      image: File.open('./app/assets/images/road.png'),
      introduction: "とても良いところでした",
      toilet: true,
      recommend_level: 3,
      road_level: 1,
      parking: 0,
      rental_bicycle: true,
      address: "宮崎県宮崎市○○○２ー７ー３"
    },
    {
      user_id: "5",
      name: "運動公園",
      image: File.open('./app/assets/images/road.png'),
      introduction: "とても良いところでした",
      toilet: true,
      recommend_level: 3,
      road_level: 1,
      parking: 0,
      rental_bicycle: true,
      address: "宮崎県宮崎市○○○２ー７ー３"
    },
    {
      user_id: "6",
      name: "運動公園",
      image: File.open('./app/assets/images/road.png'),
      introduction: "とても良いところでした",
      toilet: true,
      recommend_level: 3,
      road_level: 1,
      parking: 0,
      rental_bicycle: true,
      address: "宮崎県宮崎市○○○２ー７ー３"
    },
    {
      user_id: "7",
      name: "運動公園",
      image: File.open('./app/assets/images/road.png'),
      introduction: "とても良いところでした",
      toilet: true,
      recommend_level: 3,
      road_level: 1,
      parking: 0,
      rental_bicycle: true,
      address: "宮崎県宮崎市○○○２ー７ー３"
    },
  ]
)