module Spree
  module Admin
    class NewslettersController < ResourceController
      def index
        @newsletters = Spree::Newsletter.page(params[:page] || 1).per(50)
      end
    end
  end
end
