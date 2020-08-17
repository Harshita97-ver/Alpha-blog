class DropArticleCatagoriesTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :article_catagories
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
