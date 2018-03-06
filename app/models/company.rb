# == Schema Information
#
# Table name: companies
#
#  id          :integer          not null, primary key
#  name        :string
#  logo_src    :string
#  industry_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Company < ApplicationRecord
  has_many :roles
  has_many :contacts
  validates :name, presence: true, uniqueness: true
end
