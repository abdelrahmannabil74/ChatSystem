class ChatSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :name, :messages_count
  belongs_to :app



end
