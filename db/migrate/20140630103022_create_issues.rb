class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :name, :null => false
      t.text :context

      t.timestamps
    end
  end
end
