class CreateVideo < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'Video',
      type: 'generic',
      title: 'Resource: Video',
      attributes: [
        {:name=>"headline", :type=>:string, :title=>"Headline"},
      ],
      preset_attributes: {},
      mandatory_attributes: []
    )
  end
end