# Do not load the autoconfig
config.load_autoconfig(False)

# Fonts
c.fonts.default_family = "JetBrainsMono"
c.fonts.default_size = "11pt"
c.fonts.tabs.selected = "bold 11pt JetBrainsMono"
c.fonts.tabs.unselected = "bold 11pt JetBrainsMono"

# Completion
c.colors.completion.even.bg = "#000000"
c.colors.completion.odd.bg = "#000000"
## Category
c.colors.completion.category.bg = "#55ff55"
c.colors.completion.category.border.bottom = "#000000"
c.colors.completion.category.border.top = "#000000"
c.colors.completion.category.fg = "#000000"
c.completion.open_categories = ["searchengines", "quickmarks", "history", "filesystem"]
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
c.tabs.position = "right"
c.tabs.width = "17%"
c.tabs.padding = {"top": 2, "bottom": 2, "left": 5, "right": 3}
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
# Bindings
config.bind("tt", "config-cycle tabs.show always never")

# Prompt
c.colors.prompts.border = "0px solid #000000"
c.prompt.radius = 0

# Statusbar
c.colors.statusbar.insert.fg = "#55ff55"
c.colors.statusbar.insert.bg = "#000000"
c.statusbar.show = "in-mode"
c.statusbar.padding = {"bottom": 2, "left": 0, "right": 0, "top": 2}
c.messages.timeout = 500

# Content
c.content.javascript.enabled = True
c.content.javascript.clipboard = "access-paste"
c.content.cookies.accept = "no-unknown-3rdparty"
c.content.autoplay = False
c.colors.webpage.preferred_color_scheme = "dark"
c.content.blocking.method = "both"
c.content.blocking.adblock.lists = [
    "https://big.oisd.nl",
    "https://easylist.to/easylist/easylist.txt",
    "https://easylist.to/easylist/easyprivacy.txt",
    "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-social/hosts"
]
c.downloads.location.suggestion = "both"
c.editor.command = ["code", "{file}"]
c.fileselect.folder.command = ["alacritty", "-e", "ranger", "--choosefiles={}"]
c.fileselect.multiple_files.command = ["alacritty", "-e", "ranger", "--choosefiles={}"]

# Session
c.auto_save.session = True
c.url.start_pages = ["https://youtu.be/vcGeWUiWrT4?si=QdB4-XEglr0l5yJV", "https://github.com/sansneo/prime", "https://google.com"]
c.url.default_page = "https://google.com"
c.url.searchengines = {
    "DEFAULT": "https://www.google.com/search?q={}",
    "yt": "https://youtube.com/results?search_query={}",
    "nx": "https://next-episode.net/search?search={}",
    "gh": "https://github.com/search?q={}",
    "to": "https://1337x.to/search/{}/1/",
    "gopkg": "https://pkg.go.dev/search?q={}",
    "pypkg": "https://pypi.org/search/?q={}",
    "glpkg": "https://packages.gleam.run/?search={}",
    "wiki": "https://en.wikipedia.org/wiki/{}",
}