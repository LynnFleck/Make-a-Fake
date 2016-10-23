class Faker < ActiveRecord::Base
  validates_presence_of :name, :avatar, :color, :title, :email, :food
end
