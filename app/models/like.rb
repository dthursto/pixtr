class Like < ActiveRecord::Base
  belongs_to :image
  belongs_to :user

  has_many :activities, as: :subject, dependent: :destroy
  
  validates :image_id,
    uniqueness: { scope: :user_id }
end