class CreateErrorPage < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'ErrorPage',
      type: 'publication',
      title: 'Page: Error',
      attributes: [
        {:name=>"headline", :type=>:string, :title=>"Headline"},
        {:name=>"content", :type=>:html, :title=>"Content"},
        {:name=>"show_in_navigation", :type=>:enum, :title=>"Show in Navigation", :values=>["Yes", "No"]},
      ],
      preset_attributes: {},
      mandatory_attributes: []
    )
  end
end