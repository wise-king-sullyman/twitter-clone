class QweetsController < ApplicationController
  before_action :set_qweet, only: %i[ show edit update destroy ]

  # GET /qweets or /qweets.json
  def index
    @qweets = Qweet.all
    @qweet = Qweet.new
  end

  # GET /qweets/1 or /qweets/1.json
  def show
  end

  # GET /qweets/new
  def new
    @qweet = Qweet.new
  end

  # GET /qweets/1/edit
  def edit
  end

  # POST /qweets or /qweets.json
  def create
    @qweet = Qweet.new(qweet_params)

    respond_to do |format|
      if @qweet.save
        format.html { redirect_to @qweet, notice: "Qweet was successfully created." }
        format.json { render :show, status: :created, location: @qweet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @qweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qweets/1 or /qweets/1.json
  def update
    respond_to do |format|
      if @qweet.update(qweet_params)
        format.html { redirect_to @qweet, notice: "Qweet was successfully updated." }
        format.json { render :show, status: :ok, location: @qweet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @qweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qweets/1 or /qweets/1.json
  def destroy
    @qweet.destroy
    respond_to do |format|
      format.html { redirect_to qweets_url, notice: "Qweet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qweet
      @qweet = Qweet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def qweet_params
      params.require(:qweet).permit(:qweet)
    end
end
