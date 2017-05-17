module Users
    class Activities
        def self.call(params = {})
            user = User.find_by(id: params[:id])
            user ? by_user(user) : respond
        end
        
        def self.by_user(user)
            activities = user.activities
            respond(activities)
        end
        
        def self.respond(activities = [], status = 202)
            {
                status: status,
                activities: ActiveModelSerializers::SerializableResource.
                                new(activities, each_serializer: ActivitySerializer),
                training_plans: ActiveModelSerializers::SerializableResource.
                                new(TrainingPlan.all, each_serializer: TrainingPlanSerializer)
            }
        end
        
    end
end