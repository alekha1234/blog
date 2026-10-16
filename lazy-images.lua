-- Native lazy loading for images (notebook plots included): the browser fetches
-- them only as the reader scrolls near, so text renders first. The first image on
-- a page is left eager because it may be visible on load.
-- ponytail: no width/height reserved, so a plot may shift content if it loads in view;
-- add PNG dimensions here if CLS ever shows up in PageSpeed.

local count = 0

function Image(img)
  count = count + 1
  if count > 1 and not img.attributes.loading then
    img.attributes.loading = "lazy"
  end
  if not img.attributes.decoding then
    img.attributes.decoding = "async"
  end
  return img
end
