class VideotagsController < ApplicationController
  before_action :set_videotag, only: [:show, :update, :destroy]

  # GET /videotags
  def index
    @videotags = Videotag.all

    render json: @videotags
  end

  # GET /videotags/1
  def show
    render json: @videotag
  end

  # create, update and delete controllers will be available when admin
  # interface is created

  # POST /videotags
  # def create
  #   @videotag = Videotag.new(videotag_params)
  #
  #   if @videotag.save
  #     render json: @videotag, status: :created, location: @videotag
  #   else
  #     render json: @videotag.errors, status: :unprocessable_entity
  #   end
  # end

  # PATCH/PUT /videotags/1
  # def update
  #   if @videotag.update(videotag_params)
  #     render json: @videotag
  #   else
  #     render json: @videotag.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /videotags/1
  # def destroy
  #   @videotag.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_videotag
      @videotag = Videotag.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def videotag_params
      params.require(:videotag).permit(:video_id, :tag_id)
    end
end
