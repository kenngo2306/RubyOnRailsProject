


# open(Rails.root.join('app','assets','seed_files','project_types.txt')) do |project_types|
#   project_types.read.each_line do |project_type|
#     project_type_name = project_type
#     ProjectType.create(:project_type_name => project_type_name)
#   end
# end

# open(Rails.root.join('app','assets','seed_files','categories.txt')) do |categories|
#   categories.read.each_line do |category|
#     category_name,project_type_id = category.chomp.split("|")
#     Category.create(:category_name => category_name, :project_type_id => project_type_id)
#   end
# end

# open(Rails.root.join('app','assets','seed_files','category_options.txt')) do |category_options|
#   category_options.read.each_line do |category_option|
#     category_option_name,category_id = category_option.chomp.split("|")
#     CategoryOption.create(:category_option_name => category_option_name, :category_id => category_id)
#   end
# end

# open(Rails.root.join('app','assets','seed_files','questions.txt')) do |questions|
#   questions.read.each_line do |question|
#     question_name,project_type_id = question.chomp.split("|")
#     Question.create(:question_name => question_name, :project_type_id => project_type_id)
#   end
# end