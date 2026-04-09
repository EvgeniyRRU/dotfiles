For correct work lsp, you should to install dependencies:
```shell
$ npm i -g pyright typescript-language-server diagnostic-languageserver vscode-langservers-extracted stylelint-lsp
$ gem install ruby-lsp
```
File `servers.json` should to placed here: `~/.config/mcphub/servers.json`

File `opencode.json` is a config for Opencode, copy it:
```shell
$ cp opencode.json ~/.config/opencode/opencode.json
```
And configure your models and mcp servers.

Here also `settings.json` is a config for qwen-code agent:
```shell
$ cp settings.json ~/.qwen/settings.json
```
Open it and configure models and mcp servers.
