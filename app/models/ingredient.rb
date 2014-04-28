# == Schema Information
#
# Table name: ingredients
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  measurement :string(255)
#  cost        :decimal(, )
#  image       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Ingredient < ActiveRecord::Base
  has_many :ingredient_measurments
  has_many :ingredients, through: :ingredient_measurments
end