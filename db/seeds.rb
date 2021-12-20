# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clearing data..."
Hill.destroy_all

puts "Populating Welsh peaks..."
Hill.create!(name: "Snowdon/Yr Wyddfa", latitude: 53.0685, longitude: -4.0763, height: 1085, country: "Wales", category: ["UK Three Peaks", "Marilyn", "Furth", "Hewitt", "Nuttall", "Welsh 3000s"])
Hill.create!(name: "Tryfan", latitude: 53.1184, longitude: -3.9958, height: 918, country: "Wales", range: "Glyderau", category: ["Marilyn", "Hewitt", "Welsh 3000s", "Nuttall", "Furth"])
Hill.create!(name: "Glyder Fawr", latitude: 53.1016, longitude: -4.0284, height: 1001, country: "Wales", range: "Glyderau", category: ["Marilyn", "Hewitt", "Welsh 3000s", "Nuttall", "Furth"])
Hill.create!(name: "Glyder Fach", latitude: 53.1049, longitude: -4.0085, height: 994, country: "Wales", range: "Glyderau", category: ["Hewitt", "Welsh 3000s", "Nuttall", "Furth"])
Hill.create!(name: "Carnedd Dafydd", latitude: 53.1477, longitude: -4.0007, height: 1044, country: "Wales", range: "Carneddau", category: ["Hewitt", "Welsh 3000s", "Nuttall", "Furth"])
Hill.create!(name: "Carnedd Llewelyn", latitude: 53.1600, longitude: -3.9701, height: 1064, country: "Wales", range: "Carneddau", category: ["Marilyn", "Hewitt", "Welsh 3000s", "Nuttall", "Furth"])
Hill.create!(name: "Pen yr Ole Wen", latitude: 53.1376, longitude: -4.0106, height: 978, country: "Wales", range: "Carneddau", category: ["Hewitt", "Welsh 3000s", "Nuttall", "Furth"])

puts "Finished!"
