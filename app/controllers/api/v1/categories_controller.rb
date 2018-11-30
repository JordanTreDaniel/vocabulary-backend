class Api::V1::CategoriesController < ApplicationController
    def index
         categories = Category.all
        render :json => categories.to_json(include: {cards: {include: :tags}})
    end
    def show
        category = Category.find(params[:id])
        render json: category.to_json(include: {cards: {include: :tags}})
    end
    def update
        @cards = []
        params[:cards].each do |card|
            if card[:id]
                @card = Card.find(card[:id])
                @cards.push(@card.update!(card_params(card)))
            else
                @card = Card.create!(card_params(card))
                Categorization.create!(card: @card, category_id: params[:id])
                @cards.push(@card)
            end
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
