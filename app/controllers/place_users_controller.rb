class PlaceUsersController < ApplicationController
  before_action :set_place_user, only: [:show, :edit, :update, :destroy]

  # GET /place_users
  # GET /place_users.json
  def index
    @place_users = PlaceUser.all
  end

  # GET /place_users/1
  # GET /place_users/1.json
  def show
  end

  # GET /place_users/new
  def new
    @place_user = PlaceUser.new
  end

  # GET /place_users/1/edit
  def edit
  end

  # POST /place_users
  # POST /place_users.json
  def create
    @place_user = PlaceUser.new(place_user_params)

    respond_to do |format|
      if @place_user.save
        format.html { redirect_to @place_user, notice: 'Place user was successfully created.' }
        format.json { render :show, status: :created, location: @place_user }
      else
        format.html { render :new }
        format.json { render json: @place_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /place_users/1
  # PATCH/PUT /place_users/1.json
  def update
    respond_to do |format|
      if @place_user.update(place_user_params)
        format.html { redirect_to @place_user, notice: 'Place user was successfully updated.' }
        format.json { render :show, status: :ok, location: @place_user }
      else
        format.html { render :edit }
        format.json { render json: @place_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /place_users/1
  # DELETE /place_users/1.json
  def destroy
    @place_user.destroy
    respond_to do |format|
      format.html { redirect_to place_users_url, notice: 'Place user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place_user
      @place_user = PlaceUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_user_params
      params.require(:place_user).permit(:user_id, :place_id)
    end
end
