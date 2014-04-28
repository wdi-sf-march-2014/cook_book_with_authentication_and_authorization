# == Schema Information
#
# Table name: recipes
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  course       :string(255)
#  cooktime     :integer
#  servingsize  :integer
#  instructions :text
#  image        :text
#  book_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :ingredient_measurments
  has_many :ingredients, through: :ingredient_measurments
end
