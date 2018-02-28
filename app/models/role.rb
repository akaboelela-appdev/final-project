# == Schema Information
#
# Table name: roles
#
#  id               :integer          not null, primary key
#  title            :string
#  city_id          :integer
#  coveragegroup_id :integer
#  company_id       :integer
#  due_date         :date
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Role < ApplicationRecord
  has_many :to_dos
  has_many :user, through: :bookmarks
  belongs_to :company
end