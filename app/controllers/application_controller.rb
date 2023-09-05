class ApplicationController < ActionController::Base
    include JsonWebToken
    
    before_action :authenticate_request
    
    private
    def authenticate_request
        headed = request
    end
end
