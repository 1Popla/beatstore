class BeatsController < ApplicationController
  before_action :set_beat, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index]

  # GET /beats or /beats.json
  def index
    @pagy, @beats = pagy(Beat.all.order("created_at desc"), items: 5)
    
  end

  # GET /beats/1 or /beats/1.json
  def show
  end

  # GET /beats/new
  def new
    @beat = current_user.beats.build
  end

  # GET /beats/1/edit
  def edit
  end

  # POST /beats or /beats.json
  def create
    @beat = current_user.beats.build(beat_params)

    respond_to do |format|
      if @beat.save
        format.html { redirect_to beat_url(@beat), notice: "Beat was successfully created." }
        format.json { render :show, status: :created, location: @beat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @beat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beats/1 or /beats/1.json
  def update
    respond_to do |format|
      if @beat.update(beat_params)
        format.html { redirect_to beat_url(@beat), notice: "Beat was successfully updated." }
        format.json { render :show, status: :ok, location: @beat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @beat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beats/1 or /beats/1.json
  def destroy
    @beat.destroy

    respond_to do |format|
      format.html { redirect_to beats_url, notice: "Beat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  
    # Use callbacks to share common setup or constraints between actions.
    def set_beat
      @beat = Beat.find(params[:id])
    end
    private
    # Only allow a list of trusted parameters through.
    def beat_params
      params.require(:beat).permit(:Title, :bpm, :genre, :description, :scale, :price, :title, :image, :audio)
    end
end
