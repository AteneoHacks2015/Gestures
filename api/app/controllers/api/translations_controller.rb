class Api::TranslationsController < Api::ApplicationController

	def index
		@item = Item.find(params[:item_id])
		@translations = @item.translations
		render json: @translations,
			   include: [:gestures],
			   status: :ok
	end

	def create
		trans_params = translation_params
		@item = Item.find(params[:item_id])
				
		if @item.translations.create({name: trans_params[:name]})
			@gestures = Gesture.find(trans_params[:gestures])
			@translation = @item.translations.last
			@translation.gestures << @gestures
			
			render json: @translation,
			   	   include: [:gestures],
			       status: :created
		else
			render json: {errors: @item.translations.errors.full_messages},
				   status: :bad_request
		end 
	end

	def show
		@item = Item.find(params[:item_id])
		@translation = @item.translations.find(params[:id])
		render json: @translation, include: [:gestures], status: :ok
	end

	def update
		@item = Item.find(params[:item_id])
		@translation = @item.translations.find(params[:id])
		if @translation.update(translation_params)
			render json: @translation,
			   	   include: [:gestures],
			       status: :created
		else
			render json: {errors: @translation.errors.full_messages},
				   status: :bad_request
		end 
	end

	private

	def translation_params
		params.require(:translation).permit!
	end
end
