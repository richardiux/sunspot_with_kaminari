require 'sunspot'

module SunspotWithKaminari
  module Search
    module AbstractSearchInstanceMethods
      # ==== Returns
      #
      # Integer:: Current page number
      #
      def current_page
        @query.page
      end

      # ==== Returns
      #
      # Integer:: Total number of pages for matching documents
      #
      def total_pages
        (total.to_f / @query.per_page).ceil
      end

      # ==== Returns
      #
      # Integer:: Number of records displayed per page
      #
      def limit_value
        @query.per_page || Kaminari.config.default_per_page
      end

      def empty?
        total == 0
      end

      def any?
        total > 0
      end

      def page(current_page)
        query.paginate(current_page, nil)
        self.execute.results
      end
    end
  end
end

Sunspot::Search::AbstractSearch.send(:include, SunspotWithKaminari::Search::AbstractSearchInstanceMethods)
