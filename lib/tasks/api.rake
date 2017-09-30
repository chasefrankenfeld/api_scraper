namespace :scraper do

  desc "Download the api data to the database"
  task scrape: :environment do
    require 'open-uri'
    require 'json'

    # Set up the API
    base_api = 'http://wp8m3he1wt.s3-website-ap-southeast-2.amazonaws.com'
    api_ext = '/api/products/1'
    url = base_api + api_ext

    # Store data to the database
    while api_ext
      # Submit a request
      uri = URI.parse(url)
      # Submit request
      result = JSON.parse(open(uri).read)
      result['objects'].each do |item|

        # Create a new item
        @item = Item.new
        @item.category = item['category']
        @item.title = item['title']
        @item.width = item['size']['width'] if item['size']['width']
        @item.length = item['size']['length'] if item['size']['length']
        @item.height = item['size']['height'] if item['size']['height']
        @item.cubic_weight = ((@item.width / 100) * (@item.length / 100) * (@item.height / 100)) * 250 if @item.width && @item.length && @item.height

        # Save item
        @item.save
      end
      api_ext = result['next']
      url = base_api + api_ext if api_ext
    end
  end

  desc "Destroy all product data"
  task destroy_all_items: :environment do
    Item.destroy_all
  end

end
