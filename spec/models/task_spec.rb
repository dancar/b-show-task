require 'rails_helper'

RSpec.describe Task, type: :model do
  it "calculates status correctly" do
    now_time = Time.local(2008, 9, 1, 12, 0, 0)
    t1 = Time.local(2008, 9, 1, 11, 0, 0)
    t2 = Time.local(2008, 9, 1, 10, 0, 0)
    t3 = Time.local(2008, 9, 1, 9, 0, 0)
    t4 = Time.local(2008, 9, 1, 8, 0, 0)
    Timecop.freeze(now_time)

    Task.create!(created_at: t1, completed: false)
    expect(Task.get_recent_status).to eq(1.0 / 1.0)

    Task.create!(created_at: t2, completed: true)
    expect(Task.get_recent_status).to eq(1.0 / 2.0)

    Task.create!(created_at: t3, completed: true)
    expect(Task.get_recent_status).to eq(1.0 / 3.0)

    Task.create!(created_at: t4, completed: true)
    expect(Task.get_recent_status).to eq(1.0 / 3.0)
  end
end
