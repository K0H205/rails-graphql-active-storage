module Types
  class MutationType < Types::BaseObject
    field :create_work, mutation: Mutations::CreateWork
    field :update_work, mutation: Mutations::UpdateWork
    field :upload_work_item_image, mutation: Mutations::UploadWorkItemImage
  end
end
