class Api::V1::DependenciesController < ApplicationController
    def index
        dependencies = Dependency.all
        render :json => dependencies
    end
    def show
        dependencies = Dependency.find(params[:id])
        render :json => dependencies
    end
    def destroy
        Dependency.destroy(params[:id])
        render :json => {message: "Dependency number #{params[:id]} has been deleted."}
    end
end
