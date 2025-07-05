return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
    dependencies = {
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      system_prompt = "Odpowiadaj zawsze po polsku. Nie dodawaj komentarzy do kodu.",
      model = "claude-sonnet-4",
      debug = false, -- Enable debugging
      prompts = {
        python = {
          system_prompt = "Ucze się pythona, ale nam już takie języki jak typescript i golang."
            .. "Wszystkie pytania będą dotyczyć pythona. "
            .. "Jak bede zadawal pytania, to podawaj przyklady w tych jezykach. Odpowiadaj zwięzle i na temat. "
            .. "Nie dodawaj komentarzy do kodu. Odpowiadaj zawsze po polsku.",
        },
      },

      -- See Configuration section for rest
    },
  },
} -- See Commands section for default commands if you want to lazy load on them
