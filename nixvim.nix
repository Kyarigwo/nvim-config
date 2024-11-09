{pkgs, ...}: {

  imports = [
    ./keymaps.nix
  ];

  config = {
#   enable = true;
    viAlias = true;
    vimAlias = true;

    globals.mapleader = " ";

    opts = {
      number = true;
      relativenumber = true;
      shiftwidth = 2;
      foldlevel = 3;
    };

    autoCmd = [
      {
        event = ["FileType"];
        pattern = ["uiua"];
        callback = {
          __raw = ''
          function()
            vim.lsp.start({
              name = 'uiua-lsp',
              cmd = {'uiua', 'lsp' }
            })
          end
        '';
        };
      }
    ];

    colorschemes.catppuccin = {
      enable = true;
      settings = {
        flavour = "latte";
      };
    };

    highlightOverride.NotifyINFOTitle.fg = "Green";
    highlightOverride.NotifyINFOIcon.fg = "Green";

    plugins = {

      barbar = {
	enable = true;
      };

      comment.enable = true;

      flash.enable = true;

      lualine = {
        enable = true;
      };
      lsp = {
          enable = true;
          keymaps.lspBuf = {
            K = "hover";
        };
        servers.nixd = {
          enable = true;
          autostart = true;
        };
        servers.rust_analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
        };
      };
      lsp-format.enable = true;
      lsp-lines.enable = true;
      mark-radar.enable = true;
      markdown-preview.enable = true;
      neo-tree.enable = true;
      noice.enable = true;
      notify.enable = true;

      vim-surround.enable = true;

      which-key.enable = true;

      telescope = {
        enable = true;
        keymaps = {

          "<leader>ff" = {
            action = "find_files";
            options = {
              desc = "Telescope: Find files";
            };
          };

          "<leader>f/" = {
            action = "current_buffer_fuzzy_find";
            options = {
              desc = "Telescope: Fuzzy find";
            };
          };

	  "<leader>fg" = {
	    action = "live_grep";
	    options = {
	      desc = "Telescope: Live grep";
	    };
	  };

	  "<leader>fb" = {
	    action = "buffers";
	    options = {
	      desc = "Telescope: Buffers";
	    };
	  };

	  "<leader>fr" = {
	    action = "oldfiles";
	    options = {
	      desc = "Telescope: Recently opened files";
	    };
	  };

	  "<leader>fp" = {
	    action = "commands";
	    options = {
	      desc = "Telescope: Command palette";
	    };
	  };

	  "<leader>fh" = {
	    action = "help_tags";
	    options = {
	      desc = "Telescope: Help tags";
	    };
	  };

	  "<leader>fm" = {
	    action = "marks";
	    options = {
	      desc = "Telescope: Marks";
	    };
	  };

	};
      };

      treesitter = {
        enable = true;
	settings = {
	  indent.enable = true;
	};
        nixGrammars = true;
      };
      treesitter-textobjects.enable = true;
      twilight.enable = true;

      web-devicons.enable = true;
    };

    extraPlugins = [

      pkgs.vimPlugins.nvim-web-devicons

      (pkgs.vimUtils.buildVimPlugin {
	name = "uiua-plugin";
	src = pkgs.fetchFromGitHub {
	  owner = "sputnick1124";
	  repo = "uiua.vim";
	  rev = "b6b5651d60b96825f60c9d598a39d1eae1069e45";
	  hash = "sha256-SjbqPv2eVo5ZhNGq9tL1o4GN4GCWJw2ayBpXtattAw4=";
	};
      })

      pkgs.vimPlugins.yuck-vim
    ];
  };
}
