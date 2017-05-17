module Home
    class Index
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
                user_activities: activities,
                training_plans: TrainingPlan.all
            }
        end
        
    end
end