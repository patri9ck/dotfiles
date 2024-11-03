PLUGINS = {}

function add(plugin)
    table.insert(PLUGINS, { import = "plugins." .. plugin })
end
