require 'json'
class Api::V1::UsersController < ApplicationController
    def show
        user = User.find(params[:id])
        if user 
            render :json => user 
        else
            render :json => user.errors
        end
    end
    def sign_in
        response = RestClient.post("https://github.com/login/oauth/access_token", {
            client_id: ENV["GITHUB_CLIENT_ID"],
            client_secret: ENV["GITHUB_CLIENT_SECRET"],
            code: params[:code]
        }, headers={
            "Accept": "application/json"
        })
        github_token = JSON.parse(response.body)["access_token"]

        response = RestClient.get("https://api.github.com/user?access_token=#{github_token}", {
            client_id: ENV["GITHUB_CLIENT_ID"],
            client_secret: ENV["GITHUB_CLIENT_SECRET"],
            headers: {
                "Authorization": "token #{github_token}",
                "Accept": "application/json"
            }
        })

        github_user = JSON.parse(response)
        user = User.find_or_create_by(username: github_user["login"]) do |u|
            u["avatar_url"] = github_user["avatar_url"]
        end
        render :json => user
    end

    def test

        render :json => {response: "Test"}
    end
end
