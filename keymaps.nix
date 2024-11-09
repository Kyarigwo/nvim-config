{ ... } :

{
  keymaps = [

    # flash keys
    {
      mode = ["n"];
      key = "s";
      action = "<cmd>lua require(\"flash\").jump()<cr>";
    }

    {
      mode = "i";
      key = "fd";
      action = "<Esc>";
    }
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree<CR>";
      options = {
	desc = "Show neotree";
      };
    }
    {
      key = "<leader>vt";
      action = "<cmd>Twilight<CR>";
      options = {
	desc = "View: Toggle twilight";
      };
    }

    # uiua commands
    {
      key = "<leader>uf";
      action = "<cmd>UiuaFmt<CR>";
      options = {
	desc = "Uiua: Format";
      };
    }
    {
      key = "<leader>ur";
      action = "<cmd>UiuaRun<CR>";
      options = {
	desc = "Uiua: Run";
      };
    }

    # window commands
    {
      key = "<leader>wj";
      action = "<cmd>wincmd j<cr>";
      options = {
	desc = "Window: down";
      };
    }

    {
      key = "<leader>wk";
      action = "<cmd>wincmd k<cr>";
      options = {
	desc = "Window: up";
      };
    }

    {
      key = "<leader>wh";
      action = "<cmd>wincmd h<cr>";
      options = {
	desc = "Window: left";
      };
    }

    {
      key = "<leader>wl";
      action = "<cmd>wincmd l<cr>";
      options = {
	desc = "Window: right";
      };
    }

    {
      key = "<leader>w-";
      action = "<cmd>split<cr>";
      options = {
	desc = "Window: split horizontally";
      };
    }

    {
      key = "<leader>w|";
      action = "<cmd>vsplit<cr>";
      options = {
	desc = "Window: split vertically";
      };
    }

    {
      key = "<leader>wd";
      action = "<cmd>hide<cr>";
      options = {
	desc = "Window: delete window";
      };
    }

    # tab commands

    {
      key = "<leader>t|";
      action = "<cmd>tab split<cr>";
      options = {
	desc = "Tab: new tab";
      };
    }

    {
      key = "<leader>td";
      action = "<cmd>BufferClose<cr>";
      options = {
	desc = "Tab: close tab";
      };
    }

    {
      key = "<leader>ta";
      action = "<cmd>BufferCloseAllButCurrent<cr>";
      options = {
	desc = "Tab: close all but this tab";
      };
    }

    {
      key = "<leader>tl";
      action = "<cmd>BufferNext<cr>";
      options = {
	desc = "Tab: next tab";
      };
    }

    {
      key = "<leader>th";
      action = "<cmd>BufferPrevious<cr>";
      options = {
	desc = "Tab: previous tab";
      };
    }

    {
      key = "<leader>q";
      action = "<cmd>q<cr>";
      options = {
	desc = "quit";
      };
    }
  ];
}
