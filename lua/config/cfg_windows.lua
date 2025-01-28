if vim.fn.executable("pwsh") == 1 then
  vim.o.shell = "pwsh" -- 对于 PowerShell Core
else
  vim.o.shell = "powershell" -- 对于传统 PowerShell
end

-- 设置 shell 命令标志
--vim.o.shellcmdflag = '-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues[\\'Out-File:Encoding\\']=\\'utf8\\';'

-- 设置 shell 重定向
vim.o.shellredir = '2>&1 | %{ "$_" } | Out-File %s; exit $LastExitCode'

-- 设置 shell 管道
vim.o.shellpipe = '2>&1 | %{ "$_" } | Tee-Object %s; exit $LastExitCode'

-- 设置 shell 引用选项
vim.o.shellquote = ""
vim.o.shellxquote = ""
