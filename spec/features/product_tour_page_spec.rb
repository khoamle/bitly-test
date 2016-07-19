require 'rails_helper'

describe 'Product tour page' do
  before do
    @product_tour_page = ProductTourPage.new
    @product_tour_page.load
  end

  it 'should see top section on product tour page' do
    expect(@product_tour_page).to have_css('.centered', text: 'UNLEASH THE POWER OF THE LINK')
    expect(@product_tour_page).to have_css('.short', text: 'SHORTEN')
    expect(@product_tour_page).to have_css('.short', text: 'SHARE')
    expect(@product_tour_page).to have_css('.short', text: 'MEASURE')
  end

  it 'should take me to the share link section' do
    @product_tour_page.share_link.click
    expect(@product_tour_page.current_url).to include "/tour#tour-share"
  end

  it 'should take me to the shorten link section' do
    @product_tour_page.shorten_link.click
    expect(@product_tour_page.current_url).to include "/tour#tour-shorten"
  end

  it 'should take me to the measure link section' do
    @product_tour_page.measure_link.click
    expect(@product_tour_page.current_url).to include "/tour#tour-measure"
  end
end
