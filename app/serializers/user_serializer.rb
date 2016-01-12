class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :rental_units

  def name
    "#{object.first_name[0]}. #{object.last_name}"
  end
end
