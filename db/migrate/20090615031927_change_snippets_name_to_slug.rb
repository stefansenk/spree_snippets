class ChangeSnippetsNameToSlug < ActiveRecord::Migration[4.2]
  def self.up
    rename_column :snippets, :name, :slug
  end

  def self.down
    rename_column :snippets, :slug, :name
  end
end
