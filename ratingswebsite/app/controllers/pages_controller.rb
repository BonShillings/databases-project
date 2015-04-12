class PagesController < ActionController::Base
    helper_method :query_abd
    def search
        # data
        
        @restaurantList = Restaurant.all
        @menuItemList = Menuitem.all
        @raterList = Rater.all
        @results = []
    end
    
    def query_abd
        result = []
        if params[:aname] != nil
            restaurantNameResult = ActiveRecord::Base.connection.execute("SELECT name FROM restaurants WHERE id = " + params[:aname])
            restaurantNameResult.each do |restaurant|
                restaurantName = restaurant["name"]
            end
                
        end
        if params[:achoice] == "1"
            qSPart1 = "SELECT R.type, R.url, L.first_open_date, L.manager_name, L.phone_number, L.street_address, L.hour_open, L.hour_close FROM restaurant R, location L WHERE R.name = "
            qSPart2 = " AND R.restaurantID= L.restaurantID"
            # @results = ActiveRecord::Base.connection.execute(qSPart1 + restaurantName + qSPart2)
            result = ActiveRecord::Base.connection.execute("SELECT * FROM restaurants")
        elsif params[:achoice] == "2"
            qSPart1 = "SELECT M.name, M.price FROM menuItem M, restaurant R WHERE R.name = "
            qSPart2 = " AND M.restaurantID = R.restaurantID"
            #@results = ActiveRecord::Base.connection.execute(qSPart1 + restaurantName + qSPart2)
            result = ActiveRecord::Base.connection.execute("SELECT * FROM menuitems")
        elsif params[:achoice] == "3"
            qSPart1 = "SELECT M.name, M.price, M.category, M.type, M.description, L.manager_name, L.hour_open, R.url FROM menuItem M, location L, restaurant R WHERE R.name = "
            qSPart2 = "AND L.restaurantID = R.restaurantID AND M.restaurantID = R.restaurantID AND M.price = (SELECT max(M1.price) FROM menuItem M1 WHERE M1.restaurantID = M.restaurantID)"
            # @results = ActiveRecord::Base.connection.execute(qSPart1 + restaurantName + qSPart2)
            result = ActiveRecord::Base.connection.execute("SELECT * FROM restaurants")
        end
        return result
    end
end