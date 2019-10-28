class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|

      t.string :title, null: false #タイトル
      t.text :body  #本文
      t.datetime :posted_at, null: false #投稿日
      t.string :status, null: false, default: "draft" #状態

      t.timestamps null: false
    end
  end
end
