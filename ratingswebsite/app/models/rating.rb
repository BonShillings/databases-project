class Rating < ActiveRecord::Base
    belongs_to :rater
    belongs_to :restaurant
end
