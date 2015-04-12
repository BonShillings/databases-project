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
               @restaurantName = restaurant["name"]
            end
        end
        if params[:achoice] == "1"
            qSPart1 = "SELECT R.rtype, R.url, L.opening_date, L.manager_name, L.phone_number, L.street_address, L.hour_open, L.hour_close FROM restaurants R, locations L WHERE R.name = "
            qSPart2 = " AND R.id= L.restaurant_id"
            # result = ActiveRecord::Base.connection.execute("SELECT * FROM restaurants")
            result = ActiveRecord::Base.connection.execute(qSPart1 + "\'" + @restaurantName + "\'" + qSPart2)
        end
        if params[:achoice] == "2"
            qSPart1 = "SELECT M.name, M.price FROM menuitems M, restaurants R WHERE R.name = "
            qSPart2 = " AND M.restaurant_id = R.id"
            # result = ActiveRecord::Base.connection.execute("SELECT * FROM menuitems")
            result = ActiveRecord::Base.connection.execute(qSPart1 + "\'" + @restaurantName + "\'" + qSPart2)
            
        end
        if params[:achoice] == "3"
            qSPart1 = "SELECT M.name, M.price, M.mcategory, M.mtype, M.description, L.manager_name, L.hour_open, R.url FROM menuitems M, locations L, restaurants R WHERE R.name = "
            qSPart2 = "AND L.restaurant_id = R.id AND M.restaurant_id = R.id AND M.price = (SELECT max(M1.price) FROM menuitems M1 WHERE M1.restaurant_id = M.restaurant_id)"
            #result = ActiveRecord::Base.connection.execute("SELECT * FROM restaurants")
            result = ActiveRecord::Base.connection.execute(qSPart1 + "\'" + @restaurantName + "\'" + qSPart2)
        end
        return result
    end
end
