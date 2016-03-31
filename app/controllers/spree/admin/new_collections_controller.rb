module Spree
  module Admin
    class NewCollectionsController < ResourceController
      def index
        @new_collections = Spree::NewCollection.page(params[:page] || 1).per(50)
      end
    end
  end
end
