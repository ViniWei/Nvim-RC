local function split_string(inputstr, sep)
  if sep == nil then
    sep = "%s"
  end
  local t = {}
  for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
    table.insert(t, str)
  end
  return t
end

local function project_name()
    local project_path = vim.inspect(vim.lsp.buf.list_workspace_folders()[1])

    if (project_path ~= "nil") then
        project_path = split_string(project_path, "/")
        local project_folder = project_path[#project_path]
        project_folder = project_folder:sub(1, -2)

        return project_folder
    end
    return ""
end

return {
    "nvim-lualine/lualine.nvim",
    config = function ()
        require('lualine').setup({
            options = {
                component_separators = "|",
                section_separators = "",
                theme = "codedark",
            },
            sections = {
                 lualine_c = { 'filename', project_name }
            }
        })
    end
}
