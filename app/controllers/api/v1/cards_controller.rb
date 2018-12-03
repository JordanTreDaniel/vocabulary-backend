class Api::V1::CardsController < ApplicationController
    def index
        cards = Card.all
        render :json => cards.to_json(include: [:categories, :tags])
    end
    def show
        card = Card.find(params[:id])
        render :json => card.to_json(include: [:categories, :tags])
    end
    def destroy
        Card.destroy(params[:id])
        render :json => {message: "Card number #{params[:id]} has been deleted."}
    end
end
