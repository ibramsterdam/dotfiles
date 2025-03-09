return {
  {
    "f-person/git-blame.nvim",
    lazy = false,
    opts = {
      enabled = true,
      message_template = " <summary> • <author> • <date>", 
      date_format = "%r",
      virtual_text_column = 1,
      delay =  2000,
    },
  }
}
