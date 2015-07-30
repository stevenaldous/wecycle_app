class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates :comm, presence: true

  validates :user_id, presence: true


end
