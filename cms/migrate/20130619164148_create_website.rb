class CreateWebsite < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'Website',
      type: 'publication',
      title: 'Website',
      attributes: [
      ],
      preset_attributes: {},
      mandatory_attributes: []
    )
  end
end