module Types
  module Inputs
    class WorkInputType < Types::BaseInputObject
      argument :id, Int, required: true
      argument :content, String, required: false
    end
  end
end
