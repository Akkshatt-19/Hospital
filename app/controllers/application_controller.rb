class ApplicationController < ActionController::Base
    extend JsonWebToken
    
    before_action :authenticate_request

    private
    def authenticate_request
        headed = request.headers["Authorization"]
        header = headed.split(" ").last if headed
        decoded = jwt_decode(header)
        @current_user = User.find(decoded[:user_id])
      end
      
end
