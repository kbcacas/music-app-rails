class CreateArtists < ActiveRecord::Migration[6.1]
  
  def change
    create_table :artists do |t|

      t.timestamps

      t.text :name
      t.text :permalink
      t.text :bio
      t.datetime :formed_at
      t.boolean :verified, default:false
      t.datetime :verified_at
      t.text :avatar_url
      t.text :cover_photo_url
    end
  end
end
