# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  sku         :string(100)
#  name        :string(100)
#  description :text
#  price       :decimal(, )
#  published   :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
