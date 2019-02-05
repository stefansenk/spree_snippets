class NamespaceSnippetTable < ActiveRecord::Migration[4.2]
  def change
    rename_table :snippets, :spree_snippets
  end
end
