
class Post < ActiveRecord::Base
  validates :title, presence: true,
  validates(:content, { :length => { :minimum => 250 } })
  validates(:summary, { :length => { :maximum => 250 } })
  validates :category, inclusion: { in: %w(fiction nonfiction)}
  # message: "%{value} is not a valid size" } <- this is an optional message for the inclusion validator
  validate :clickbait

  def clickbait
   post.title.includes("Won't Believe", "Secret", "Top [number]", or "Guess")
  end
end
