class PropsController < ApplicationController

	before_action :set_prop, only: [:edit, :update, :show, :destroy]

	def index
		@props = Prop.all
	end

	def show
	end

	def new
		@prop = Prop.new	
	end

	def create
		@prop = Prop.new(prop_params)
		if @prop.save
			redirect_to props_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @prop.update(prop_params)
			redirect_to prop_path(@prop)
		else
			render 'edit'
		end
	end

	def destroy
		@prop.destroy
		redirect_to props_path
	end

private

	def prop_params
		params.require(:prop).permit(:author, :recipient, :reason)
	end

	def set_prop
		@prop = Prop.find(params[:id])
	end
end
