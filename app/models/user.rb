class User < ActiveRecord::Base

  has_secure_password

  validates :password,
  length: {minimum: 4}

  validates :email,
  presence: :true,
  uniqueness: {case_sensitive: false},
  format: {with: /@/}

  validates :username,
  presence: true,
  uniqueness: {case_sensitive: false}



  has_many :posts

  has_many :comments


  def self.authenticate email, password
    User.find_by_email(email).try(:authenticate, password)
  end

  def display_name
    self.username || 'No User'
  end



end
