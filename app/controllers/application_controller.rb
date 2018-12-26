# Imports the Google Cloud client library
require "google/cloud/language"


class ApplicationController < ActionController::API
    def test
        text_content = "An element such as <input>, <textarea>, or <select> which do not maintain their own state, but rely on React's state to be the single source of truth."
        language = Google::Cloud::Language.new

        entities_response = language.analyze_entities content: text_content, type: :PLAIN_TEXT
        


        syntax_response = language.analyze_syntax content: text_content, type: :PLAIN_TEXT

    
        render :json => {entities: entities_response, syntax: syntax_response}
    end
end
