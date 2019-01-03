require 'json'
class Api::V1::UsersController < ApplicationController
    def sign_in
        response = RestClient.post("https://github.com/login/oauth/access_token", {
            client_id: ENV["GITHUB_CLIENT_ID"],
            client_secret: ENV["GITHUB_CLIENT_SECRET"],
            code: params[:code]
        }, headers={
            "Accept": "application/json"
        })
        byebug
        render :json => {token: JSON.parse(response.body)["access_token"]}
    end
    def test
        render :json => {response: "Test"}
    end
end
