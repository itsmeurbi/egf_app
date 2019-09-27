module WizardHelper
  def track_data
    @tracks.collect do |track|
      [track.name, track.id, { 'data-category-id' => track.category_id }]
    end
  end

  def milestone_data
    @milestones.collect do |milestone|
      [description(milestone), milestone.id, data_attributes(milestone)]
    end
  end

  def categories_data
    @categories.collect do |category|
      [category.name, category.id]
    end
  end

  def description(milestone)
    'Level ' + milestone.level.to_s + ' ' + milestone.description.to_s
  end

  def data_attributes(milestone)
    { 'data-category-id' => milestone.track.category_id, 'data-track-id' => milestone.track_id }
  end

  def category_id
    @goal&.milestone&.track&.category_id
  end

  def track_id
    @goal&.milestone&.track_id
  end
end
