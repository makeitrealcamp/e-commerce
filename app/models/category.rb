# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(50)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ActiveRecord::Base
end
