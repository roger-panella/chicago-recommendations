class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :contributor
      t.string :place
      t.string :notes
      t.string :type_of_place
  end
  end
end
