# Neovim funksjonalitet ønskes

ting jeg trenger for å gjøre Neovim til den ideelle IDE

UNDERSØK hvordan man printer ut karakter-resultatet av en tastekombinasjon. Var det ctrl+V og så den tasten det gjalt?

## Bugfixes

-   når man limer inn kode med kommentarer, så blir linjen med kommentaren, samt alle de følgende linjene kommentert ut.
    -   reproduser: f.eks. kopier noe lua kode med system clipboard (ctrl+C). Kodesnutten må inneholde `--`. Lim det inn i en lua fil.
    -   noe i en lua fil fra system clipboard og det inneholder `--`,
- kan ikke ctrl+backspace riktig i insert mode. skal slette ordet bak markøren
  - tror det bare funker i vanlig vim?
     - kanskje det hjelper å bruke vim-fugitive....?
        - kan uansett ikke bruke vanlig vim som git default editor, da får man error
          - det funker i VScode terminal da, selv med nvim
- etter å ha åpnet :DiffviewFileHistory el. så kan man ikke kjøre leader pv eller noe! whyyyy
- enable kommenter-ut for insert mode også. gc funker bare i visual mode så langt. se dokumentasjonen til de som lagde dette verktøyet (tpope?)

## Git

    | ønske                                   | verktøy                                          |
    | --------------------------------------- | ------------------------------------------------ |
    | ✅ bedre git diff                        | git delta (installert på ubuntu)                |
    | ✅ merge tool & current index comparison | sindrets/diffview                                                |
    | git graph-ish oversikt?                 |                                                  |
    | status bar med branch name?             |                                                  |
    | git diff som gjør det mulig å endre på unstaged changes (og åpne tilhørende fil*)             |                                                  |

*: Kan lazygit dette? Eller fugitive eller forgit?

## Finn kode/filer

| ønske                         | verktøy                |
| ----------------------------- | ---------------------- |
| ✅ file explorer               | neo tree               |
| ✅ tabs, med snarveinavigasjon | barbar                 |
| ✅ file & code search          | telescope              |
| Open folders                  |                        |
| Open recent folders/projects  |                        |
| Bookmarks                     |                        |
| ✅jump to declaration          | tror jeg er installert |

## Markdown

-   markdown-preview

-   markdown-completion (listepunkter)

## Annet

| øsnke                | verktøy                                              |
| -------------------- | ---------------------------------------------------- |
| ✅ syntax highlighter |                                                      |
| npm?                 | tro jeg har det automatisk i den emulerte terminalen |
| syntax highlighter   | funker ikke helt da                                  |
| ✅ skikkelig terminal | toggleterm                                           |
| prettier             |                                                      |
| typescript support   |                                                      |
| ✅code completion     | lsp ting                                             |
| debug environment    |                                                      |
| keymap cheatsheet    |                                                      |
|                      |                                                      |

-   VSCode features
    -   dupliser linje (ctrl+alt+opp/ned)
    -   at IDE husker bufferne du hadde åpne når du sist dro til den mappen
    -  gitsigns
    - gitlens git blame 
    - rename filer
    - file explorer
        - collapse all folders
        - open all folders
    - tabs
       - tastatursnarveier likens som i VSCode og firefox
    - https://github.com/windwp/nvim-autopairs {}
    - innrykk justering med tab og shift tab
    - autokey/autohotkey for å lage curly braces slik som på mac 


https://markdownbeautifier.com/



