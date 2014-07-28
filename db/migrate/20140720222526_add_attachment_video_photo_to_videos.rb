class AddAttachmentVideoPhotoToVideos < ActiveRecord::Migration
  def change
    change_table :videos do |t|
      t.string :video
    end
  end

end
