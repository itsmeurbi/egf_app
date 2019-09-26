module BreadcrumbHelper
  def category_name(goal)
    goal.milestone.track.category.name.titleize
  end

  def track_name(goal)
    goal.milestone.track.name.titleize
  end

  def level(goal)
    goal.milestone.level
  end
end
