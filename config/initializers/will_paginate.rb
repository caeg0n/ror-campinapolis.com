# Spree::Product::ActiveRecord_Relation.include Kaminari::PageScopeMethods
#   Spree::Admin::ZonesController.class_eval do
#    def collection
#      params[:q] ||= {}
#      params[:q][:s] ||= "ascend_by_name"
#       if defined?(WillPaginate)
#        params[:per_page] ||= Spree::Zone.per_page
#      end
#      @search = super.ransack(params[:q])
#      @zones = @search.result.page(params[:page]).per(params[:per_page])
#    end
#  end

 if defined?(WillPaginate)
    module WillPaginate
      module ActiveRecord
        module RelationMethods
          def per(value = nil) per_page(value) end
          def total_count() count end
          def first_page?() self == first end
          def last_page?() self == last end
        end
      end
      module CollectionMethods
        alias_method :num_pages, :total_pages
        alias_method :total_pages, :num_pages
      end
    end
 end