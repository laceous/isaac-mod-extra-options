local mod = RegisterMod('Extra Options', 1)

mod.consoleFonts = { [0] = 'default', [1] = 'small', [2] = 'tiny' }

function mod:setupModConfigMenu()
  ModConfigMenu.AddSetting(
    mod.Name,
    'Console',
    {
      Type = ModConfigMenu.OptionType.BOOLEAN,
      CurrentSetting = function()
        return Options.DebugConsoleEnabled
      end,
      Display = function()
        return 'Debug Console: ' .. (Options.DebugConsoleEnabled and 'on' or 'off')
      end,
      OnChange = function(b)
        Options.DebugConsoleEnabled = b
      end,
      Info = { 'Default: off', 'Press the tilde key to open' }
    }
  )
  ModConfigMenu.AddSetting(
    mod.Name,
    'Console',
    {
      Type = ModConfigMenu.OptionType.NUMBER,
      CurrentSetting = function()
        return Options.ConsoleFont -- 0, 1, 2
      end,
      Minimum = 0,
      Maximum = 2,
      Display = function()
        return 'Console Font: ' .. (mod.consoleFonts[Options.ConsoleFont] ~= nil and mod.consoleFonts[Options.ConsoleFont] or Options.ConsoleFont)
      end,
      OnChange = function(n)
        Options.ConsoleFont = n
      end,
      Info = { 'Default: default' }
    }
  )
  ModConfigMenu.AddSetting(
    mod.Name,
    'Console',
    {
      Type = ModConfigMenu.OptionType.BOOLEAN,
      CurrentSetting = function()
        return Options.FadedConsoleDisplay
      end,
      Display = function()
        return 'Faded Console Display: ' .. (Options.FadedConsoleDisplay and 'on' or 'off')
      end,
      OnChange = function(b)
        Options.FadedConsoleDisplay = b
      end,
      Info = { 'Default: off', 'Display recent console output on the screen' }
    }
  )
  ModConfigMenu.AddSetting(
    mod.Name,
    'Console',
    {
      Type = ModConfigMenu.OptionType.BOOLEAN,
      CurrentSetting = function()
        return Options.SaveCommandHistory
      end,
      Display = function()
        return 'Save Command History: ' .. (Options.SaveCommandHistory and 'on' or 'off')
      end,
      OnChange = function(b)
        Options.SaveCommandHistory = b
      end,
      Info = { 'Default: on', 'Save history between sessions' }
    }
  )
  ModConfigMenu.AddSetting(
    mod.Name,
    'Input',
    {
      Type = ModConfigMenu.OptionType.BOOLEAN,
      CurrentSetting = function()
        return Options.MouseControl
      end,
      Display = function()
        return 'Mouse Control: ' .. (Options.MouseControl and 'on' or 'off')
      end,
      OnChange = function(b)
        Options.MouseControl = b
      end,
      Info = { 'Default: off', 'Use mouse to shoot' }
    }
  )
  ModConfigMenu.AddSetting(
    mod.Name,
    'Input',
    {
      Type = ModConfigMenu.OptionType.BOOLEAN,
      CurrentSetting = function()
        return Options.RumbleEnabled
      end,
      Display = function()
        return 'Rumble: ' .. (Options.RumbleEnabled and 'on' or 'off')
      end,
      OnChange = function(b)
        Options.RumbleEnabled = b
      end,
      Info = { 'Default: on' }
    }
  )
  ModConfigMenu.AddSetting(
    mod.Name,
    'Screen',
    {
      Type = ModConfigMenu.OptionType.NUMBER,
      CurrentSetting = function()
        return Options.MaxScale -- 1-99
      end,
      Minimum = 1,
      Maximum = 99,
      Display = function()
        return 'Max Scale: ' .. Options.MaxScale
      end,
      OnChange = function(n)
        Options.MaxScale = n
      end,
      Info = { 'Default: 99', 'Zoom out: 1-4', 'Behavior is generally the same: 5-99' }
    }
  )
  ModConfigMenu.AddSetting(
    mod.Name,
    'Screen',
    {
      Type = ModConfigMenu.OptionType.NUMBER,
      CurrentSetting = function()
        return Options.MaxRenderScale -- 1-99
      end,
      Minimum = 1,
      Maximum = 99,
      Display = function()
        return 'Max Render Scale: ' .. Options.MaxRenderScale
      end,
      OnChange = function(n)
        Options.MaxRenderScale = n
      end,
      Info = { 'Default: 2', 'Improve performance on old hardware: 1', 'Can break things / do not use: 3-99' }
    }
  )
  ModConfigMenu.AddSetting(
    mod.Name,
    'Screen',
    {
      Type = ModConfigMenu.OptionType.BOOLEAN,
      CurrentSetting = function()
        return Options.PauseOnFocusLost
      end,
      Display = function()
        return 'Pause On Focus Lost: ' .. (Options.PauseOnFocusLost and 'on' or 'off')
      end,
      OnChange = function(b)
        Options.PauseOnFocusLost = b
      end,
      Info = { 'Default: on' }
    }
  )
  ModConfigMenu.AddSetting(
    mod.Name,
    'Screen',
    {
      Type = ModConfigMenu.OptionType.BOOLEAN,
      CurrentSetting = function()
        return Options.UseBorderlessFullscreen
      end,
      Display = function()
        return 'Use Borderless Fullscreen: ' .. (Options.UseBorderlessFullscreen and 'on' or 'off')
      end,
      OnChange = function(b)
        Options.UseBorderlessFullscreen = b
      end,
      Info = { 'Default: off' }
    }
  )
  ModConfigMenu.AddSetting(
    mod.Name,
    'Screen',
    {
      Type = ModConfigMenu.OptionType.BOOLEAN,
      CurrentSetting = function()
        return Options.VSync
      end,
      Display = function()
        return 'VSync: ' .. (Options.VSync and 'on' or 'off')
      end,
      OnChange = function(b)
        Options.VSync = b
      end,
      Info = { 'Default: on' }
    }
  )
  ModConfigMenu.AddSpace(mod.Name, 'Screen')
  ModConfigMenu.AddText(mod.Name, 'Screen', 'Press F to toggle fullscreen')
  ModConfigMenu.AddText(mod.Name, 'Screen', 'to apply the scale settings')
end

if ModConfigMenu then
  mod:setupModConfigMenu()
end