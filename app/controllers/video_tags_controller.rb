class VideoTagsController < ApplicationController
  before_action :set_video_tag, only: [:show, :update, :destroy]

  # GET /video_tags
  def index
    @video_tags = VideoTag.all

    render json: @video_tags
  end

  # GET /video_tags/1
  def show
    render json: @video_tag
  end

  # POST /video_tags
  def create
    @video_tag = VideoTag.new(video_tag_params)

    if @video_tag.save
      render json: @video_tag, status: :created, location: @video_tag
    else
      render json: @video_tag.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /video_tags/1
  def update
    if @video_tag.update(video_tag_params)
      render json: @video_tag
    else
      render json: @video_tag.errors, status: :unprocessable_entity
    end
  end

  # DELETE /video_tags/1
  def destroy
    @video_tag.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_tag
      @video_tag = VideoTag.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def video_tag_params
      params.require(:video_tag).permit(:tag_id, :video_id)
    end
end
