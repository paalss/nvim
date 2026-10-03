keep in mind this is fzf lua. not fzf vim

| Command         | List                     |
| --------------- | ------------------------ |
| `git_files`     | `git ls-files`           |
| `git_status`    | `git status`             |
| `git_diff`      | `git diff {ref}`         |
| `git_hunks`     | `git hunks {ref}`        |
| `git_commits`   | git commit log (project) |
| `git_bcommits`  | git commit log (buffer)  |
| `git_blame`     | git blame (buffer)       |
| `git_branches`  | git branches             |
| `git_worktrees` | git worktrees            |
| `git_tags`      | git tags                 |
| `git_stash`     | git stash                |


                                                                              
LSP/DIAGNOSTICS                                      *fzf-lua-lsp/diagnostics*

| Command                      | List                             |
| ---------------------------- | -------------------------------- |
| `lsp_references`             | References                       |
| `lsp_definitions`            | Definitions                      |
| `lsp_declarations`           | Declarations                     |
| `lsp_typedefs`               | Type Definitions                 |
| `lsp_implementations`        | Implementations                  |
| `lsp_document_symbols`       | Document Symbols                 |
| `lsp_workspace_symbols`      | Workspace Symbols                |
| `lsp_live_workspace_symbols` | Workspace Symbols (live query)   |
| `lsp_incoming_calls`         | Incoming Calls                   |
| `lsp_outgoing_calls`         | Outgoing Calls                   |
| `lsp_type_sub`               | Sub Types                        |
| `lsp_type_super`             | Super Types                     |
| `lsp_code_actions`           | Code Actions                     |
| `lsp_finder`                 | All LSP locations, combined view |
| `diagnostics_document`       | Document Diagnostics             |
| `diagnostics_workspace`      | Workspace Diagnostics            |
| `lsp_document_diagnostics`   | alias to `diagnostics_document`  |
| `lsp_workspace_diagnostics`  | alias to `diagnostics_workspace` |


                                                                              
MISC                                                            *fzf-lua-misc*

| Command                | List                                          |
| ---------------------- | --------------------------------------------- |
| `resume`               | resume last command/query                     |


