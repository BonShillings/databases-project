class PagesController < ActionController::Base
    def search
        # data
        
        @restaurantList = Restaurant.all
        @menuItemList = Menuitem.all
        @raterList = Rater.all
    end
    
    
end
