
if Rails.env.production?
  require Rails.root.join("db/seeds_basic").to_s

elsif Rails.env.staging?
  require Rails.root.join("lib/load_dev_gems").to_s

  require Rails.root.join("db/seeds_basic").to_s

  require Rails.root.join("db/seeds_staging").to_s


else
  require Rails.root.join("lib/load_dev_gems").to_s

  # DatabaseCleaner.strategy = :truncation
  # DatabaseCleaner.clean

  require Rails.root.join("db/seeds_basic").to_s

  require Rails.root.join("db/seeds_staging").to_s
  require Rails.root.join("db/seeds_development").to_s

end



