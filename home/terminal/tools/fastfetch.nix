{
  programs.fastfetch = {
    enable = true;
    settings = {
      "$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";
      logo = {
        source = "nixos_small";
        padding = {
          top = 1;
        };
      };

      display = {
        separator = " ";
      };

      modules = [
        {
            key = "╭───────────╮";
            type = "custom";
        }
        {
            key = "│ {#31} user    {#keys}│";
            type = "title";
            format = "{user-name}";
        }
        {
            key = "│ {#32}󰇅 hname   {#keys}│";
            type = "title";
            format = "{host-name}";
        }
        {
            key = "│ {#33}󰅐 uptime  {#keys}│";
            type = "uptime";
        }
        {
            key = "│ {#35} kernel  {#keys}│";
            type = "kernel";
            format = "{release}";
        }
        {
            key = "├───────────┤";
            type = "custom";
        }
        {
            key = "│ {#39} colors  {#keys}│";
            type = "colors";
            symbol = "circle";
        }
        {
            key = "╰───────────╯";
            type = "custom";
        }
      ];
    };
  };
}
