# frozen_string_literal: true

class CommentComponent < Iux::Component
  attribute :comment

  delegate :user,
           :body, to: :comment
end
