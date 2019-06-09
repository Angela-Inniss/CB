# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Service.destroy_all
puts 'Creating services...'


Service.create!({
  name: "Carpet Cleaning Stain 1",
  description: "v stubborn",
  category: "stain removal"

})

Service.create!({
  name: "Carpet clean stain 2",
  description: "shiney clean",
  category: "carpet cleaning"
})
Service.create!({
  name: "Carpet clean stain 3",
  description: "shiney clean",
  category: "carpet cleaning"
})
Service.create!({
  name: "Curtains and Blinds 1",
  description: "shiney clean",
  category: "curtains and blinds"
})
Service.create!({
  name: "curtains and Blinds 2",
  description: "curtain clean",
  category: "curtains and blinds"
})
Service.create!({
  name: "Curtains and Blinds 3",
  description: "shiney clean",
  category: "curtains and blinds"
})

Service.create!({
  name: "Curtains and Blinds 4",
  description: "curtain clean",
  category: "curtains and blinds"
})
Service.create!({
  name: "rug cleaned 1",
  description: "rug cleaned to perfection",
  category: "rug cleaning"

})
Service.create!({
  name: "rug cleaned 2",
  description: "curtains cleaned to perfection",
  category: "rug cleaning"

})

Service.create!({
  name: "rug cleaned 3",
  description: "curtains cleaned to perfection",
  category: "rug cleaning"

})
Service.create!({
  name: "rug cleaned 4",
  description: "curtains cleaned to perfection",
  category: "rug cleaning"

})

Service.create!({
  name: "stain removed great 1",
  description: "stain cleaned to perfection",
  category: "stain removal"

})
Service.create!({
  name: "stain removed great 2",
  description: "stain cleaned to perfection",
  category: "stain removal"

})
Service.create!({
  name: "stain removed great 3",
  description: "stain cleaned to perfection",
  category: "stain removal"

})
Service.create!({
  name: "stain removed great 4",
  description: "stain cleaned to perfection",
  category: "stain removal"

})
Service.create!({
  name: "amtico cleaning 1",
  description: "stain cleaned to perfection",
  category: "amtico and karndean"

})
Service.create!({
  name: "amtico cleaning 2",
  description: "stain cleaned to perfection",
  category: "amtico and karndean"

})
Service.create!({
  name: "amtico cleaning",
  description: "stain cleaned to perfection",
  category: "amtico and karndean"

})
Service.create!({
  name: "hard floor",
  description: "stain cleaned to perfection",
  category: "hard floor"

})

url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
service = Service.new(name: 'Rug Clean', description: "this is a test if it works")
service.remote_picture_url_url = url
service.save

puts 'Finished!'
