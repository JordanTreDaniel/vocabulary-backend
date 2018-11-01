class Api::V1::CategoriesController < ApplicationController
    def index
        categories = Category.all
        render :json => categories
    end
    def show
        category = Category.find(params[:id])
        render :json => category, include: ['cards']
    end
    def update
        category = Category.find(params[:id])
        byebug
        render :json => category
    end
end
