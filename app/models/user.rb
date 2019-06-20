class User < ApplicationRecord
  has_secure_password
  validates_length_of :password, maximum: 72, minimum: 8, allow_nil: true, allow_blank: false

  validates :name, presence: true
  validates :email, presence: true

  # Pode dar Like
  acts_as_voter
  # Pode ser seguido
  acts_as_followable
  # Pode seguir
  acts_as_follower
  has_many :tweets, dependent: :destroy

  # Mostrando todos os tweets na timeline
  def timeline
    timeline = tweets.map { |tweet| tweet }
    all_following.each do |user|
      timeline += user.tweets.map { |tweet| tweet }
    end
    timeline.sort_by!(&:created_at).reverse
  end
end
