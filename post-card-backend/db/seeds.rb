# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'

15.times do
    User.create!(
        first_name: Faker::Name.name,
        last_name: Faker::FunnyName.unique.name,
        email: Faker::Internet.email,
        address:{
            "street1": Faker::Address.street_address,
            "street2": Faker::Address.secondary_address,
            "zip_code": Faker::Address.zip_code,
            "city": Faker::Address.city,
            "state": Faker::Address.state
        },
        gender: Faker::Gender.binary_type,
        age: Date.new(2021,1,10),
        img: Faker::Avatar.image(slug: "sport", size: "50x50", format: "jpg"),
        password_digest: Faker::Invoice.creditor_reference
    )
end

15.times do
    Card.create!(
        name: Faker::FunnyName.unique.name,
        category: Faker::Military.dod_paygrade,
        img: Faker::Avatar.image,
    )
end

15.times do
    Gift.create!(
        receiver_fname: Faker::FunnyName.unique.name,
        receiver_lname: Faker::Name.unique.name,
        receiver_age: Date.new(2021,1,10),
        receiver_address:{
            "street1": Faker::Address.street_address,
            "street2": Faker::Address.secondary_address,
            "zip_code": Faker::Address.zip_code,
            "city": Faker::Address.city,
            "state": Faker::Address.state
        },
        user_id: rand(1..8),
        card_id:rand(1..8)
    )
end