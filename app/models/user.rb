class User

  require 'bcrypt'

  include DataMapper::Resource

  property(:id, Serial)
  property(:email_address, String)
  property(:password_digest, Text)


  def password_to_be_hashed=(password_to_be_hashed)
    self.password_digest = BCrypt::Password.create(password_to_be_hashed)
  end


end
