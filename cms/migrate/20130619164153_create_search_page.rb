class CreateSearchPage < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'SearchPage',
      type: 'publication',
      title: 'Page: Search',
      attributes: [
        {:name=>"show_in_navigation", :type=>:enum, :title=>"Show in navigation", :values=>["Yes", "No"]},
      ],
      preset_attributes: {},
      mandatory_attributes: []
    )
  end
end