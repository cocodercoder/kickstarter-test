class ImageWidget < Obj
  cms_attribute :headline, type: :string
  cms_attribute :caption, type: :string
  cms_attribute :background_color, type: :string
  cms_attribute :source, type: :linklist, max_size: 1

  # Most CMS objects are either a page or a box. In order for them to
  # have common behavior, uncomment one of the following lines.
  # include Page
  include Widget
end