class Task < ApplicationRecord
  RECENT_RANGE = 3.hours
  def set_completed
    self.completed = true
    self.save!
  end

  def self.get_recent_status
    recent_tasks = self.get_recent
    total_count = recent_tasks.count
    completed_count = recent_tasks.where(completed: true).count
    1.0 * (total_count - completed_count) / total_count
  end

  def self.get_recent
    time_range = [Time.now - RECENT_RANGE..Time.now]
    Task.where created_at: time_range
  end
end
