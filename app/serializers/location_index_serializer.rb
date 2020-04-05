class LocationIndexSerializer < ActiveModel::Serializer
  attributes :id, :country, :lat, :long
end
