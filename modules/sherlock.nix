{ config, pkgs, ... }:
{
  home.file.".config/sherlock/config.toml".text = ''
    [default_apps]
    teams = "teams-for-linux --enable-features=UseOzonePlatform --ozone-platform=wayland --url {meeting_url}"
    calendar_client = "thunderbird"
    terminal = "kitty"
    browser = "firefox --name firefox %U"

    [units]
    lengths = "meters"
    weights = "kg"
    volumes = "l"
    temperatures = "C"
    currency = "eur"

    [debug]
    try_suppress_errors = false
    try_suppress_warnings = false
    app_paths = []

    [appearance]
    width = 900
    height = 593
    gsk_renderer = "cairo"
    icon_paths = ["~/.config/sherlock/icons"]
    icon_size = 22
    use_base_css = true
    use_system_theme = false
    opacity = 1.0
    mod_key_ascii = ["⇧", "⇧", "⌘", "⌘", "⎇", "✦", "✦", "⌘"]
    num_shortcuts = 5

    [behavior]
    use_xdg_data_dir_icons = false
    animate = true
    use_lr_nav = false

    [binds]
    up = "control-k"
    down = "control-j"
    left = "control-ih"
    right = "control-l"
    context = "control-i"
    modifier = "control"
    exec_inplace = "control-return"

    [files]
    config = "/home/tea/.config/sherlock/config.toml"
    css = "/home/tea/.config/sherlock/main.css"
    fallback = "/home/tea/.config/sherlock/fallback.json"
    alias = "/home/tea/.config/sherlock/sherlock_alias.json"
    ignore = "/home/tea/.config/sherlock/sherlockignore"
    actions = "/home/tea/.config/sherlock/sherlock_actions.json"

    [runtime]
    multi = false
    center = false
    photo_mode = false
    display_raw = false
    daemonize = false

    [caching]
    enable = true
    cache = "/home/tea/.cache/sherlock/desktop_files.bin"

    [expand]
    enable = false
    edge = "top"
    margin = 0

    [backdrop]
    enable = false
    opacity = 0.6
    edge = "top"

    [status_bar]
    enable = true

    [search_bar_icon]
    enable = true
    icon = "system-search-symbolic"
    icon_back = "sherlock-back"
    size = 22

    [weather]
    enable = true
    provider = "openweathermap"
    api_key = "i dont have :("
    api_key = "eab10b1c947a4fea9f2131359253108"
    units = "metric"
    city = "Bratislava"
  '';
}
