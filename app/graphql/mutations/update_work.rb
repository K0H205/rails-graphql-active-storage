module Mutations
  class UpdateWork < Mutations::BaseMutation
    field :work, Types::WorkType, null: false
    argument :params, Types::Inputs::WorkInputType, required: true

    def resolve(params:)
      work_params = params.to_h
      work = Work.find(work_params.delete(:id))
      work.update!(work_params.compact)
      { work: work }
    end
  end
end
