class Api::V1::ProductsController < Api::V1::BaseController
  def index
    @products = policy_scope(Product)
    if @products.empty?
      get_bovespa_data
      cleaning_blank_data
    end
  end

  def show
  end

  def create
    @product = Product.new(product_params)
    authorize @product
    if @product.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
  end

  def destroy
    @product = Product.find(params[:id])
    authorize @product
    @product.destroy
  end

  private

  def product_params
    params.require(:product).permit(
      :name, 
      :price, 
      :max_price, 
      :min_price, 
      :percent_change
    )
  end

  def find_product
    @product = Product.find(params[:id])
  end

  def get_bovespa_data
    require 'nokogiri'
    require 'open-uri'

    url = './app/services/scraper/bovespa.html'
    doc = Nokogiri::HTML(open(url))
    
    doc.css('tbody tr').map do |row|
      next if row.css('td').length < 5
      stock = Product.create!(
          :name => row.css('td')[1].text.strip,
          :price => row.css('td')[2].text.strip,
          :max_price => row.css('td')[3].text.strip,
          :min_price => row.css('td')[4].text.strip,
          :percent_change => row.css('td')[5].text.strip
      )
    end
  end

  def cleaning_blank_data
    @products.each do |product|
      if product.name == " " || product.name.blank? === true
        product.destroy!
      end
    end
  end

end