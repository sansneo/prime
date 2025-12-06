config.load_autoconfig(False)

c.url.start_pages = ['https://google.com']
c.url.default_page = 'https://google.com'

c.tabs.position = "right"
c.tabs.width = '15%'
# c.tabs.show = 'switching'
c.tabs.mousewheel_switching = False
c.statusbar.show = 'in-mode'

# c.url.auto_search = 'naive'
c.spellcheck.languages = []
c.search.ignore_case = 'always'
c.scrolling.smooth = False
# c.prompt.radius = 0
c.fonts.default_family = [ 'JetBrainsMono ']
c.fonts.default_size = '12pt'
c.content.geolocation = 'ask'
c.content.blocking.hosts.lists = ['https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts']
c.colors.webpage.preferred_color_scheme = 'dark'

# Search engines
c.url.searchengines = {
    'DEFAULT': 'https://www.google.com/search?q={}',
    "gh": "https://github.com/search?q={}",
    "wk": "https://en.wikipedia.org/wiki/{}",
    "yt": "https://youtube.com/results?search_query={}",
}

# Auto-save sessions
c.auto_save.session = True

# Ad/content blocking
c.content.blocking.method = "both"