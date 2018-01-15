class UserratingsController < OpenReadController
  before_action :set_userrating, only: [:show, :update, :destroy]

  # GET /userratings
  def index
    @userratings = Userrating.all

    render json: @userratings
  end

  # GET /userratings/1
  def show
    render json: @userrating
  end

  # POST /userratings
  def create
    @userrating = current_user.userratings.build(userrating_params)

    if @userrating.save
      render json: @userrating, status: :created, location: @userrating
    else
      render json: @userrating.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /userratings/1
  def update
    if @userrating.update(userrating_params)
      render json: @userrating
    else
      render json: @userrating.errors, status: :unprocessable_entity
    end
  end

  # DELETE /userratings/1
  def destroy
    @userrating.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userrating
      @userrating = current_user.userratings.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def userrating_params
      params.require(:userrating).permit(:rating, :video_id)
    end
end
