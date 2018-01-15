class StateSerializer < ActiveModel::Serializer
  attributes :id, :name, :year, :gender, :state, :count
end
