class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string    :name
      t.string    :description
      t.datetime  :do_by_datetime
      t.boolean   :urgency
      t.boolean   :importance

      t.timestamps
    end
  end
end
