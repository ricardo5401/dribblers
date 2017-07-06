module V1
  class AppliesController < ApiController
    before_action :set_apply, only: [:show, :edit, :update, :destroy]
  
    # GET /applies
    def index
      @applies = Apply.all
      render json: @applies
    end
  
    # GET /applies/1
    def show
      render json: @apply
    end
  
    # POST /applies
    def create
      @apply = Apply.new(apply_params)
  
      if @apply.save
        render json: @apply, status: :created
      else
        render json: @apply.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /applies/1
    def update
      if @apply.update(apply_params)
        render json: @apply
      else
        render json: @apply.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /applies/1
    def destroy
      @apply.destroy
      render json: { message: "ok" }, status: 202
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_apply
        @apply = Apply.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def apply_params
        params.require(:apply).permit(:user_id, :model, :model_id, :active)
      end
  end

end