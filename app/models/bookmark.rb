# == Schema Information
#
# Table name: bookmarks
#
#  id          :integer          not null, primary key
#  role_id     :integer
#  user_id     :integer
#  priority_id :integer
#  status_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Bookmark < ApplicationRecord
end
