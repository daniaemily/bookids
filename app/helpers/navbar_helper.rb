module NavbarHelper
  def set_bg_color
    case params[:action]
    when 'show' then 'show-color'
    when 'index' then 'index-color'
    when 'dashboard' then 'dashboard-color'
    when 'home' then 'home-color'
    else
      ''
    end
  end
end
