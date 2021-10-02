lua << EOF
local nvim_lsp = require('lspconfig')
local protocol = require('vim.lsp.protocol')

-- Custom formating function
--local format_async = function(err, _, result, _, bufnr)
--    if err ~= nil or result == nil then return end
--    if not vim.api.nvim_buf_get_option(bufnr, "modified") then
--        local view = vim.fn.winsaveview()
--        vim.lsp.util.apply_text_edits(result, bufnr)
--        vim.fn.winrestview(view)
--        if bufnr == vim.api.nvim_get_current_buf() then
--            vim.api.nvim_command("noautocmd :update")
--        end
--    end
--end
--vim.lsp.handlers["textDocument/formatting"] = format_async

-- function to run whenever a language server starts:
-- this is where we define commands and keybindings.
local on_attach = function(client, bufnr)
    local function buf_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    vim.cmd('command! LspDec lua vim.lsp.buf.declaration()')
    vim.cmd('command! LspDef lua vim.lsp.buf.definition()')
    vim.cmd('command! LspHover lua vim.lsp.buf.hover()')
    local options = { noremap = true, silent = true }
    -- Mappings
    buf_keymap('n', 'gD', ':LspDec<CR>', options)
    buf_keymap('n', 'gd', ':LspDef<CR>', options)
    buf_keymap('n', 'K', ':LspHover<CR>', options)

    -- format on save
    if client.resolved_capabilities.document_formatting then
        vim.api.nvim_command [[augroup Format]]
        vim.api.nvim_command [[autocmd! * <buffer>]]
        vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
        vim.api.nvim_command [[augroup END]]
        --vim.api.nvim_exec([[
         --augroup LspAutocommands
             --autocmd! * <buffer>
             --autocmd BufWritePost <buffer> LspFormatting
         --augroup END
         --]], true)
    end
end

nvim_lsp.tsserver.setup {
    on_attach = function(client)
        -- disable formatting to avoid conflict with prettier.
        client.resolved_capabilities.document_formatting = true
        on_attach(client)
    end
}

-- diagnostic
local filetypes = {
    'javascript',
    'javascriptreact',
    'json',
    'typescript',
    'typescriptreact',
    'css',
    'less',
    'scss',
    'markdown'
}

local linters = {
    eslint = {
        -- eslint_d is faster than eslint, change command to eslint to use it.
        command = 'eslint_d',
        -- rootPatterns = {'.eslintrc.js', 'package.json', '.git'},
        rootPatterns = {'.eslintrc.js', 'package.json', '.git'},
        debounce = 100,
        args = {'--stdin', '--stdin-filename', '%filepath', '--format', 'json'},
        sourceName = 'eslint',
        parseJson = {
            errorsRoot = '[0].messages',
            line = 'line',
            column = 'column',
            endLine = 'endLine',
            endColumn = 'endColumn',
            message = '[eslint] ${message} [${ruleId}]',
            security = 'severity'
        },
        securities = {
            [2] = 'error',
            [1] = 'warning'
        }
    }
}

local formatters = {
    prettier = {
        command = 'prettier',
        args = {'--stdin-filepath', '%filename'}
    }
}

local formatFiletypes = {
    css = 'prettier',
    json = 'prettier',
    scss = 'prettier',
    less = 'prettier',
    json = 'prettier',
    markdown = 'prettier',
    javascript = 'eslint_d',
    javascriptreact = 'eslint_d',
    typescript = 'eslint_d',
    typescriptreact = 'eslint_d',
}

nvim_lsp.diagnosticls.setup {
    on_attach = on_attach,
    filetypes = vim.tbl_keys(filetypes),
    init_options = {
        filetypes = filetypes,
        linters = linters,
        formatters = formatters,
        formatFiletypes = formatFiletypes
    }
}
-- custom diagnostic signs
-- icon
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    -- This sets the spacing and the prefix, obviously.
    virtual_text = {
      spacing = 4,
      prefix = ''
    }
  }
)

 protocol.CompletionItemKind = {
    '', -- Text
    '', -- Method
    '', -- Function
    '', -- Constructor
    '', -- Field
    '', -- Variable
    '', -- Class
    'ﰮ', -- Interface
    '', -- Module
    '', -- Property
    '', -- Unit
    '', -- Value
    '', -- Enum
    '', -- Keyword
    '﬌', -- Snippet
    '', -- Color
    '', -- File
    '', -- Reference
    '', -- Folder
    '', -- EnumMember
    '', -- Constant
    '', -- Struct
    '', -- Event
    'ﬦ', -- Operator
    '', -- TypeParameter
  }

require'compe'.setup {
  enabled = true;
  autocomplete = true;
  source = {
    path = true;
    buffer = true;
    nvim_lsp = true;
    nvim_lua = true;
    -- vsnip = true;
  };
}

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

--local check_back_space = function()
--    local col = vim.fn.col('.') - 1
--    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
--end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder

-- tab
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  --elseif vim.fn['vsnip#available'](1) == 1 then
    --return t "<Plug>(vsnip-expand-or-jump)"
--  elseif check_back_space() then
--    return t "<Tab>"
  else
    --return vim.fn['compe#complete']()
    return t '<Tab>'
  end
end

-- shift+tab
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  --elseif vim.fn['vsnip#jumpable'](-1) == 1 then
    --return t "<Plug>(vsnip-jump-prev)"
  else
    -- If <S-Tab> is not working in your terminal, change it to <C-h>
    return t "<S-Tab>"
  end
end

-- tab
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
-- shift+tab
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

vim.api.nvim_set_keymap("i", "<C-Space>", "compe#complete()", {expr = true, silent = true})
vim.api.nvim_set_keymap("i", "<CR>", [[compe#confirm("<CR>")]], {expr = true, silent = true})
vim.api.nvim_set_keymap("i", "<C-e>", [[compe#close("<C-e>")]], {expr = true, silent = true})
EOF
