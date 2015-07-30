class Post < ActiveRecord::Base

  validates :desc, presence: true

  validates :image, presence: true

  belongs_to :user
  has_many :comments


  def owned_by? user
    user && user.id == self.user.id
  end
  def display_name
    self.username || 'No User'
  end

end
