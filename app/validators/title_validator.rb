# class TitleValidator < ActiveModel::Validator 
#     def validate(record)
#         unless record.title && record.title.match?(/Won't Believe/ || /Secret/ || /Top[number]/ || /Guess/)
#             record.errors[:title] << "This title isn't clickbaity enough"
#         end 
#     end 
# end 