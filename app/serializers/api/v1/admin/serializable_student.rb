module Api::V1::Admin
  class SerializableStudent < JSONAPI::Serializable::Resource
    type 'student'

    attributes :id, :student_number

    attribute :name do
      @object.class.to_s
    end
  end
end
