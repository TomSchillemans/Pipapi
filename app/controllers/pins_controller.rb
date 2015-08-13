class PinsController < ApplicationController
  before_action :find_pin, only: [:show, :edit, :update, :destroy]

  def index
    @pins = Pin.all.order('created_at DESC')
  end

  def show
    # Handled by the before action
  end

  def new
    @pin = current_user.pins.build
  end

  def create
    @pin = current_user.pins.build(pin_params)

    if @pin.save
      redirect_to root_url, success:'Successfully created the pin!'
    else
      render 'new'
    end
  end

  def edit
    # Handled by the before action
  end

  def update
    if @pin.update(pin_params)
      redirect_to @pin, success: 'The pin was successfully updated!'
    else
      render 'edit'
    end
  end

  def destroy
    if @pin.destroy
      redirect_to root_url, success: 'Successfully deleted the pin!'
    else
      redirect_to :back, error: 'There was a problem deleting your pin!'
    end
  end

  private

  def pin_params
    params.require(:pin).permit(:title, :description, :image)
  end

  def find_pin
    @pin = Pin.find(params[:id])
  end
end
