class ApplicationController < ActionController::API
    def test
        render json: {test: true}
    end
end
