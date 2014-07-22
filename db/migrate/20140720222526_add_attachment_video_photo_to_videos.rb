class AddAttachmentVideoPhotoToVideos < ActiveRecord::Migration
  def self.up
    change_table :videos do |t|
      t.attachment :video
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :videos, :video
    remove_attachment :videos, :photo
  end
end
