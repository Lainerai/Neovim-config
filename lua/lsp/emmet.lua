if not lspconfig.emmet_ls then    

    configs.emmet_ls = {    

        default_config = {    

              cmd = {'emmet-ls', '--stdio'};

                    filetypes = {'html', 'css', 'blade'};

                          root_dir = function(fname)    

                                    return vim.loop.cwd()

                                          end;    

                                                settings = {};    

                                                    };    

                                                      }    

                                                    end    
