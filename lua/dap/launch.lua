local dap = require('dap')
dap.configurations.java = {
  {
     -- You need to extend the classPath to list your dependencies.
     -- `nvim-jdtls` would automatically add the `classPaths` property if it is missing
    -- classPaths = {},

    -- If using multi-module projects, remove otherwise.
    -- projectName = "yy-test",

    javaExec = "/soft/java/jdk-17/bin/java",
    mainClass = "com.yy.App",

    -- If using the JDK9+ module system, this needs to be extended
    -- `nvim-jdtls` would automatically populate this property
    -- modulePaths = {},
    name = "运行yy-test",
    request = "launch",
    type = "java",
    vmArgs = "--add-opens java.base/java.lang=ALL-UNNAMED",
    args = "abc",
  },
}
