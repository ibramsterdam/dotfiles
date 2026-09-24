-- Override right click mouse file

vim.cmd [[
  aunmenu PopUp
  anoremenu PopUp.Inspect     <cmd>Inspect<CR>
  amenu PopUp.-1-             <NOP>
  nnoremenu PopUp.Back        <C-t>
]]
