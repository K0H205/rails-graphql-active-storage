module Mutations
  class CreateWork < BaseMutation
    field :work, Types::WorkType, null: false

    argument :content, String, required: true

    def resolve(**params)
      work = Work.create!(params)
      { work: work }
    end
  end
end
