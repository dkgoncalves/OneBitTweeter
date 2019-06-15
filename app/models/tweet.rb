class Tweet < ApplicationRecord
  belongs_to :user
  belongs_to :tweet_original, class_name: 'Tweet', optional: true

  has_many :retweets, class_name: 'Tweet', foreign_key: 'tweet_original_id'

  # Pode receber likes
  acts_as_votable

  validates :body, presence: true
  validates :user_id, presence: true
end
