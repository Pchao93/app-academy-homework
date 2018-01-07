module ApplicationHelper

  def error_helper
    html = <<-HTML
    <% if flash[:errors] %>
      <% flash[:errors].each do |error| %>
        <%= error %>
      <% end %>
    <% end %>
    HTML
    # html.html_safe
  end

  def form_authenticity
    html = <<-HTML <input
            type="hidden"
            name="authenticity_token"
            value="form_authenticity_token">
    HTML
    html.html_safe
  end
end
