class StyleSurveySerializer < ActiveModel::Serializer
  attributes :id, :style_type, :colors, :patterns, :preferred_brands, :preferred_jewelry_type, :age, :ear_piercings, :additional_info
end
