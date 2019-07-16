p "create user"
User.destroy_all

antoine = User.create!(
  email: "anto@gmail.com",
  password: "123456"
)

p "create admin"
Admin.destroy_all

gilles = Admin.create!(
  email: "gilles@gmail.com",
  password: "123456"
)

p "creating sizes"
Size.destroy_all

petite = Size.create!(size: "20x40", price_cents: 2700)
grande = Size.create!(size: "50x60", price_cents: 5500)

p "creating frames"
Frame.destroy_all

sans = Frame.create!(name: "sans", rate: 0)
noir = Frame.create!(name: "noir", rate: 0.1)
bois = Frame.create!(name: "bois", rate: 0.2)

p "creating papers"
Paper.destroy_all

lustre = Paper.create!(name: "lustré", rate: 0)
baryte = Paper.create!(name: "baryté", rate: 0.5)

p "setting category"
Category.destroy_all

montagne = Category.create(name: "montagne")
lac = Category.create(name: "lac léman")
neige = Category.create(name: "neige")
autres = Category.create(name: "autres")

p "creating types"

photo = Type.create(name: "photo")
livre = Type.create(name: "livre")

p "creating products"
Product.destroy_all
Photo.destroy_all

pic_1 = Product.create({
  sku: "pic-1",
  title: "la neige d'hiver",
  description: "photo neige",
  category_id: montagne[:id],
  type_id: photo[:id]
})
Photo.create(photo: "https://res.cloudinary.com/dfvfkojyz/image/upload/v1561311824/sqdzyft5ljydl8kfkdli.jpg", product_id: pic_1[:id])

pic_2 = Product.create({
  sku: "pic-2",
  title: "coucher de soleil sur un chalet banal",
  description: "photo neige super",
  category_id: montagne[:id],
  type_id: photo[:id]
})
Photo.create(photo: "https://res.cloudinary.com/dfvfkojyz/image/upload/v1561311819/uuxmfq7p7qi8se6plqze.jpg", product_id: pic_2[:id])

pic_3 = Product.create({
  sku: "pic-3",
  title: "ombres chelous",
  description: "photo neige cool",
  category_id: montagne[:id],
  type_id: photo[:id]
})
Photo.create(photo: "https://res.cloudinary.com/dfvfkojyz/image/upload/v1561311812/wu7qkpygq5ipvam9qnix.jpg", product_id: pic_3[:id])

pic_4 = Product.create({
  sku: "pic-4",
  title: "le col de terramont",
  description: "photo lac enorme",
  category_id: lac[:id],
  type_id: photo[:id]
})
Photo.create(photo: "https://res.cloudinary.com/dfvfkojyz/image/upload/v1561311806/ulgbyq81t5g8ivdldnuq.jpg", product_id: pic_4[:id])


pic_5 = Product.create({
  sku: "pic-5",
  title: "lac et ciel bleu",
  description: "photo lac",
  category_id: lac[:id],
  type_id: photo[:id]
})
Photo.create(photo: "https://res.cloudinary.com/dfvfkojyz/image/upload/v1561311802/aepjrdk11zzcrj87maqm.jpg", product_id: pic_5[:id])

pic_6 = Product.create({
  sku: "pic-6",
  title: "chouette vallée",
  description: "photo lac léman",
  category_id: lac[:id],
  type_id: photo[:id]
})
Photo.create(photo: "https://res.cloudinary.com/dfvfkojyz/image/upload/v1561311796/cuk9xtdazxqzhccfm4kx.jpg", product_id: pic_6[:id])

pic_7 = Product.create({
  sku: "pic-7",
  title: "le mont blanc",
  description: "photo lac léman",
  category_id: neige[:id],
  type_id: photo[:id]
})
Photo.create(photo: "https://res.cloudinary.com/dfvfkojyz/image/upload/v1561311785/lw92jrpgl1uuexoaywcl.jpg", product_id: pic_7[:id])

pic_8 = Product.create({
  sku: "pic-8",
  title: "l'abeille sur la fleur",
  description: "photo de fleur trop cool",
  category_id: autres[:id],
  type_id: photo[:id]
})
Photo.create(photo: "https://res.cloudinary.com/dfvfkojyz/image/upload/v1561310644/sample.jpg", product_id: pic_8[:id])

p "create available sizes"
AvailableSize.destroy_all

AvailableSize.create!(product_id: pic_1[:id], size_id: petite[:id])
AvailableSize.create!(product_id: pic_1[:id], size_id: grande[:id])

p "create available frames"
AvailableFrame.destroy_all

AvailableFrame.create!(product_id: pic_1[:id], frame_id: sans[:id])
AvailableFrame.create!(product_id: pic_1[:id], frame_id: noir[:id])
AvailableFrame.create!(product_id: pic_1[:id], frame_id: bois[:id])

p "create available papers"
AvailablePaper.destroy_all

AvailablePaper.create!(product_id: pic_1[:id], paper_id: lustre[:id])
AvailablePaper.create!(product_id: pic_1[:id], paper_id: baryte[:id])

p "done !!!"