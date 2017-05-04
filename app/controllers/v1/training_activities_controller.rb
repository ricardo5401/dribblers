module V1
  class TrainingActivitiesController < ApplicationController
    before_action :set_training_activity, only: [:show, :update, :destroy]

    # GET /training_activities
    def index
      @training_activities = TrainingActivity.all

      render json: @training_activities
    end

    # GET /training_activities/1
    def show
      render json: @training_activity
    end

    # POST /training_activities
    def create
      @training_activity = TrainingActivity.new(training_activity_params)

      if @training_activity.save
        render json: @training_activity, status: :created, location: @training_activity
      else
        render json: @training_activity.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /training_activities/1
    def update
      if @training_activity.update(training_activity_params)
        render json: @training_activity
      else
        render json: @training_activity.errors, status: :unprocessable_entity
      end
    end

    # DELETE /training_activities/1
    def destroy
      @training_activity.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_training_activity
        @training_activity = TrainingActivity.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def training_activity_params
        params.require(:training_activity).permit(:training_plan_id, :shoot_count, :with_time, :expected_time)
      end
  end

end