module ApplicationHelper
  def control_group
    content_tag :div, :class => 'control-group' do
      yield
    end
  end

  def controls
    content_tag :div, :class => 'controls' do
      yield
    end
  end
end
