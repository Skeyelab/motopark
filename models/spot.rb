class Spot
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :latitude, Float
  property :longitude, Float
end
