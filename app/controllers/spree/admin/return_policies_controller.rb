module Spree
  module Admin
    class ReturnPoliciesController < ResourceController
      def index
        @return_policies = Spree::ReturnPolicy.page(params[:page] || 1).per(50)
      end
    end
  end
end
