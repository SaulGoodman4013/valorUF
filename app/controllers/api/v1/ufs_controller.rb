module Api 
    module V1
    class UfsController < V1Controller
        def by_date
            @ufs = Uf.find_by(day: params[:date])
        
            # indentificando al cliente en uf controller

            @client = Client.find_by(name: request.headers["X-Cliente"])
            
            # contando la cantidad de veces de logins
            
            @client.log_in_account = @client.log_in_account +1 
            @client.save
            
            # renderisando la informacion en modo JSON
            
            render json: @ufs 
            
        end
    end
end