# == Schema Information
#
# Table name: submissions
#
#  id         :integer          not null, primary key
#  body       :text
#  word_count :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Submission < ApplicationRecord
end
