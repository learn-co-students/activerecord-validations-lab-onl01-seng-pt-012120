class Post < ActiveRecord::Base

    validates :title, presence: true
    # validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }, allow_nil: true
     validates :category, inclusion: { in: ["Fiction", "Non-Fiction"]}




validate :content,

    def content(clickbait)
     clickbait = "Won't Believe"||"Secret"||"Top [number]"||"Guess"
     if clickbait.present? && content.length < 250
     else  errors.add(:content, "must contain clickbait Won't Believe, Secret,Top [number], or Guess")

     end    
    end
end