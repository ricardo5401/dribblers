# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Tip.create(training_plan_id: 1, name: "", description: "")
  
  TrainingActivity.create(training_plan_id: 1, shoot_count: 10, with_time: false, expected_time: DateTime.now)
  
  TrainingPlan.create(name: "", shoot_type: "Long")
  
  Activity.create(user_id: 2, training_activity_id: 1, failed: 0, asserted: 0, startted_at: DateTime.now)
