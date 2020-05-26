class ClickbaitValidator < ActiveModel::Validator
    def validate(record)
        if record.title
            clickbait_titles = ["Won't Believe", "Secret", "Top [number]", "Guess"]
            if clickbait_titles.detect {|cb_title| record.title.include?(cb_title)}.nil?
                record.errors[:title] << "Title is not clickbait-y"
            end
        end
    end
end