class BackgroundSerializer
  include FastJsonapi::ObjectSerializer
  set_type :image
  set_id :id
  attributes :image
end