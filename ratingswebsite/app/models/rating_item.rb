class RatingItem < ActiveRecord::Base
    belongs_to :rating
    belongs_to :menuitem
end
