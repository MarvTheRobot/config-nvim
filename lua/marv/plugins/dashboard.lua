local header
header = [[
                                                                                                               
                                                                                                               
/\\\\            /\\\\     /\\\\\\\\\       /\\\\\\\\\      /\\\        /\\\                                   
\/\\\\\\        /\\\\\\   /\\\\\\\\\\\\\   /\\\///////\\\   \/\\\       \/\\\                                  
 \/\\\//\\\    /\\\//\\\  /\\\/////////\\\ \/\\\     \/\\\   \//\\\      /\\\   /\\\                           
  \/\\\\///\\\/\\\/ \/\\\ \/\\\       \/\\\ \/\\\\\\\\\\\/     \//\\\    /\\\   \///     /\\\\\  /\\\\\        
   \/\\\  \///\\\/   \/\\\ \/\\\\\\\\\\\\\\\ \/\\\//////\\\      \//\\\  /\\\     /\\\  /\\\///\\\\\///\\\     
    \/\\\    \///     \/\\\ \/\\\/////////\\\ \/\\\    \//\\\      \//\\\/\\\     \/\\\ \/\\\ \//\\\  \/\\\    
     \/\\\             \/\\\ \/\\\       \/\\\ \/\\\     \//\\\      \//\\\\\      \/\\\ \/\\\  \/\\\  \/\\\   
      \/\\\             \/\\\ \/\\\       \/\\\ \/\\\      \//\\\      \//\\\       \/\\\ \/\\\  \/\\\  \/\\\  
       \///              \///  \///        \///  \///        \///        \///        \///  \///   \///   \///  
      ]]

return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'doom',
      config = {
        header = vim.split(header, '\n'),
        -- stylua: ignore
        center = {
          { action = 'Telescope find_files',              desc = "Find File",            icon = "", key = "f" },
          { action = "ene | startinsert",                 desc = "New File",             icon = "", key = "n" },
          { action = "Neotree",                           desc = "Explorer",             icon = "", key = "e" },
        },
        footer = function()
          local stats = require('lazy').stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return { '⚡ Neovim loaded ' .. stats.loaded .. '/' .. stats.count .. ' plugins in ' .. ms .. 'ms' }
        end,
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
