require("mason").setup()
require("mason-lspconfig").setup()

require("lspconfig").yamlls.setup {}
require("lspconfig").rust_analyzer.setup {}
require("lspconfig").pylsp.setup {}
 

