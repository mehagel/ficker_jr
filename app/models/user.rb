class User < ActiveRecord::Base
  include BCrypt
  has_many :albums
  has_many :photos, through: :albums

  validates :username, presence: true, uniqueness: true


  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    user = User.find_by_email(email)
    if user.password == password
      user
    else
      nil
    end
    # if email and password correspond to a valid user, return that user
    # otherwise, return nil
  end
end
