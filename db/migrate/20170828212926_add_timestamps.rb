class AddTimestamps < ActiveRecord::Migration[5.1]
  def change
    add_timestamps(:answers)
  end
end
