## sunspot_with_kaminari

sunspot_with_kaminari extends sunspot to have the required methods for pagination with kaminari.

### Installation & Usage

on `Gemfile`

      gem 'kaminari'
      gem "sunspot_rails"
      gem "sunspot_with_kaminari", '~> 0.2.0'
      
on the controller

      @products ||= Product.search do
        keywords params[:search]
        paginate :page => params[:page], :per_page => 20
      end
      
on the view you want to do something like this:
      
      <ul>
        <% @products.results.each do |product| %>
        <li><%= product.name %></li>
        <% end %>
      </ul>
      
      <%= paginate @products, :window => 1 %>
      
to display current page and total pages information you can use:

      <%= page_entries_info @products, :entry_name => 'product' %>