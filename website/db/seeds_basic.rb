puts 'create admins'

emails = [
  'admin@local.com',
  'dev@local.com',
  'test@local.com'
]

emails.each do |email|
  admin = Admin.find_or_create_by!(email: email) do |admin|
    admin.password = SecureRandom.hex(10)
  end
end


puts 'create catgory'

cate = Category.create!(
    code: 'meinvtupian',
    name: '美女图片',
  )

Category::DATA.each do |code, name|
  category = Category.create!(
    code: code,
    name: name,
    parent_id: cate.id
    )
  puts "> category #{category.name} created"
end


Tag::DATA.each do |name|
  tag = Tag.create!(
    name: name
    )
  puts "> tag #{tag.name} created"
end

