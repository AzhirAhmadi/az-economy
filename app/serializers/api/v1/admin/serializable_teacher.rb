module Api::V1::Admin
  class SerializableTeacher < JSONAPI::Serializable::Resource
    type 'teacher'

    attributes :id

    attribute :name do
      @object.class.to_s
    end
  end
end
