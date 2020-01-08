# frozen_string_literal: true

require "test_helper"

class Iux::ComponentTest < ActiveSupport::TestCase
  test "initialize with nothing" do
    component_class = Class.new(Iux::Component)
    component = component_class.new(view_class.new)
    assert_nil component.to_s
  end

  test "initialize with block" do
    component_class = Class.new(Iux::Component)
    component = component_class.new(view_class.new) { "foo" }
    assert_equal "foo", component.to_s
  end


  private

  def view_class
    Class.new do
      def capture(element)
        yield(element)
      end
    end
  end
end
