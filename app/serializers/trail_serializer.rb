class TrailSerializer
  include FastJsonapi::ObjectSerializer
  set_type :trail
  set_id :id
  attributes :location, :forecast, :trails
end