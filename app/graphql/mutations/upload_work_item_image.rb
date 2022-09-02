module Mutations
  class UploadWorkItemImage < BaseMutation
    argument :work_id, Int, required: true
    argument :image, ApolloUploadServer::Upload, required: true

    field :work_item, Types::WorkItemType, null: false

    type Types::WorkItemType

    def resolve(work_id:, image:)
      work = Work.find(work_id)
      work_item = work.work_items.create!
      work_item.image.attach(io: image.to_io, filename: image.original_filename)
      { work_item: work_item }
    end
  end
end
