return {
  blends = {
    normal = 0.2,
    insert = 0.2,
    visual = 0.25,
    command = 0.2,
    operator = 0.2,
    replace = 0.2,
    select = 0.2,
    terminal = 0.2,
    terminal_n = 0.2,
  },
  colors = {
    normal = '#EB788B',
    insert = '#FF8F40',
    visual = '#4CD4BD',
    replace = '#00BBCC',
    command = '#EB788B',
    operator = '#FF8F40',
    select = '#AD6FF7',
    terminal = '#4CD4BD',
    terminal_n = '#00BBCC',
  },
  -- disable filetypes here. Add for example "TelescopePrompt" to
  -- not have any coloured cursorline for the telescope prompt.
  disabled_filetypes = { 'TelescopePrompt' },
  -- disabled buftypes here
  disabled_buftypes = {},
  -- you can turn on or off bold characters for the line numbers
  bold_nr = true,
  extend_to_linenr = true,
  extend_to_linenr_visual = false,
  fold_options = {
    enabled = false,
    start_color = '#C1C1C1',
    end_color = '#2F2F2F',
  },
}
