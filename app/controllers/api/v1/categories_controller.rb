class Api::V1::CategoriesController < ApplicationController
    def index
        @categories = Category.all
        render :json => @categories.to_json(include: [{cards: {include: :tags}}, :dependents, :dependencies])
    end
    def show
        category = Category.find(params[:id])
        render json: category.to_json(include: [{cards: {include: :tags}}, :dependents, :dependencies])
    end
    def destroy
        category = Category.destroy(params[:id])
        render :json => {message: "Category number #{params[:id]} has been deleted."}
    end
    def update
        @cards = []
        if params[:id] != "null"
            @category = Category.find(params[:id])
            @category.update(category_params)
        else
            @category = Category.create!(category_params)
        end
        params[:cards].each do |card|
            if card[:id]
                @card = Card.find(card[:id])
                @cards.push(@card.update!(card_params(card)))
            else
                @card = Card.create!(card_params(card))
                Categorization.create!(card: @card, category_id: @category.id)
                @cards.push(@card)
            end
        end
        if @category.save!
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
