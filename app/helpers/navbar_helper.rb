module NavbarHelper
  def set_bg_color
    case "#{params[:action]}##{params[:controller]}"
    when 'show#books' then 'show-color'
    when 'index#books' then 'index-color'
    when 'dashboard#books' then 'dashboard-color'
    when 'home#books' then 'home-color'
    when 'new#payments' then 'checkout-color'
    when 'show#orders' then 'confirmation-color'
    when 'show#personalizations' then 'personalization-color'
    else
      ''
    end
  end
end
