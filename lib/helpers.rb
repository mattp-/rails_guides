module Guides
  module Versions
    def available_versions
      Dir['public/[1-9].[0-9].[0-9]'].map { |dir| dir.delete("public/") }
    end
  end
end

module Sinatra::Partials
  def partial(template, options = {})
    options.merge!(:layout => false)
    erb(:"#{template}", options)
  end
end