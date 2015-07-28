class Post < ActiveRecord::Base

  validates :desc,
  presence: true

  validates :image,
  presence: true

  belongs_to :user
  has_many :comment

  def owned_by? user
    user && user.id == self.user.id
  end

end
