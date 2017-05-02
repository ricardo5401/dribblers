class TrainingPlansController < ApplicationController
  before_action :set_training_plan, only: [:show, :update, :destroy]

  # GET /training_plans
  def index
    @training_plans = TrainingPlan.all

    render json: @training_plans
  end

  # GET /training_plans/1
  def show
    render json: @training_plan
  end

  # POST /training_plans
  def create
    @training_plan = TrainingPlan.new(training_plan_params)

    if @training_plan.save
      render json: @training_plan, status: :created, location: @training_plan
    else
      render json: @training_plan.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /training_plans/1
  def update
    if @training_plan.update(training_plan_params)
      render json: @training_plan
    else
      render json: @training_plan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /training_plans/1
  def destroy
    @training_plan.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_plan
      @training_plan = TrainingPlan.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def training_plan_params
      params.require(:training_plan).permit(:name, :shoot_type)
    end
end
