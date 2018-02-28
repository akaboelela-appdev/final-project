# == Schema Information
#
# Table name: to_dos
#
#  id         :integer          not null, primary key
#  body       :text
#  user_id    :integer
#  role_id    :integer
#  done       :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ToDo < ApplicationRecord
end
