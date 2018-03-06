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
  belongs_to :user 
  belongs_to :role
  validates :user_id, presence: true, uniqueness: {scope: [:role_id]}
  validates :role_id, presence: true
end
