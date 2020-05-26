class TitleValidator < ActiveModel::Validator
	def validate(record)
		bait_titles = ["Won't Believe", "Secret", "Top [number]", "Guess"]
		if !record.title.nil? && bait_titles.detect {|bait_title| record.title.include?(bait_title)}.nil?
			record.errors[:title] << "Title Must Be Clickbait"
		end
	end
end