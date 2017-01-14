module ApplicationHelper
  def breadcrumb(params={})
    parts = (params[:url] || url_for).split('/')[1..-1]
    lastPart = parts[parts.length-1];
    parts[parts.length-1] = lastPart.gsub(/\?.*/) { |match| "" } # remove url param
    divider = " <span class='divider'>/</span> ".html_safe
    content_tag :ul, class: "fil_arianne #{params[:class]}", style: "#{params[:style]}" do
      html = content_tag(:li) {link_to('Accueil', :root)}
      (0..parts.length-1).map do |index|
        html << divider << content_tag(:li) do
          text = (params[:parts].andand[index].andand[0] || params[:labels].andand[index] || I18n.t("breadcrumb.#{parts[index]}", default: "#{parts[index].capitalize}"))
          if params[:clickable].andand[index] == false || index == parts.length-1
            text
          else
            link_to text, (params[:parts].andand[index].andand[1] || "/#{parts[0..index].join('/')}")
          end
        end
      end
      html.html_safe
    end
  end
end
