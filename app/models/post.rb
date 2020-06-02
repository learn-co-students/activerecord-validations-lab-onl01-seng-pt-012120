class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: %w(Fiction Non-Fiction)
    validate :is_clickbait
end

def is_clickbait
    included = false
    @@phrases.each { |phrase| included = true if self.title && self.title.downcase =~ phrase }
    if not included
        errors.add(:title, "This title is boring. You need more flavor, more sassiness, you need a clickbait.")
    end
end

@@phrases = [/won't believe/, /secret/, /top \d/, /guess/]
