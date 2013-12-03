class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @pins = Pin.order(params[:sort])
  end

  def show
  end

  def new
    @pin = current_user.pins.build

    @all_interests = Interest.all 

    @pin_interest = @pin.pininterests.build


    @all_publications = Publication.all 

    @pin_publication = @pin.pinpublications.build

    
  end

  def edit
    @pin = Pin.find(params[:id])
    @all_interests = Interest.all 
    if @pin.pininterests.blank?
      #@pin.pininterests.build
    end
  end

  def create
    @pin = current_user.pins.build(pin_params)

    params[:publications][:id].each do |publication|
      if !publication.empty?
        @pin.pinpublications.build(:publication_id => publication)
      end
    end

    respond_to do |format|
      if @pin.save
        format.html { redirect_to @pin, notice: 'Pin was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pin }
      else
        format.html { render action: 'new' }
        format.json { render json: @pin.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @pin = Pin.find(params[:id])

    respond_to do |format|
      if @pin.update_attributes(pin_params)
        format.html { redirect_to @pin, notice: 'Pin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pin.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pin.destroy
    respond_to do |format|
      format.html { redirect_to pins_url }
      format.json { head :no_content }
    end
  end

  private
    def set_pin
      @pin = Pin.find(params[:id])
    end

    def correct_user 
      @pin = current_user.pins.find_by(id: params[:id])
      redirect_to pins_path, notice: "Not authorized to edit this" if @pin.nil?
    end

    def pin_params
      params.require(:pin).permit(:id, :name, :repemail, :publication, :blog, :linkedin, :twitter, :facebook).merge(params[:interests_params])
    end

end

