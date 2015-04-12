class Restaurant < ActiveRecord::Base
    has_one :location
    has_many :ratings
end
