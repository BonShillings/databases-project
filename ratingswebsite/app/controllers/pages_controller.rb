class PagesController < ActionController::Base
    helper_method :query_delegator, :query_abd, :query_ce, :query_fgko, :query_i
    
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
            if result != []
                @results = result
            end
        end
        return result
    end
    
    def query_ce
        result = []
        if params[:ctype] != nil
            restaurantNameResult = ActiveRecord::Base.connection.execute("SELECT rtype FROM restaurants WHERE id = " + params[:ctype])
            restaurantNameResult.each do |restaurant|
                @restaurantTypeCE = restaurant["rtype"]
            end
        end
        if params[:cchoice] == "1"
            qSPart1 = "SELECT L.manager_name, L.opening_date, R.name FROM locations L, restaurants R WHERE R.rtype = "
            qSPart2 = " AND R.id= L.restaurant_id"
            # result = ActiveRecord::Base.connection.execute("SELECT * FROM restaurants")
            result = ActiveRecord::Base.connection.execute(qSPart1 + "\'" + @restaurantTypeCE + "\'" + qSPart2)
        end
        if params[:cchoice] == "2"
            qSPart1 = "SELECT AVG(M.price), M.mcategory FROM menuitems M, restaurants R WHERE M.mcategory = \'starter\' AND R.id = M.restaurant_id AND R.rtype = "
            qSPart2 = " GROUP BY M.mcategory UNION SELECT AVG(M1.price), M1.mcategory FROM menuitems M1, restaurants R1 WHERE M1.mcategory = 'main' AND R1.id = M1.restaurant_id AND R1.rtype = "
            qSPart3 = " GROUP BY M1.mcategory UNION SELECT AVG(M2.price), M2.mcategory FROM menuitems M2, restaurants R2 WHERE M2.mcategory = \'desert\' AND R2.id = M2.restaurant_id AND R2.rtype = "
            qSPart4 = " GROUP BY M2.mcategory"
            # result = ActiveRecord::Base.connection.execute("SELECT * FROM menuitems")
            rString = "\'" + @restaurantTypeCE + "\'"
            result = ActiveRecord::Base.connection.execute(qSPart1 + rString + qSPart2 + rString + qSPart3 + rString + qSPart4)
            if result != []
                @results = result
            end
        end
       return result
    end
    
    # static queries
    def query_fgkoj
        result = []
        if params[:fchoice] == "1"
            #query_f
            result = ActiveRecord::Base.connection.execute("SELECT R.rater_name, R1.name, R2.price, R2.food, R2.mood, R2.staff FROM raters R, restaurants R1, ratings R2 WHERE R.id = R2.rater_id AND R1.id = R2.restaurant_id AND (R.id, R1.name) IN ( SELECT DISTINCT R.id, R2.name FROM raters R, ratings R1, restaurants R2  WHERE R.id = R1.rater_id AND R2.id = R1.restaurant_id GROUP BY R2.name, R.id)")
        elsif params[:fchoice] == "2"
           #query_g details for unrated restaurants
           result = ActiveRecord::Base.connection.execute("SELECT DISTINCT R.name, R.rtype, L.phone_number FROM restaurants R, locations L, ratings R1 WHERE L.restaurant_id = R.id AND R1.restaurant_id = R.id AND R.id NOT IN (SELECT R.id FROM restaurants R, ratings R1 WHERE (R1.date < \'2015-02-01\' AND R1.date > \'2014-12-31\') AND R1.restaurant_id = R.id)")
        elsif params[:fchoice] == "3"
            #query_k details for unrated restaurants
            result = ActiveRecord::Base.connection.execute("SELECT DISTINCT R.rater_name, R.reputation, R.join_date, R2.name, R1.date FROM raters R, ratings R1, restaurants R2 WHERE R.id = R1.rater_id AND R1.restaurant_id = R2.id AND (R1.food + R1.mood) / 2 >= ( SELECT (MAX(R1.food) + MAX(R1.mood)) / 2 FROM raters R, ratings R1, restaurants R2 WHERE R1.restaurant_id = R2.id AND R1.rater_id = R.id ) ORDER BY R.reputation DESC")
        elsif params[:fchoice] == "4"
            #query_o
            result = ActiveRecord::Base.connection.execute("SELECT R.rater_name, R1.name, R2.price, R2.food, R2.mood, R2.staff FROM raters R, restaurants R1, ratings R2 WHERE R.id = R2.rater_id AND R1.id = R2.restaurant_id AND (R.id, R1.name) NOT IN (SELECT DISTINCT R.id, R2.name FROM raters R, ratings R1, restaurants R2 WHERE R.id = R1.rater_id AND R2.id = R1.restaurant_id GROUP BY R.id, R2.name HAVING MAX(R1.price) - MIN(R1.price) < 2 AND MAX(R1.food) - MIN(R1.food) < 2 AND MAX(R1.mood) - MIN(R1.MOOD) < 2 and MAX(R1.staff) - MIN(R1.staff) < 2 ORDER BY R2.name ) ORDER BY R.rater_name")
        elsif params[:fchoice] == "5"
            #query_j
            result = ActiveRecord::Base.connection.execute("SELECT (AVG(R1.food) + AVG(R1.price) + AVG(R1.mood) + AVG(R1.staff)) / 4 AS average_rating, R2.rtype FROM raters R, ratings R1, restaurants R2 WHERE R1.restaurant_id = R2.id AND R1.rater_id = R.id GROUP BY R2.rtype ORDER BY average_rating;")
        
        end
        if result != []
           @results = result
        end
        return result
    end
    
    def query_h
        qSPart1 = "SELECT DISTINCT R.name, L.opening_date FROM restaurants R, locations L, ratings R1, raters R2 WHERE R.id = L.restaurant_id AND R1.restaurant_id = R.id AND R1.staff < ( SELECT MIN(R.staff) FROM ratings R, raters R1 WHERE R.rater_id = R1.id AND R1.id = "
        qSPart2 = ") AND R1.staff < (SELECT MIN(R.mood) FROM ratings R, raters R1 WHERE R.rater_id = R1.id AND R1.id = "
        qSPart3 = ") AND R1.staff < (SELECT MIN(R.food) FROM ratings R, raters R1 WHERE R.rater_id = R1.id AND R1.id = "
        qSPart4 = ") AND R1.staff < (SELECT MIN(R.price) FROM ratings R, raters R1 WHERE R.rater_id = R1.id AND R1.id = "
        qSPart5 = ") ORDER BY L.opening_date"
        result = ActiveRecord::Base.connection.execute(qSPart1 + params[:hchoice] + qSPart2 + params[:hchoice] + qSPart3 + params[:hchoice] + qSPart4 + params[:hchoice] + qSPart5 )
        return result
    end
    
    def query_i
        result = []
        if params[:itype] != nil
            restaurantNameResult = ActiveRecord::Base.connection.execute("SELECT rtype FROM restaurants WHERE id = " + params[:itype])
            restaurantNameResult.each do |restaurant|
                @restaurantTypeI = restaurant["rtype"]
            end
            
            qSPart1 = "SELECT DISTINCT R2.name, R.rater_name FROM raters R, ratings R1, restaurants R2 WHERE R2.rtype = "
            qSPart2 = " AND R1.restaurant_id = R2.id AND R1.rater_id = R.id AND R1.food = ( SELECT MAX(R1.food) FROM raters R, ratings R1, restaurants R2 WHERE R2.rtype = "
            qSPart3 = " AND R1.restaurant_id = R2.id AND R1.rater_id = R.id) ORDER BY R2.name"
            rString = "\'" + @restaurantTypeI + "\'"
            result = ActiveRecord::Base.connection.execute(qSPart1 + rString + qSPart2 + rString + qSPart3)
            if result != []
                @results = result
            end
        end
        return result
    end
    
    def query_l
        result = []
        if params[:lchoice] == "1"
            result = ActiveRecord::Base.connection.execute("SELECT DISTINCT R.rater_name, R.reputation, R2.name, R1.date FROM raters R, ratings R1, restaurants R2 WHERE R.id = R1.rater_id AND R1.restaurant_id = R2.id AND (R1.food) >= (SELECT MAX(R1.food) FROM raters R, ratings R1, restaurants R2 WHERE R1.restaurant_id = R2.id AND R1.rater_id = R.id )")
        elsif params[:lchoice] == "2"
            result = ActiveRecord::Base.connection.execute("SELECT DISTINCT R.rater_name, R.reputation, R2.name, R1.date FROM raters R, ratings R1, restaurants R2 WHERE R.id = R1.rater_id AND R1.restaurant_id = R2.id AND (R1.mood) >= (SELECT MAX(R1.mood) FROM raters R, ratings R1, restaurants R2 WHERE R1.restaurant_id = R2.id AND R1.rater_id = R.id )")
        end
        return result
    end
    
    def query_m
        result = []
        if params[:mchoice] != nil
            restaurantNameResult = ActiveRecord::Base.connection.execute("SELECT name FROM restaurants WHERE id = " + params[:mchoice])
            restaurantNameResult.each do |restaurant|
                @restaurantMName = restaurant["name"]
            end
            
            qSPart1 = "SELECT DISTINCT R.id, R.rater_name, R.reputation, R1.comments, M.name, M.price, R3.comment FROM raters R, ratings R1, restaurants R2, rating_items R3, menuitems M WHERE R1.rater_id = R.id AND R2.name = "
            qSPart2 = " AND R1.restaurant_id = R2.id AND R3.rater_id = R.id AND R3.menuitem_id = M.id AND R3.date = R1.date AND R.id IN ( SELECT R1.rater_id FROM raters R, ratings R1, restaurants R2 WHERE R2.name = "
            qSPart3 = " AND R1.restaurant_id = R2.id AND R1.rater_id = R.id GROUP BY R1.rater_id, R.reputation, R2.name HAVING COUNT(*) >= ALL ( SELECT COUNT(*) FROM ratings R1, restaurants R WHERE R.name = "
            qSPart4 = " AND R1.restaurant_id = R.id GROUP BY R1.rater_id))"
            rString = rString = "\'" + @restaurantMName + "\'"
            result = ActiveRecord::Base.connection.execute(qSPart1 + rString + qSPart2 + rString + qSPart3 + rString + qSPart4)
        end
        return result
    end
    
    def query_n
        result = []
        if params[:nrater] != nil
            raterNameResult = ActiveRecord::Base.connection.execute("SELECT rater_name FROM raters WHERE id = " + params[:nrater])
            raterNameResult.each do |rater|
                @raterNameN = rater["rater_name"]
            end
        qSPart1 = "SELECT DISTINCT R.rater_name, R.email FROM raters R, ratings R1 WHERE R1.rater_id  = R.id AND (R1.food + R1.mood + R1.staff + R1.price) < ( SELECT MAX(R1.food + R1.mood + R1.staff + R1.price) FROM raters R, ratings R1 WHERE R.id = R1.rater_id AND R.rater_name = "
        qSPart2 = ")"
        rString = "\'" + @raterNameN + "\'"
        result = ActiveRecord::Base.connection.execute(qSPart1 + rString + qSPart2)
        end
        return result
        
    end
    
    def query_delegator
        result = []
        if params[:aname] != nil
            result = query_abd
        elsif params[:ctype] != nil
            result = query_ce
        elsif params[:fchoice] != nil
            result = query_fgkoj
        elsif params[:hchoice] != nil
            result = query_h
        elsif params[:itype] != nil
            result = query_i
        elsif params[:lchoice] != nil
            result = query_l
        elsif params[:mchoice] != nil
            result = query_m
        elsif params[:nrater] != nil
            result = query_n
        end
        return result
        
    end
end
