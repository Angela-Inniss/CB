# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Creating services...'
Service.create!({
  name: "Stain",
  description: "v stubborn"
})
Service.create!({
  name: "Wood",
  description: "shiney clean "
})
Service.create!({
  name: "Carpet Cleaned",
  description: "shiney clean "
})
Service.create!({
  name: "Blinds",
  description: "shiney clean "
})
Service.create!({
  name: "Karndean",
  description: "shiney clean "
})
Service.create!({
  name: "Rug Cleaning",
  description: "shiney clean "
})

Service.create!({
  name: "Hard Floor",
  description: "shiney clean "
})
Service.create!({
  name: "Amtico",
  description: "shiney clean "
})
puts 'Finished!'
