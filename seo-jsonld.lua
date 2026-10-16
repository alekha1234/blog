-- Adds schema.org BlogPosting JSON-LD to article pages (any page with a `date`).
-- The homepage carries the Blog/WebSite/Person graph itself (index.qmd).

local SITE = "https://alekha1234.github.io/blog/"
local PERSON = "https://alekha1234.github.io/gujurialekha.github.io/#person"

local function json_str(s)
  s = s:gsub('[%c"\\]', function(c)
    if c == '"' then return '\\"' end
    if c == '\\' then return '\\\\' end
    return string.format('\\u%04x', c:byte())
  end)
  return '"' .. s:gsub("</", "<\\/") .. '"'
end

-- Quarto has already applied `date-format: "MMM D, YYYY"` (_quarto.yml) by the
-- time filters run, so turn "Oct 15, 2026" back into ISO 8601 for schema.org.
local MONTHS = {Jan=1, Feb=2, Mar=3, Apr=4, May=5, Jun=6, Jul=7, Aug=8, Sep=9, Oct=10, Nov=11, Dec=12}
local function iso_date(s)
  local y, m, d = s:match("^(%d%d%d%d)-(%d%d)-(%d%d)")
  if y then return y .. "-" .. m .. "-" .. d end
  local mon, day, year = s:match("^(%a+) (%d+), (%d%d%d%d)")
  if mon and MONTHS[mon] then return string.format("%s-%02d-%02d", year, MONTHS[mon], tonumber(day)) end
  return s
end

function Meta(meta)
  if not meta.date or not quarto.doc.is_format("html") then return end

  local rel = pandoc.path.make_relative(quarto.doc.input_file, quarto.project.directory)
  local url = SITE .. rel:gsub("\\", "/"):gsub("%.%w+$", ".html"):gsub(" ", "%%20")

  local keywords = {}
  for _, c in ipairs(meta.categories or {}) do
    table.insert(keywords, pandoc.utils.stringify(c))
  end

  local fields = {
    '"@context": "https://schema.org"',
    '"@type": "BlogPosting"',
    '"headline": ' .. json_str(pandoc.utils.stringify(meta.title or "")),
    '"description": ' .. json_str(pandoc.utils.stringify(meta.description or "")),
    '"datePublished": ' .. json_str(iso_date(pandoc.utils.stringify(meta.date))),
    '"url": ' .. json_str(url),
    '"mainEntityOfPage": ' .. json_str(url),
    '"image": ' .. json_str(SITE .. "images/profile.png"),
    '"keywords": ' .. json_str(table.concat(keywords, ", ")),
    '"inLanguage": "en-US"',
    '"author": {"@type": "Person", "@id": ' .. json_str(PERSON) .. ', "name": "Gujuri Alekha", "url": "https://alekha1234.github.io/gujurialekha.github.io/"}',
    '"isPartOf": {"@type": "Blog", "@id": ' .. json_str(SITE .. "#blog") .. ', "name": "Gujuri Alekha | Blog", "url": ' .. json_str(SITE) .. '}',
  }
  quarto.doc.include_text("in-header",
    '<script type="application/ld+json">\n{' .. table.concat(fields, ",\n ") .. '}\n</script>')
end
