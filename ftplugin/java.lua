local root_markers = {'gradlew', '.git', 'pom.xml'}
local root_dir = require('jdtls.setup').find_root(root_markers)
local workspace_folder = '/root/javaDataSpace/' .. vim.fn.fnamemodify(root_dir, ":p:h:t")
local JDT_SERVER_HOME = os.getenv('JDTLS_HOME')
local config = {
  cmd = {
    "java",
    "-Declipse.application=org.eclipse.jdt.ls.core.id1",
    "-Dosgi.bundles.defaultStartLevel=4",
    "-Declipse.product=org.eclipse.jdt.ls.core.product",
    "-Dlog.protocol=true",
    "-Dlog.level=ALL",
    "-Xms1g",

    --增加lombok插件支持，getter setter good bye
    "-javaagent:/soft/java/lombok.jar",
    -- "-Xbootclasspath/a:/soft/java/lombok.jar",

    "--add-modules=ALL-SYSTEM",
    "--add-opens",
    "java.base/java.util=ALL-UNNAMED",
    "--add-opens",
    "java.base/java.lang=ALL-UNNAMED",

    "-jar",
    JDT_SERVER_HOME .. '/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
    "-configuration",
    JDT_SERVER_HOME .. '/config_linux',
    "-data",
    workspace_folder,
  },
  root_dir = require("jdtls.setup").find_root({".git", "mvnw", "gradlew", "pom.xml"}),
  settings = {
    java = {}
  },
  init_options = {
    bundles = {
      vim.fn.glob("/soft/java/com.microsoft.java.debug.plugin-0.44.0.jar", 1)
    }
  },

  ---@diagnostic disable-next-line: unused-local
  on_attach = function (client, bufnr)
    require('jdtls').setup_dap({ hotcodereplace = 'auto' })
  end
}

require("jdtls").start_or_attach(config)


