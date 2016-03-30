module Spree
  module Admin
    class InfosController < ResourceController
      def index
        @infos = Spree::Info.page(params[:page] || 1).per(50)
      end
    end
  end
end
