class CreateRoot < ::RailsConnector::Migration
  def up
    create_obj_class(
      name: 'Root',
      type: 'publication',
      title: 'Root',
      attributes: [
      ],
      preset_attributes: {},
      mandatory_attributes: []
    )
  end
end