class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.integer :word_count_goal

      t.timestamps
    end
  end
end
