migration 1, :create_spots do
  up do
    create_table :spots do
      column :id, Integer, :serial => true
      column :latitude, DataMapper::Property::Decimal
      column :longitude, DataMapper::Property::Decimal
    end
  end

  down do
    drop_table :spots
  end
end
