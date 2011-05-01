## sunspot_with_kaminari

sunspot_with_kaminari extends sunspot to have the required methods for pagination with kaminari.

### Installation & Usage

on `Gemfile`

      gem 'kaminari'
      gem "sunspot_rails"
      gem "sunspot_with_kaminari", '~> 0.1'
      
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