local lsp_installer_servers = require('nvim-lsp-installer.servers')
local servers = { 'pyright', 'tsserver', 'jsonls', 'html', 'cssls', 'sumneko_lua', 'phpactor', 'vimls', 'vuels' }

local function install_server(server)
  local server_available, requested_server = lsp_installer_servers.get_server(server)
  if server_available and (not requested_server:is_installed()) then
    requested_server:install()
  end
end

for _, server in ipairs(servers)
do
  install_server(server)
end
