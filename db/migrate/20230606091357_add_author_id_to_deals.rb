class AddAuthorIdToDeals < ActiveRecord::Migration[7.0]
  def change
    # add_column :deals, :authorid, :integer
    add_reference :deals, :author, foreign_key: { to_table: :users }
  end
end