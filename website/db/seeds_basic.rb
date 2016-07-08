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

