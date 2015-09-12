class AddPhotoToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :photo, :bytea
  end
end
