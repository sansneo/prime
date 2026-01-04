# Do not load the autoconfig
config.load_autoconfig(False)

## Agent
firefox_ua = 'Mozilla/5.0 ({os_info}; rv:135.0) Gecko/20100101 Firefox/135'
google_tlds = [
    'com', 'co.uk', 'de', 'fr', 'it', 'es', 'ca', 'com.au', 
    'nl', 'co.jp', 'com.br', 'ru', 'co.in', 'com.mx', 'ch',
    'se', 'no', 'dk', 'fi', 'ie', 'co.nz', 'com.hk', 'sg'
]
for tld in google_tlds:
    config.set('content.headers.user_agent', firefox_ua, f'https://*.google.{tld}/*')

# Behaviour
## Completion
c.completion.open_categories = ["quickmarks", "searchengines"]
## Tabs
c.tabs.wrap = True
c.tabs.show = "always"
c.tabs.mousewheel_switching = False
## Hints
c.hints.find_implementation = "javascript"
c.hints.auto_follow = "never"
c.hints.mode = "letter"
c.hints.chars = "asdf"
## Search
c.search.incremental = True
c.search.ignore_case = "always"
c.search.wrap = True
## Status
c.statusbar.show = "in-mode"
c.messages.timeout = 10
c.statusbar.widgets = ["progress", "search_match", "tabs", "scroll", "url"]
c.statusbar.padding = {"bottom": 2, "left": 0, "right": 2, "top": 0}
c.tabs.position = "top"
## Modes
c.input.insert_mode.auto_load = False
c.input.insert_mode.auto_enter = True
c.input.insert_mode.auto_leave = False
c.input.mode_override = "normal"
## Bindings
### Navigation
config.bind('ge', 'scroll-to-perc 100')
config.bind('<Shift-J>', 'tab-prev')
config.bind('<Shift-K>', 'tab-next')
config.bind('gJ', 'tab-move -', mode='normal')
config.bind('gK', 'tab-move +', mode='normal')
### Caret
config.bind('x', 'move-to-next-line', mode='caret')
### Passthrough
config.bind('<Shift-Space>', 'mode-enter passthrough')
config.bind('<Shift-Space>', 'mode-leave', mode='passthrough')
config.bind('<Shift-Escape>', 'nop')
config.bind('<Ctrl-v>', 'nop')

# Fonts
c.fonts.default_family = "JetBrainsMono"
c.fonts.default_size = "12pt"
c.fonts.tabs.selected = "600 default_size default_family"
c.fonts.tabs.unselected = "600 default_size default_family"
c.fonts.completion.category = "600 default_size default_family"
c.fonts.completion.entry = "600 default_size default_family"
c.fonts.prompts = "600 default_size default_family"
c.fonts.statusbar = "600 default_size default_family"

# Appearance
## Completion
c.colors.completion.even.bg = "#000000"
c.colors.completion.odd.bg = "#000000"
### Category
c.colors.completion.category.bg = "#4ad66d"
c.colors.completion.category.border.bottom = "#000000"
c.colors.completion.category.border.top = "#000000"
c.colors.completion.category.fg = "#000000"
### Selected
c.colors.completion.item.selected.bg = "#ffffff"
c.colors.completion.item.selected.fg = "#000000"
c.colors.completion.item.selected.border.bottom = "#000000"
c.colors.completion.item.selected.border.top = "#000000"
### Match
c.colors.completion.match.fg = "#ff5555"
c.colors.completion.item.selected.match.fg = "#000000"
## Scroll
c.colors.completion.scrollbar.bg = "#000000"
c.colors.completion.scrollbar.fg = "#ffffff"
c.completion.scrollbar.padding = 0
c.completion.scrollbar.width = 4
## Tabs
c.colors.tabs.even.bg = "#000000"
c.colors.tabs.even.fg = "#ffffff"
c.colors.tabs.odd.bg = "#000000"
c.colors.tabs.odd.fg = "#ffffff"
c.colors.tabs.selected.even.bg = "#ffffff"
c.colors.tabs.selected.even.fg = "#000000"
c.colors.tabs.selected.odd.bg = "#ffffff"
c.colors.tabs.selected.odd.fg = "#000000"
### Pinned
c.colors.tabs.pinned.odd.bg = "#000000"
c.colors.tabs.pinned.odd.fg = "#ffff55"
c.colors.tabs.pinned.even.bg = "#ffff55"
c.colors.tabs.pinned.even.fg = "#000000"
c.colors.tabs.pinned.selected.odd.bg = "#ffff55"
c.colors.tabs.pinned.selected.odd.fg = "#000000"
c.colors.tabs.pinned.selected.even.bg = "#ffff55"
c.colors.tabs.pinned.selected.even.fg = "#000000"
### Title
c.tabs.indicator.width = 3
c.colors.tabs.indicator.start = "#ff5555"
c.colors.tabs.indicator.stop = "#ff5555"
c.tabs.favicons.show = "never"
c.tabs.title.alignment = "left"
c.tabs.title.format = "{audio}{current_title}"
c.tabs.title.format_pinned = "{audio}{current_title}"
## Hints
c.colors.hints.bg = "#ffffff"
c.colors.hints.fg = "#000000"
c.colors.hints.match.fg = "#ff5555"
c.hints.border = "1px solid #000000"
c.hints.radius = 0
## Prompt
c.colors.prompts.border = "0px solid #000000"
c.prompt.radius = 0
## Statusbar
c.colors.statusbar.url.error.fg = "#ff5555"
c.colors.statusbar.url.warn.fg = "#ffff55"
c.colors.statusbar.url.success.http.fg = "#ffffff"
c.colors.statusbar.url.success.https.fg = "#ffffff"
### Modes
c.colors.statusbar.insert.fg = "#ffffff"
c.colors.statusbar.insert.bg = "#000000"

# Content
c.content.autoplay = False
c.content.cookies.accept = "no-unknown-3rdparty"
c.content.javascript.enabled = True
c.content.javascript.clipboard = "access-paste"
c.colors.webpage.preferred_color_scheme = "dark"
## Blocking
c.content.blocking.method = "both"
c.content.blocking.adblock.lists = [
    "https://easylist.to/easylist/easylist.txt",
    "https://easylist.to/easylist/easyprivacy.txt",
    "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling/hosts"
]
## Downloads
c.downloads.location.prompt = True
c.downloads.position = "bottom"
c.downloads.remove_finished = 0
# Session
c.auto_save.session = True
c.url.start_pages = [ "https://github.com/sansneo/prime" ]
c.url.default_page = "https://google.com"
c.url.searchengines = {
    "DEFAULT": "https://google.com/search?q={}",
    "translate": "https://translate.google.com/?sl=auto&tl=en&text={}&op=translate",
    "youtube": "https://youtube.com/results?search_query={}",
    "episode": "https://next-episode.net/search?search={}",
    "wikipedia": "https://en.wikipedia.org/wiki/{}",
    "meaning": "https://wordhippo.com/what-is/the-meaning-of-the-word/{}.html",
    "synonym": "https://wordhippo.com/what-is/another-word-for/{}.html",
    "pkgsite": "https://pkg.go.dev/search?q={}",
    "pypi": "https://pypi.org/search/?q={}",
    "hex": "https://packages.gleam.run/?search={}"
}
