class AddLocationIdToArticles < ActiveRecord::Migration[6.0]
  def change
    add_reference :articles, :location, foreign_key: true
  end
end
