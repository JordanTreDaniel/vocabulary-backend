class Api::V1::CategoriesController < ApplicationController
    def index
        categories = Category.all
        render :json => categories
    end
    def show
        category = Category.find(params[:id])
        render :json => category, methods: [:some_arbitrary_method]
    end
    def update
        @category = Category.find(params[:id])
        render :json => category
    end
    def category_params
        params[:data].permit(:id, :type, :attributes => [:name, "img-url", :desc], :relationships => [:cards => [:data], :dependencies => [:data], :dependents => [:data]]).to_h
    end
end
