class Comment < ActiveRecord::Base

  validates :comm,
  presence: true

  belongs_to :user
  belongs_to :post

  def owned_by? user
    user && user.id == self.user.id
  end
end
