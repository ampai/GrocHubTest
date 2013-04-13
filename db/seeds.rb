# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Product.delete_all
Product.create(:title => 'Oscar Mayer Bacon',
               :description =>
                   %{Thick cut 100% delicious Bacon brought to you by
            your friendly online store.},
               :image_url =>   '/assets/images/bacon.jpg',
               :price => 4.29)
# . . .
Product.create(:title => 'Reduced Fat Milk',
               :description =>
                   %{This is Milk, it does wonders for your body and soul.
            The FDA recommends drinking up to 2 liters of Milk a day (not really).},
               :image_url => '/assets/images/milk.jpg',
               :price => 2.59)
# . . .

Product.create(:title => 'Garlic Toast',
               :description =>
                   %{Garlic Toast brought to you by your friendly online grocers
            Just heat and eat and enjoy a happy life!},
               :image_url => '/assets/images/garlicbread.jpg',
               :price => 6.99)