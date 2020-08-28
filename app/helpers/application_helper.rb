module ApplicationHelper
  def matching_color(rate)
    if rate >= 75
      "badge-success"
    elsif rate > 25
      "badge-warning"
    else
      "badge-danger"
    end
  end
end
