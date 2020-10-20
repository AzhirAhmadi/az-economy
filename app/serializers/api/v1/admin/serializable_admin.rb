module Api::V1::Admin
  class SerializableAdmin < JSONAPI::Serializable::Resource
    type 'admin'

    attributes :id

    attribute :name do
      @object.class.to_s
    end
  end
end
