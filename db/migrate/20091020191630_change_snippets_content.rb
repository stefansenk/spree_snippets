class ChangeSnippetsContent < ActiveRecord::Migration[4.2]
  def self.up
    change_column  :snippets, :content, :text
  end

  def self.down
    change_column  :snippets, :content, :string
  end
end
