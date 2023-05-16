print("Hier bin ich")

-- yamlls
local lspconfig = require 'lspconfig'
local cmp_nvim_lsp = require 'cmp_nvim_lsp'

local completion_capabilities = cmp_nvim_lsp.default_capabilities(capabilities)

lspconfig.yamlls.setup {
	capabilities = completion_capabilities,
	schemaStore = { url = "https://www.schemastore.org/api/json/catalog.json" },
	on_attach = on_attach,
  settings = {
    yaml = {
      keyOrdering = false,
      -- AWS CloudFormation tags
      customTags = {
        "!And scalar",
        "!And map",
        "!And sequence",
        "!If scalar",
        "!If map",
        "!If sequence",
        "!Not scalar",
        "!Not map",
        "!Not sequence",
        "!Equals scalar",
        "!Equals map",
        "!Equals sequence",
        "!Or scalar",
        "!Or map",
        "!Or sequence",
        "!FindInMap scalar",
        "!FindInMap mappping",
        "!FindInMap sequence",
        "!Base64 scalar",
        "!Base64 map",
        "!Base64 sequence",
        "!Cidr scalar",
        "!Cidr map",
        "!Cidr sequence",
        "!Ref scalar",
        "!Ref map",
        "!Ref sequence",
        "!Sub scalar",
        "!Sub map",
        "!Sub sequence",
        "!GetAtt scalar",
        "!GetAtt map",
        "!GetAtt sequence",
        "!GetAZs scalar",
        "!GetAZs map",
        "!GetAZs sequence",
        "!ImportValue scalar",
        "!ImportValue map",
        "!ImportValue sequence",
        "!Select scalar",
        "!Select map",
        "!Select sequence",
        "!Split scalar",
        "!Split map",
        "!Split sequence",
        "!Join scalar",
        "!Join map",
        "!Join sequence",
      },
    },
  },
}
