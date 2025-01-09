-- Vérifier et installer prettierd automatiquement
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
  mark_formatters_installed()
end


if not has_installed_formatters() then
  install_formatters()
end
