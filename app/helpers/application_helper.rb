module ApplicationHelper
  def matching_color(rate)
    if rate >= 71
      "badge-success p-2"
    elsif rate > 25
      "badge-warning p-2"
    else
      "badge-danger p-2"
    end
  end
end
