class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|

      t.timestamps

      t.text :url
      t.string :name
      t.text :credits
      t.boolean :available, default:false
      t.datetime :published_at
    end
  end
end
