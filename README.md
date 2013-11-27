## sunspot_with_kaminari

### Sunspot now supports kaminari and this gem is no longer necessary

A basic example on how to paginate with sunspot's buit-in support for kaminari:

```ruby
# controller
@results = Post.search do
  fulltext "pizza"
  paginate page: params[:page], per_page: 20
end.results

# views
<%= paginate @results, theme: "bootstrap" %>
```

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
