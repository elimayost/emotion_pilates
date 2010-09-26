class AddMp3PartTwoAndThreeAndUnguided < ActiveRecord::Migration
  def self.up

    add_column :workouts, :mp3_part_two_file_name, :string
    add_column :workouts, :mp3_part_two_content_type, :string
    add_column :workouts, :mp3_part_two_file_size, :integer

    add_column :workouts, :mp3_part_three_file_name, :string
    add_column :workouts, :mp3_part_three_content_type, :string
    add_column :workouts, :mp3_part_three_file_size, :integer

    add_column :workouts, :mp3_unguided_file_name, :string
    add_column :workouts, :mp3_unguided_content_type, :string
    add_column :workouts, :mp3_unguided_file_size, :integer

  end

  def self.down

    remove_column :workouts, :mp3_part_two_file_name
    remove_column :workouts, :mp3_part_two_content_type
    remove_column :workouts, :mp3_part_two_file_size

    remove_column :workouts, :mp3_part_three_file_name
    remove_column :workouts, :mp3_part_three_content_type
    remove_column :workouts, :mp3_part_three_file_size

    remove_column :workouts, :mp3_unguided_file_name
    remove_column :workouts, :mp3_unguided_content_type
    remove_column :workouts, :mp3_unguided_file_size

  end
end

