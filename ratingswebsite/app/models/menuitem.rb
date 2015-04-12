class Menuitem < ActiveRecord::Base
    belongs_to :restaurant
    has_many :rating_item
end
