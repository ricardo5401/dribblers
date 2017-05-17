module V1
  class TipsController < ApiController
    before_action :set_tip, only: [:show, :update, :destroy]

    # GET /tips
    def index
      @tips = Tip.all

      render json: @tips
    end

    # GET /tips/1
    def show
      render json: @tip
    end

    # POST /tips
    def create
      @tip = Tip.new(tip_params)

      if @tip.save
        render json: @tip, status: :created, location: @tip
      else
        render json: @tip.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /tips/1
    def update
      if @tip.update(tip_params)
        render json: @tip
      else
        render json: @tip.errors, status: :unprocessable_entity
      end
    end

    # DELETE /tips/1
    def destroy
      @tip.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_tip
        @tip = Tip.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def tip_params
        params.require(:tip).permit(:training_plan_id, :name, :description)
      end
  end

end