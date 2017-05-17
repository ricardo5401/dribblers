# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Tip.create(training_plan_id: 1, name: "Nice try", description: "You can do better")
  
  
  tp1 =TrainingPlan.create(name: "Beginer Shoot", shoot_type: "10 - 3 points")
  tp2.create(name: "Advanced Shoot", shoot_type: "Long shoots")
  tp3.create(name: "Great Shoot", shoot_type: "Long advanced")
  
  training = TrainingActivity.create(training_plan_id: tp1.id, shoot_count: 5, 
  description: "Ronda de 5 tiros de tres puntos sin cronómetro.", with_time: false, expected_time: DateTime.now )
  training2 = TrainingActivity.create(training_plan_id: tp1.id, shoot_count: 5, 
  description: "Ronda de 5 tiros de ocho puntos sin cronómetro.", with_time: false, expected_time: DateTime.now )
  training3 = TrainingActivity.create(training_plan_id: tp2.id, shoot_count: 10, 
  description: "Lanzamiento de medio campo con cronómetro. intenta superar la marca!!", with_time: true, expected_time: DateTime.now + 10.minutes)
   
  
  User.all.each do |user|
    Activity.create(user_id: user.id, training_activity_id: training.id, failed: 0, asserted: 0, startted_at: DateTime.now)
    Activity.create(user_id: user.id, training_activity_id: training2.id, failed: 0, asserted: 0, startted_at: DateTime.now)
    Activity.create(user_id: user.id, training_activity_id: training3.id, failed: 0, asserted: 0, startted_at: DateTime.now)
  end
