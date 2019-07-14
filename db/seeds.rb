p "create user"

antoine = User.create!(
  email: "anto@gmail.com",
  password: "123456"
)

# p "destroy frames"

# Frame.destroy_all

p "creating photo_sizes"

PhotoSize.create!(size: "a4")
PhotoSize.create!(size: "a2")
PhotoSize.create!(size: "1080x720")
PhotoSize.create!(size: "500x400")

p "creating frames"

Frame.create!(name: "sans")
Frame.create!(name: "cadre noir")
Frame.create!(name: "cadre blanc")

p "setting category"

montagne = Category.create(name: "montagne")
lac = Category.create(name: "lac léman")
neige = Category.create(name: "neige")
autres = Category.create(name: "autres")

p "creating types"

photo = Type.create(name: "photo")
livre = Type.create(name: "livre")

p "creating products"

Product.create({
  sku: "pic-1",
  title: "photo 1",
  photo1: "https://res.cloudinary.com/dfvfkojyz/image/upload/v1561311824/sqdzyft5ljydl8kfkdli.jpg",
  description: "photo neige",
  category_id: montagne[:id],
  type_id: photo[:id],
  price_cents: 15000,
})

Product.create({
  sku: "pic-2",
  title: "photo 2",
  photo1: "https://res.cloudinary.com/dfvfkojyz/image/upload/v1561311819/uuxmfq7p7qi8se6plqze.jpg",
  description: "photo neige super",
  category_id: montagne[:id],
  type_id: photo[:id],
  price_cents: 14000,
})

Product.create({
  sku: "pic-3",
  title: "photo 3",
  photo1: "https://res.cloudinary.com/dfvfkojyz/image/upload/v1561311812/wu7qkpygq5ipvam9qnix.jpg",
  description: "photo neige cool",
  category_id: montagne[:id],
  type_id: photo[:id],
  price_cents: 16000,
})

Product.create({
  sku: "pic-4",
  title: "photo 4",
  photo1: "https://res.cloudinary.com/dfvfkojyz/image/upload/v1561311806/ulgbyq81t5g8ivdldnuq.jpg",
  description: "photo lac enorme",
  category_id: lac[:id],
  type_id: photo[:id],
  price_cents: 10000,
})

Product.create({
  sku: "pic-5",
  title: "photo 5",
  photo1: "https://res.cloudinary.com/dfvfkojyz/image/upload/v1561311802/aepjrdk11zzcrj87maqm.jpg",
  description: "photo lac",
  category_id: lac[:id],
  type_id: photo[:id],
  price_cents: 11000,
})

Product.create({
  sku: "pic-6",
  title: "photo 6",
  photo1: "https://res.cloudinary.com/dfvfkojyz/image/upload/v1561311796/cuk9xtdazxqzhccfm4kx.jpg",
  description: "photo lac léman",
  category_id: lac[:id],
  type_id: photo[:id],
  price_cents: 18000,
})

Product.create({
  sku: "pic-7",
  title: "photo 7",
  photo1: "https://res.cloudinary.com/dfvfkojyz/image/upload/v1561311785/lw92jrpgl1uuexoaywcl.jpg",
  description: "photo lac léman",
  category_id: neige[:id],
  type_id: photo[:id],
  price_cents: 111000,
})

Product.create({
  sku: "pic-8",
  title: "photo 8",
  photo1: "https://res.cloudinary.com/dfvfkojyz/image/upload/v1561310644/sample.jpg",
  description: "photo de fleur trop cool",
  category_id: autres[:id],
  type_id: photo[:id],
  price_cents: 15000,
})

p "done !!!"