class ProductTourPage < SitePrism::Page
  set_url "/pages/tour"

  element :share_link, '#share-anchor'
  element :shorten_link, '#shorten-anchor'
  element :measure_link, '#measure-anchor'
end
