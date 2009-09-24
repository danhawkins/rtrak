Factory.define :user do |u|
  u.name 'Test User'
  u.email 'test@exmaple.com'
  u.username 'test'
  u.password 'testing'
  u.password_confirmation 'testing'
end

Factory.define :generic_user, :parent => :user do |u|
  u.name 'Generic Test User'
end