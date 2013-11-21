class CommentariesController < ApplicationController
  before_action :set_commentary, only: [:show, :edit, :update, :destroy]

  # GET /commentaries
  # GET /commentaries.json
  def index
    @commentaries = Commentary.all
  end

  # GET /commentaries/1
  # GET /commentaries/1.json
  def show
  end

  # GET /commentaries/new
  def new
    @commentary = Commentary.new
  end

  # GET /commentaries/1/edit
  def edit
  end

  # POST /commentaries
  # POST /commentaries.json
  def create
    @commentary = Commentary.new(commentary_params)

    respond_to do |format|
      if @commentary.save
        format.html { redirect_to @commentary, notice: 'Commentary was successfully created.' }
        format.json { render action: 'show', status: :created, location: @commentary }
      else
        format.html { render action: 'new' }
        format.json { render json: @commentary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commentaries/1
  # PATCH/PUT /commentaries/1.json
  def update
    respond_to do |format|
      if @commentary.update(commentary_params)
        format.html { redirect_to @commentary, notice: 'Commentary was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @commentary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commentaries/1
  # DELETE /commentaries/1.json
  def destroy
    @commentary.destroy
    respond_to do |format|
      format.html { redirect_to commentaries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commentary
      @commentary = Commentary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commentary_params
      params.require(:commentary).permit(:content, :user_id)
    end
end
