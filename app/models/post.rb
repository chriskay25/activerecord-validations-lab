class Post < ActiveRecord::Base
    # include ActiveModel::Validations 
    # validates_with TitleValidator
    validates :title, presence: :true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: ["Fiction", "Non-Fiction"] }
    validate :title_is_clickbait


    def title_is_clickbait
        unless title && title.include?("Won't Believe")
            errors.add(:title, "is not clickbait")
        end 
    end 

end





