class CreateContentPage < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'ContentPage',
      type: 'publication',
      title: 'Page: Content',
      attributes: [
        {:name=>"headline", :type=>:string, :title=>"Headline"},
        {:name=>"show_in_navigation", :type=>:enum, :title=>"Show in Navigation", :values=>["Yes", "No"]},
        {:name=>"sort_key", :type=>:string, :title=>"Sort key"},
        {:name=>"main_content", :type=>:widget, :title=>"Main content"},
        {:name=>"sidebar_content", :type=>:widget, :title=>"Sidebar content"},
      ],
      preset_attributes: {},
      mandatory_attributes: []
    )
  end
end