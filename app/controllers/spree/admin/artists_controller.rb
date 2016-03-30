module Spree
  module Admin
    class ArtistsController < ResourceController
      def index
        @artists = Spree::Artist.page(params[:page] || 1).per(50)
      end
    end
  end
end
