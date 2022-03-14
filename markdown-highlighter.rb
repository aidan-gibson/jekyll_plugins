# Turns ==something== in Markdown to <mark>something</mark> in output HTML
Jekyll::Hooks.register [:posts], :post_convert do |page|
  page.content.gsub!(/==+(\w(.*?)?[^ .=]?)==+/, "<mark>\\1</mark>")
end
