return {
  {
    "microsoft/vscode-js-debug",
    dependencies = {
"mxsdev/nvim-dap-vscode-js"
    },
  opt = true,
  build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"  },
}

