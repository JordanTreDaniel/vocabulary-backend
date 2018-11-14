class Api::V1::CategoriesController < ApplicationController
    def index
        categories = Category.all
        render :json => categories
    end
    def show
        category = Category.find(params[:id])
        render :json => category, methods: [:cards]
    end
    def update
        @category = Category.find(params[:id])
        if @category.update(category_params)
            render :json => @category
        else
            render :json => @category.errors
        end
    end
    def category_params
        params.require(:category).permit(:id, :desc, :img_url, :name,  :created_at, :updated_at)
    end
end
