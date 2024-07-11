class CreateTodoItems < ActiveRecord::Migration[7.1]
    def up
        create_table :todo_items do |t|
            # t.integer :id # ALWAYS ignore ID's
            t.string :name
            t.bool :is_complete
            t.datetime :due_at
        end

        create_table :comments do |t|
            t.string :content
            # t.integer :todo_item_id # Ignore ID because of the belongs_to line below
            t.belongs_to :todo_item
        end
    end

    def down
        drop_table :comments
        drop_table :todo_items
    end
end
