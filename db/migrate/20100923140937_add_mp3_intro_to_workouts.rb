class AddMp3IntroToWorkouts < ActiveRecord::Migration
  def self.up
    add_column :workouts, :mp3_intro_file_name, :string
    add_column :workouts, :mp3_intro_content_type, :string
    add_column :workouts, :mp3_intro_file_size, :integer
  end

  def self.down
    remove_column :workouts, :mp3_intro_file_size
    remove_column :workouts, :mp3_intro_content_type
    remove_column :workouts, :mp3_intro_file_name
  end
end
