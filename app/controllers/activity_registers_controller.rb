class ActivityRegistersController < ApplicationController
  before_action :set_activity_register, only: [:show, :edit, :update, :destroy]

  # GET /activity_registers
  # GET /activity_registers.json
  def index
    @activity_registers = ActivityRegister.all
  end

  # GET /activity_registers/1
  # GET /activity_registers/1.json
  def show
  end

  # GET /activity_registers/new
  def new
    @activity_register = ActivityRegister.new
  end

  # GET /activity_registers/1/edit
  def edit
  end

  # POST /activity_registers
  # POST /activity_registers.json
  def create
    @activity_register = ActivityRegister.new(activity_register_params)

    respond_to do |format|
      if @activity_register.save
        format.html { redirect_to @activity_register, notice: 'Activity register was successfully created.' }
        format.json { render :show, status: :created, location: @activity_register }
      else
        format.html { render :new }
        format.json { render json: @activity_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_registers/1
  # PATCH/PUT /activity_registers/1.json
  def update
    respond_to do |format|
      if @activity_register.update(activity_register_params)
        format.html { redirect_to @activity_register, notice: 'Activity register was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity_register }
      else
        format.html { render :edit }
        format.json { render json: @activity_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_registers/1
  # DELETE /activity_registers/1.json
  def destroy
    @activity_register.destroy
    respond_to do |format|
      format.html { redirect_to activity_registers_url, notice: 'Activity register was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_register
      @activity_register = ActivityRegister.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_register_params
      params.require(:activity_register).permit(:activity_id, :user_id, :picture1, :picture2, :picture3, :comments, :value)
    end
end
