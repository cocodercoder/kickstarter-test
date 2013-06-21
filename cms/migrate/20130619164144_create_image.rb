class CreateImage < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'Image',
      type: 'generic',
      title: 'Resource: Image',
      attributes: [
        {:name=>"headline", :type=>:string, :title=>"Headline"},
      ],
      preset_attributes: {},
      mandatory_attributes: []
    )
  end
end