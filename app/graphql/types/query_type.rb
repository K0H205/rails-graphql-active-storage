module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :work, Types::WorkType, null: false do
      description 'Find a work by ID'
      argument :id, ID, required: true
    end

    def work(id:)
      Work.find(id)
    end
  end
end
