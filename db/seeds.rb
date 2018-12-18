class GenData 
  def initialize
    run
  end

  def run 
    Todo.create([
      {title: "status handling", description: "to mark as 'done' instead of destroying", priority_level: randomize },
      {title: "More styles", description: "Bootstrap components", priority_level: randomize },
      {title: "user registration", description: "Compare Devise vs alternatives", priority_level: randomize },
      {title: "user settings/profiles", description: "Users should be able to edit their own profiles", priority_level: randomize },
      {title: "user level privileges", description: "Admins should be able to manage users and their todos", priority_level: randomize },
      {title: "metrics", description: "Users should have metrics", priority_level: randomize },
      {title: "admin/super admin", description: "task and user mgt", priority_level: randomize },
      {title: "alerts", description: "action cable?", priority_level: randomize },
      {title: "slack integration", description: "API feed", priority_level: randomize },
      {title: "ajax", description: "more realtime goodness", priority_level: randomize },
    ])
  end

  private

  def randomize 
    rand(1..10)
  end
end

GenData.new

