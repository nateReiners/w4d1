class ChangeCommentAuthorColumnNames < ActiveRecord::Migration
  def change
    rename_column :comments, :author_id_id, :author_id
    rename_column :comments, :author_id_type, :author_type 
  end
end
