class AddSectionToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :section, :int
  end
end
