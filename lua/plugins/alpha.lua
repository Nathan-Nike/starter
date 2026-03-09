return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.buttons.val = {
      dashboard.button("e", "󰀶  Explorer", ":lua require('snacks.explorer').open()<CR>"),
      dashboard.button("f", "  Find", ":Telescope find_files<CR>"),
      dashboard.button("r", "󰔠  Recent", ":Telescope oldfiles<CR>"),
      -- dashboard.button("s", "  Sessions", ":SessionManager load_session<CR>"),
      -- dashboard.button("c", "  Config", ":e $MYVIMRC<CR>"),
      -- dashboard.button("x", "  Extras", ":LazyExtras<CR>"),
    }

    -- Remove footer
    dashboard.section.footer.val = ""
    for i, section in ipairs(dashboard.config.layout) do
      if section.val == dashboard.section.footer.val then
        table.remove(dashboard.config.layout, i)
      end
    end

    -- Add custom padding
    dashboard.config.layout = {
      { type = "padding", val = 2 },
      dashboard.section.header,
      { type = "padding", val = 2 },
      dashboard.section.buttons,
      { type = "padding", val = 2 },
    }

    opts.config = dashboard.config
  end,
}
