# Do not load the autoconfig
config.load_autoconfig(False)

# Fonts
c.fonts.default_family = "JetBrainsMono"
c.fonts.default_size = "11pt"

# Completion
c.colors.completion.even.bg = "#000000"
c.colors.completion.odd.bg = "#000000"
## Category
c.colors.completion.category.bg = "#4ad66d"
c.colors.completion.category.border.bottom = "#000000"
c.colors.completion.category.border.top = "#000000"
c.colors.completion.category.fg = "#000000"
c.completion.open_categories = ["searchengines", "quickmarks", "history"]
## Selected
c.colors.completion.item.selected.bg = "#5555ff"
c.colors.completion.item.selected.border.bottom = "#000000"
c.colors.completion.item.selected.border.top = "#000000"
c.colors.completion.item.selected.fg = "#ffffff"
c.colors.completion.item.selected.match.fg = "#ff5555"
## Match
c.colors.completion.match.fg = "#ff5555"
## Scroll
c.colors.completion.scrollbar.bg = "#000000"
c.colors.completion.scrollbar.fg = "#ffffff"
c.completion.scrollbar.padding = 0
c.completion.scrollbar.width = 4
c.scrolling.bar = "overlay"
c.scrolling.smooth = True

# Search
c.search.incremental = True
c.search.ignore_case = "always"
c.search.wrap = True

# Tabs
c.colors.tabs.bar.bg = "#000000"
c.colors.tabs.even.bg = "#000000"
c.colors.tabs.even.fg = "#ffffff"
c.colors.tabs.odd.bg = "#000000"
c.colors.tabs.odd.fg = "#ffffff"
c.tabs.indicator.width = 0
c.tabs.favicons.scale = 0.8
c.tabs.title.alignment = "left"
c.tabs.title.format = "{audio}{current_title}"
c.tabs.title.format_pinned = "{audio}{current_title}"
c.tabs.position = "top"
## Pinned
c.colors.tabs.pinned.odd.bg = "#000000"
c.colors.tabs.pinned.odd.fg = "#ffff55"
c.colors.tabs.pinned.even.bg = "#ffff55"
c.colors.tabs.pinned.even.fg = "#000000"
c.colors.tabs.pinned.selected.odd.bg = "#ffff55"
c.colors.tabs.pinned.selected.odd.fg = "#000000"
c.colors.tabs.pinned.selected.even.bg = "#ffff55"
c.colors.tabs.pinned.selected.even.fg = "#000000"
## Selected
c.colors.tabs.selected.even.bg = "#ffffff"
c.colors.tabs.selected.even.fg = "#000000"
c.colors.tabs.selected.odd.bg = "#ffffff"
c.colors.tabs.selected.odd.fg = "#000000"
## Behaviour
c.tabs.wrap = True
c.tabs.show = "always"
c.tabs.mousewheel_switching = False

# Prompt
c.colors.prompts.border = "0px solid #000000"
c.prompt.radius = 0

# Statusbar
c.colors.statusbar.insert.fg = "#4ad66d"
c.colors.statusbar.insert.bg = "#000000"
c.statusbar.show = "in-mode"
c.statusbar.padding = {"bottom": 2, "left": 0, "right": 0, "top": 2}
c.messages.timeout = 40

# Content
c.content.javascript.enabled = True
c.content.javascript.clipboard = "access-paste"
c.content.cookies.accept = "no-unknown-3rdparty"
c.content.autoplay = False
c.colors.webpage.preferred_color_scheme = "dark"
c.content.blocking.method = "both"
c.content.blocking.adblock.lists = [
    "https://big.oisd.nl", "https://easylist.to/easylist/easylist.txt",
    "https://easylist.to/easylist/easyprivacy.txt",
    "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-social/hosts"
]
c.downloads.location.prompt = False
c.downloads.location.suggestion = "both"
c.downloads.position = "bottom"

# Session
c.auto_save.session = True
c.url.start_pages = ["https://google.com"]
c.url.default_page = "https://google.com"
c.url.searchengines = {
    "DEFAULT": "https://google.com/search?q={}",
    "youtube": "https://youtube.com/results?search_query={}",
    "episode": "https://next-episode.net/search?search={}",
    "wiki": "https://en.wikipedia.org/wiki/{}",
    "word": "https://wordhippo.com/what-is/the-meaning-of-the-word/{}.html",
    "pkgsite": "https://pkg.go.dev/search?q={}",
    "pypi": "https://pypi.org/search/?q={}",
    "hex": "https://packages.gleam.run/?search={}",
}

# Bindings
config.bind('ge', 'scroll-to-perc 100')
config.bind('<Shift-J>', 'tab-prev')
config.bind('<Shift-K>', 'tab-next')
