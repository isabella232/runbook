module Runbook
  module Sections
    def section(title, &block)
      Section.new(title).tap do |section|
        items << section
        section.instance_eval(&block)
      end
    end
  end

  Runbook::Book.prepend(Sections)
end