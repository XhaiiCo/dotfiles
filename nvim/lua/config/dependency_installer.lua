local function install_prettierd()
  local handle = io.popen("npm list -g @fsouza/prettierd 2>&1")
  local result = handle:read("*a")
  handle:close()

  -- Si 'prettierd' n'est pas installé globalement, l'installer
  if not result:find("empty") then
    print("prettierd is already installed globally.")
  else
    print("Installing prettierd...")
    os.execute("npm install -g @fsouza/prettierd")
  end
end

local function install_ripgrep()
  local handle = io.popen('winget list BurntSushi.ripgrep.MSVC 2>&1')
  local result = handle:read('*a')
  handle:close()

  if not result:find('Ripgrep') then
    print('Ripgrep is not installed. Installing...')
    local install_status = os.execute('winget install BurntSushi.ripgrep.MSVC')
    if install_status == 0 then
      print('Ripgrep successfully installed.')
    else
      print('Failed to install Ripgrep. Please check your winget setup.')
    end
  else
    print('Ripgrep is already installed.')
  end
end

local function mark_formatters_installed()
  local file = io.open(vim.fn.stdpath('config') .. '/.formatter_installed', "w")
  file:write("Formateurs installés\n")
  file:close()
end

local function has_installed_formatters()
  local file = io.open(vim.fn.stdpath('config') .. '/.formatter_installed', "r")
  if file then
    file:close()
    return true
  end
  return false
end

local function install_formatters()
  install_prettierd()
  install_ripgrep()
  mark_formatters_installed()
end


if not has_installed_formatters() then
  install_formatters()
end
