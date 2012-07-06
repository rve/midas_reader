class CreateSyncPages < ActiveRecord::Migration
  def change
    create_table :sync_pages do |t|

      t.timestamps
    end
  end
end
