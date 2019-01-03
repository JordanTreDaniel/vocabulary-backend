# Imports the Google Cloud client library
require "google/cloud/language"
require 'rest-client'


class ApplicationController < ActionController::API
    def test
        text_content = "An element such as <input>, <textarea>, or <select> which do not maintain their own state, but rely on React's state to be the single source of truth."
            language = Google::Cloud::Language.new
            
            entities_response = language.analyze_entities content: text_content, type: :PLAIN_TEXT
            
            
            
            syntax_response = language.analyze_syntax content: text_content, type: :PLAIN_TEXT
            
            
            render :json => {entities: entities_response, syntax: syntax_response}
        end
        def sign_in
            response = RestClient.post("https://github.com/login/oauth/access_token", {
                client_id: ENV["GITHUB_CLIENT_ID"],
                client_secret: ENV["GITHUB_CLIENT_SECRET"],
                code: params[:code].to_i
            }, headers={})
        render :json => {response: response}
    end
end
