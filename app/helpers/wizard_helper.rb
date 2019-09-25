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

  def description(milestone)
    "#{'Level ' + milestone.level + ' ' + milestone.description}"
  end

  def data_attributes(milestone)
    { 'data-category-id' => milestone.track.category_id, 'data-track-id' => milestone.track_id }
  end
end
