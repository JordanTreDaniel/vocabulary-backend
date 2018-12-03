
class ApplicationController < ActionController::API
    def test
        response = RestClient.get("https://www.mediawiki.org/wiki/api.php?action=parse&page=Project:Sandbox")
        render :json => response.to_json
    end
end
