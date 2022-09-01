module Resolvers
  class WorkResolver < Resolvers::BaseResolver
    type Types::WorkType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      Work.find(id)
    end
  end
end
