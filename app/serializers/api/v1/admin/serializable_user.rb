module Api::V1::Admin
  class SerializableUser < JSONAPI::Serializable::Resource
    type 'user'

    attributes :id, :email, :first_name, :last_name, :role_type

    has_one :role
  end
end
