class Message < ApplicationRecord
  include Searchable

  validates_presence_of :body
  belongs_to :chat
end
