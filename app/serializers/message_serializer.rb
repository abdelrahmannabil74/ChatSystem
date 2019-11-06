class MessageSerializer < ActiveModel::Serializer

  include FastJsonapi::ObjectSerializer

  attributes :id, :body
  belongs_to :chat

end
