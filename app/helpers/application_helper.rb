module ApplicationHelper
  def div(options = {})
    options.reverse_merge!(:class => [])
    options[:class] = [options[:class]] unless options[:class].is_a?(Array)
    content_tag :div, :class => options[:class].join(' ') do
      yield
    end
  end

  def control_group(options = {})
    options[:class] = ['control-group', options[:class]]
    div options do
      yield
    end
  end

  def controls(options = {})
    options[:class] = ['controls', options[:class]]
    div options do
      yield
    end
  end

  def columns(width = 12, options = {})
    options[:class] = ["span#{width}", options[:class]]
    div options do
      yield
    end
  end

  def row(options = {})
    options[:class] = ["row", options[:class]]
    div options do
      yield
    end
  end
end
