puts 'create admins'

emails = [
  'admin@local.com',
  'dev@local.com',
  'test@local.com'
]

emails.each_with_index do |email, index|
  admin = Admin.find_or_create_by!(email: email) do |admin|
    # admin.password = SecureRandom.hex(10)
    admin.password = "pa123456#{index}"
  end
end

