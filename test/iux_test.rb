# frozen_string_literal: true

require "test_helper"

class IuxTest < ActiveSupport::TestCase
  test "Components::Error class is defined" do
    assert defined?(Iux::Error)
  end

  test ".components_path returns the components root path" do
    assert_equal Rails.root.join("app", "components"), Iux.components_path
  end

end
