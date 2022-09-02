# frozen_string_literal: true

module Types
  class WorkItemType < Types::BaseObject
    include Rails.application.routes.url_helpers

    field :id, ID, null: false
    field :url, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def url
      rails_storage_proxy_url(object.image)
    end
  end
end
