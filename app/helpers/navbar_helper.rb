module NavbarHelper
  def set_bg_color
    case "#{params[:action]}##{params[:controller]}"
    when 'show#books' then 'show-color'
    when 'index#books' then 'index-color'
    when 'dashboard#books' then 'dashboard-color'
    when 'new#payments' then 'checkout-color'
    when 'show#orders' then 'confirmation-color'
    when 'show#personalizations' then 'personalization-color'
    when 'new#reviews' then 'review-color'
    when 'devise/sessions#new' then 'dashboard-color'
    when 'devise/registrations#new' then 'dashboard-color'
    when 'devise/passwords#new' then 'dashboard-color'
    else
      ''
    end
  end
end
