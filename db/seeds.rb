puts "Clearing data..."
Climb.destroy_all
Hill.destroy_all
User.destroy_all

puts "adding admin..."
User.create!(email: "alexjboxell@gmail.com", username: "admin", password: "123456")
puts "Welcome, Alex"

puts "Populating Welsh peaks..."
Hill.create!(name: "Snowdon/Yr Wyddfa", latitude: 53.0685, longitude: -4.0763, height: 1085, country: "Wales", range: "Snowdon", category: ["UK Three Peaks", "Marilyn", "Furth", "Hewitt", "Nuttall", "Welsh 3000s"])
Hill.create!(name: "Tryfan", latitude: 53.1184, longitude: -3.9958, height: 918, country: "Wales", range: "Glyderau", category: ["Marilyn", "Hewitt", "Welsh 3000s", "Nuttall", "Furth"])
Hill.create!(name: "Glyder Fawr", latitude: 53.1016, longitude: -4.0284, height: 1001, country: "Wales", range: "Glyderau", category: ["Marilyn", "Hewitt", "Welsh 3000s", "Nuttall", "Furth"])
Hill.create!(name: "Glyder Fach", latitude: 53.1049, longitude: -4.0085, height: 994, country: "Wales", range: "Glyderau", category: ["Hewitt", "Welsh 3000s", "Nuttall", "Furth"])
Hill.create!(name: "Carnedd Dafydd", latitude: 53.1477, longitude: -4.0007, height: 1044, country: "Wales", range: "Carneddau", category: ["Hewitt", "Welsh 3000s", "Nuttall", "Furth"])
Hill.create!(name: "Carnedd Llewelyn", latitude: 53.1600, longitude: -3.9701, height: 1064, country: "Wales", range: "Carneddau", category: ["Marilyn", "Hewitt", "Welsh 3000s", "Nuttall", "Furth"])
Hill.create!(name: "Pen yr Ole Wen", latitude: 53.1376, longitude: -4.0106, height: 978, country: "Wales", range: "Carneddau", category: ["Hewitt", "Welsh 3000s", "Nuttall", "Furth"])
Hill.create!(name: "Y Garn", latitude: 53.1157, longitude: -4.0471, height: 947, country: "Wales", range: "Glyderau", category: ["Marilyn", "Hewitt", "Welsh 3000s", "Nuttall", "Furth"])
Hill.create!(name: "Elidir Fawr", latitude: 53.1309, longitude: -4.0759, height: 924, country: "Wales", range: "Glyderau", category: ["Marilyn", "Hewitt", "Welsh 3000s", "Nuttall", "Furth"])
Hill.create!(name: "Foel-fras", latitude: 53.1945, longitude: -3.9524, height: 944, country: "Wales", range: "Carneddau", category: ["Hewitt", "Welsh 3000s", "Nuttall", "Furth"])
Hill.create!(name: "Foel Grach", latitude: 53.1738, longitude: -3.9631, height: 975, country: "Wales", range: "Carneddau", category: ["Hewitt", "Welsh 3000s", "Nuttall", "Furth"])
Hill.create!(name: "Yr Elen", latitude: 53.1666, longitude: -3.9854, height: 962, country: "Wales", range: "Carneddau", category: ["Hewitt", "Welsh 3000s", "Nuttall", "Furth"])
Hill.create!(name: "Garnedd Ugain", latitude: 53.0755, longitude: -4.0758, height: 1065, country: "Wales", range: "Snowdon", category: ["Hewitt", "Welsh 3000s", "Nuttall", "Furth"])
Hill.create!(name: "Cadair Idris", latitude: 52.6994, longitude: -3.9081, height: 893, country: "Wales", category: ["Hewitt", "Marilyn", "Nuttall"])

puts "Finished!"
