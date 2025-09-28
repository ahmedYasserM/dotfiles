local blink = require("blink.cmp")

return {
  cmd = { "jdtls" },
  filetypes = { "java" },
  root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" },

  handlers = {
    ["language/status"] = function(_, result)
      -- Suppress language server status messages (optional)
      -- print("Language status: " .. result.message)  -- You can print if you want
    end,
    ["$/progress"] = function(_, _, _)
      -- Disable noisy progress updates
    end,
  },

  -- Optionally include capabilities (if you're using nvim-cmp, etc.)
  -- capabilities = blink.get_lsp_capabilities()
}
