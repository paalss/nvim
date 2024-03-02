# Neovim funksjonalitet ønskes

ting jeg trenger for å gjøre Neovim til den ideelle IDE

UNDERSØK hvordan man printer ut karakter-resultatet av en tastekombinasjon. Var det ctrl+V og så den tasten det gjalt?

## Git

    | ønske                                   | verktøy                                          |
    | --------------------------------------- | ------------------------------------------------ |
    | ✅ bedre git diff                        | git delta (installert på ubuntu)                |
    | ✅ merge tool & current index comparison | sindrets/diffview                                                |
    | en lazygit hvor man kan endre på filer gjennom diff-vindu |                                |
    | git graph-ish oversikt?                 |                                                  |
    | status bar med branch name?             |                                                  |
    | git diff som gjør det mulig å endre på unstaged changes (og åpne tilhørende fil*)             |                                                  |

*: Kan lazygit dette? Eller fugitive eller forgit?

Lazygit kan ta deg med til gjeldende fil, ja.

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

-   markdown-completion (listepunkter)

- Table of Contents til markdown

## HTML

- Open in browser (slik som med markdown preview)
- emmet (auto closing tag, encapsulate with `<>`)

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
    - visual mode flytting av flere linjer på én gang
    - mus-middel-tast-marker i VS Code. Dupliser selectionen by place
        - visual multi kan sikkert dette
    -   at IDE husker bufferne du hadde åpne når du sist dro til den mappen
    - rename filer
    - file explorer
        - collapse all folders
        - open all folders
    - innrykk justering med tab og shift tab
    - indentination signs (rulers)
    - autokey/autohotkey for å lage curly braces slik som på mac 


- Kickstart features:
  - nvim med convential commits greie som autocompleter feature til `feature(scope): Title` Det er nice


https://markdownbeautifier.com/



- prevent neovim newline --
- kill terminal, new terminal 
(kanskje man kan skrive `exit` og så åpne på nytt?)
- adjacent.nvim
