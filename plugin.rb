# name: discourse-sanitize-header-tag
# author: Joe Buhlig
# about: Strips the header markdown conversion
# version: 0.1
# author: Joe Buhlig joebuhlig.com
# url: https://www.github.com/ha-tech/discourse-sanitize-header-tag

module ::PrettyText
  module PrettyTextExtension
    def markdown(text, opts = {})
      original = super(text, opts)

      original.gsub! "<h1>", "&lt;h1&gt;"
      original.gsub! "<h2>", "&lt;h2&gt;"
      original.gsub! "<h3>", "&lt;h3&gt;"
      original.gsub! "<h4>", "&lt;h4&gt;"
      original.gsub! "<h5>", "&lt;h5&gt;"
      original.gsub! "<h6>", "&lt;h6&gt;"

      original.gsub! "</h1>", "&lt;\/h1&gt;<br>"
      original.gsub! "</h2>", "&lt;\/h2&gt;<br>"
      original.gsub! "</h3>", "&lt;\/h3&gt;<br>"
      original.gsub! "</h4>", "&lt;\/h4&gt;<br>"
      original.gsub! "</h5>", "&lt;\/h5&gt;<br>"
      original.gsub! "</h6>", "&lt;\/h6&gt;<br>"

      original
    end
  end
  singleton_class.prepend PrettyTextExtension
end