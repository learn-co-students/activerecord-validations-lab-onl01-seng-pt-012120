class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}  
    validate :title_is_clickbait

    def title_is_clickbait
        if self.title
            clickbait = ["Won't Believe", "Secret", "Top", "Guess"]
            if clickbait.none? { |c| self.title.include?(c) }
                errors.add(:title, "not clickbaity enough!")
            end
        end
    end
end
