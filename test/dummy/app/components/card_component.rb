# frozen_string_literal: true

class CardComponent < Iux::Component
  attribute :id
  element :header
  element :section, multiple: true do
    attribute :size
    element :header
  end
  element :footer
end
