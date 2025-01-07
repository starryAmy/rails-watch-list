class RemoveExistingForeignKeysFromBookmarks < ActiveRecord::Migration[7.1]
  def change
    # 刪除現有的外鍵約束
    remove_foreign_key :bookmarks, :movies
    remove_foreign_key :bookmarks, :lists

    # 重新創建外鍵約束並設置 on_delete: :restrict
    add_foreign_key :bookmarks, :movies, column: :movie_id, on_delete: :restrict
    add_foreign_key :bookmarks, :lists, column: :list_id, on_delete: :restrict
  end
end
