class CreateLoginPage < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'LoginPage',
      type: 'publication',
      title: 'Page: Login',
      attributes: [
        {:name=>"headline", :type=>:string, :title=>"Headline"},
        {:name=>"content", :type=>:html, :title=>"Content"},
        {:name=>"show_in_navigation", :type=>:enum, :title=>"Show in Navigation", :values=>["Yes", "No"]},
        {:name=>"sort_key", :type=>:string, :title=>"Sort key"},
      ],
      preset_attributes: {},
      mandatory_attributes: []
    )
  end
end