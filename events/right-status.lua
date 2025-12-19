local wezterm = require('wezterm')
local nerdfonts = wezterm.nerdfonts
local colors = require('colors.custom')

local function truncate_left(s, max_len)
  if not s or s == '' then return '' end
  if wezterm.column_width(s) <= max_len then return s end
  -- keep the tail, like "..<tail>"
  local tail = s:sub(#s - max_len + 1)
  return '..' .. tail
end

local function get_cwd(pane, max_len)
  local cwd = pane:get_current_working_dir()
  if not cwd then return '' end

  if type(cwd) == 'userdata' and cwd.path then
    cwd = cwd.path
  end

  -- Optional: make home prettier
  local user = os.getenv('USER') or os.getenv('USERNAME') or ''
  if user ~= '' then
    cwd = cwd:gsub('^/Users/' .. user, '~')
  end

  return truncate_left(cwd, max_len or 30)
end

local function get_username()
  return os.getenv('USER') or os.getenv('USERNAME') or 'user'
end

local function get_hostname()
  local h = wezterm.hostname() or os.getenv('HOSTNAME') or 'host'
  -- shorten "foo.bar.com" -> "foo"
  return (h:gsub('%..*$', ''))
end

local M = {}

function M.setup(_opts)
  wezterm.on('update-right-status', function(window, pane)
    -- This event is emitted periodically based on status_update_interval :contentReference[oaicite:7]{index=7}

    -- Right: cwd / user / host / time
    local cwd = get_cwd(pane, 28)
    local username = get_username()
    local hostname = get_hostname()
    local time = wezterm.strftime('%Y-%m-%d %H:%M')

    window:set_right_status(wezterm.format({
      { Text       = ' ' },
      { Background = { Color = colors.background } },
      { Foreground = { Color = colors.ansi[4] } },
      { Text       = nerdfonts.ple_left_half_circle_thick },
      { Background = { Color = colors.ansi[4] } },
      { Foreground = { Color = colors.background } },
      { Text       = nerdfonts.md_folder .. ' ' },
      { Background = { Color = colors.ansi[1] } },
      { Foreground = { Color = colors.foreground } },
      { Text       = ' ' .. cwd .. ' ' },
      { Background = { Color = colors.background } },
      { Foreground = { Color = colors.ansi[1] } },
      { Text       = nerdfonts.ple_right_half_circle_thick },

      { Text       = ' ' },
      { Background = { Color = colors.background } },
      { Foreground = { Color = colors.ansi[6] } },
      { Text       = nerdfonts.ple_left_half_circle_thick },
      { Background = { Color = colors.ansi[6] } },
      { Foreground = { Color = colors.background } },
      { Text       = nerdfonts.fa_user .. ' ' },
      { Background = { Color = colors.ansi[1] } },
      { Foreground = { Color = colors.foreground } },
      { Text       = ' ' .. username .. ' ' },
      { Background = { Color = colors.background } },
      { Foreground = { Color = colors.ansi[1] } },
      { Text       = nerdfonts.ple_right_half_circle_thick },

      { Text       = ' ' },
      { Background = { Color = colors.background } },
      { Foreground = { Color = colors.ansi[7] } },
      { Text       = nerdfonts.ple_left_half_circle_thick },
      { Background = { Color = colors.ansi[7] } },
      { Foreground = { Color = colors.ansi[1] } },
      { Text       = nerdfonts.cod_server .. ' ' },
      { Background = { Color = colors.ansi[1] } },
      { Foreground = { Color = colors.foreground } },
      { Text       = ' ' .. hostname .. ' ' },
      { Background = { Color = colors.background } },
      { Foreground = { Color = colors.ansi[1] } },
      { Text       = nerdfonts.ple_right_half_circle_thick },

      { Text       = ' ' },
      { Background = { Color = colors.background } },
      { Foreground = { Color = colors.ansi[8] } },
      { Text       = nerdfonts.ple_left_half_circle_thick },
      { Background = { Color = colors.ansi[8] } },
      { Foreground = { Color = colors.background } },
      { Text       = nerdfonts.md_calendar_clock .. ' ' },
      { Background = { Color = colors.ansi[1] } },
      { Foreground = { Color = colors.foreground } },
      { Text       = ' ' .. time .. ' ' },
      { Background = { Color = colors.background } },
      { Foreground = { Color = colors.ansi[1] } },
      { Text       = nerdfonts.ple_right_half_circle_thick },
    }))
  end)
end

return M
