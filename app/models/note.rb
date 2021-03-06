# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  body       :text
#  company_id :integer
#  user_id    :integer
#  role_id    :integer
#  contact_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Note < ApplicationRecord
  belongs_to :user
  belongs_to :contact 
  belongs_to :company 
  belongs_to :role
end
