class Api::V1::CategoriesController < ApplicationController
    def index
        categories = Category.all
        render :json => categories, methods: [:cards]
    end
    def show
        category = Category.find(params[:id])
        render :json => category, methods: [:cards]
    end
    def update
        @cards = []
        params[:cards].each do |card|
            @card = Card.find(card[:id])
            @cards.push(@card.update!(card_params(card)))
        end
        @category = Category.find(params[:id])
        if @category.update(category_params)
            render :json => @category, methods: [:cards]
        else
            render :json => @category.errors
        end
    end
    def category_params
        params.require(:category).permit(:id, :desc, :img_url, :name, :cards, :created_at, :updated_at)
    end
    def card_params(cardObj)
        cardObj.permit(:id, :term, :desc, :def, :created_at, :updated_at)
    end
end
