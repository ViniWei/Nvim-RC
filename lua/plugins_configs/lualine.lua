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

local function buffername_projectname()
    local final_string = ""
    local buffer_path = split_string(vim.fn.expand('%'), "\\")
    final_string = buffer_path[#buffer_path]

    local project_path = vim.inspect(vim.lsp.buf.list_workspace_folders()[1])

    if (project_path ~= "nil") then
        project_path = split_string(project_path, "/")
        local project_name = project_path[#project_path]
        project_name = project_name:sub(1, -2)

        final_string = final_string .. " | " .. project_name
    end

    return final_string
end

return {
    "nvim-lualine/lualine.nvim",
    config = function ()
        require('lualine').setup({
            options = {
                component_separators = "|",
                section_separators = ""
            },
            sections = {
                 lualine_c = { buffername_projectname }
            }
        })
    end
}
