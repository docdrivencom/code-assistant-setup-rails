class CreateTodoItems < ActiveRecord::Migration[7.1]
    def up
        create_table :todo_items do |t|
            #t.integer :id # this is not needed, Rails will create an id column by default
            t.string :name
            t.bool :is_complete
            t.datetime :due_at
        end
    end

    def down
        drop_table :todo_items
    end
end