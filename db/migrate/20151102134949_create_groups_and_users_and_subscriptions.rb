class CreateGroupsAndUsersAndSubscriptions < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :title
      t.string :thumbnail
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end

    create_table :users do |t|
      t.string :username
      t.string :password
      t.boolean :premium, default: false
      t.string :email
      t.string :color

      t.timestamps null: false
    end

    create_table :subscriptions, id: false do |t|
      t.belongs_to :group, index: true
      t.belongs_to :user, index: true
    end
  end
end
