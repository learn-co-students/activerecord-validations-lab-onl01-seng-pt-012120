class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title
            keyphrases = ["Won't Believe", "Secret", "Top [number]", "Guess"]
            unless keyphrases.detect { |keyphrase| record.title.include?(keyphrase) }
                record.errors[:title] << 'Needs moar clickbait!'
            end
        end
    end
end