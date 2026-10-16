-- Track articles (pages with `track` from the folder's _metadata.yml and `order` >= 1):
--   * sets `track-eyebrow` ("Time Series Track · Part 1 of 2"), shown above the title by
--     _partials/title-block.html and linked to the track roadmap;
--   * appends the follow card to the end of the article.

local function follow_card()
  return pandoc.RawBlock("html", [[
<section class="follow-card" aria-label="Follow the blog">
  <p class="follow-card-title">Get new notebooks as they're published</p>
  <p class="follow-card-text">New parts are added to each track in order. Follow along:</p>
  <div class="follow-card-actions">
    <a class="btn-ui btn-ui-secondary" href="https://alekha1234.github.io/blog/index.xml">RSS feed</a>
    <a class="btn-ui btn-ui-ghost" href="https://www.linkedin.com/in/gujuri-alekha/">LinkedIn</a>
    <a class="btn-ui btn-ui-ghost" href="https://github.com/alekha1234/blog">GitHub</a>
  </div>
</section>]])
end

function Pandoc(doc)
  local meta = doc.meta
  local order = tonumber(meta.order and pandoc.utils.stringify(meta.order))
  if not meta.track or not order or order < 1 or not quarto.doc.is_format("html") then
    return nil
  end

  local dir = pandoc.path.directory(quarto.doc.input_file)
  local total = 0
  for _, name in ipairs(pandoc.system.list_directory(dir)) do
    if name:match("%.ipynb$") then total = total + 1 end
  end

  meta["track-eyebrow"] = pandoc.Inlines(string.format("%s Track · Part %d of %d",
    pandoc.utils.stringify(meta.track), order, total))
  doc.blocks:insert(follow_card())
  return doc
end
