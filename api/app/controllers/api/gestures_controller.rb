class Api::GesturesController < Api::ApplicationController

	def index
		@gestures = Gesture.all
		render json: @gestures, status: :ok
	end

	def create
		@gesture = Gesture.new(gesture_params)
		
		if @gesture.save
			render json: @gesture, status: :ok
		else
			render json: {errors: @gesture.errors.full_messages},
				   status: :bad_request
		end
	end

	private

	def gesture_params
		params.require(:gesture).permit(:name)
	end
end
