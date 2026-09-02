# Slang Package for Sublime Text

Syntax highlighting support for the [Slang](https://shader-slang.org/) shading language in [Sublime Text](https://www.sublimetext.com/).


## Optional LSP Configuration

The Slang compiler from https://github.com/shader-slang/slang/releases includes an LSP server executable `slangd` that can be used with Sublime's LSP package to provide auto-completions, linting, etc.

Open *Preferences: LSP Server Configuration* from the command palette and add the following example config:

```jsonc
{
    "slang-lsp": {
        "enabled": true,
        "command": ["path/to/bin/slangd"],
        "selector": "source.slang",
        "settings": {
            // Predefined macros to use in the language server. Each item contains
            // one macro definition. You can also use `macro_name=value` syntax to
            // specify the value of the macro.
            "slang.predefinedMacros": [],
            // Controls whether or not the language server should look in all
            // sub-directories in the current workspace for an include or imported
            // file if it is not found in the explicitly specified search paths.
            "slang.searchInAllWorkspaceDirectories": true,
            // The language server will search for the included or imported file in
            // these additional directories first. If not found, the server will
            // look in all sub directories in the current workspace (if enabled by
            // the setting).
            "slang.additionalSearchPaths": [],
            // Controls whether or not to enable commit characters for selecting
            // an auto completion item in addition to pressing enter.
            // Options:
            //   "off" - disabled.
            //   "memberOnly" - use commit characters in a member list only.
            //   "on" - use commit characters for all types of completions.
            // Note: this setting has currently no effect, because commit characters
            // are not supported by Sublime LSP.
            "slang.enableCommitCharactersInAutoCompletion": "membersOnly",
            // Controls whether or not to format code automatically while typing.
            // Requires clang-format to be discoverable from PATH.
            "slang.format.enableFormatOnType": true,
            // The location of clang-format for auto formatting, including the
            // executable name. If left unspecified, will attempt to find
            // `clang-format` under `PATH`.
            "slang.format.clangFormatLocation": "",
            // The `-style` argument to pass to clang-format, without quotes.
            // Examples: `Microsoft`, `LLVM`, `file:fileName`.
            "slang.format.clangFormatStyle": "file",
            // The `-fallback-style` argument to pass to clang-format, without quotes.
            // Examples: `Microsoft`, `LLVM`, `file:fileName`.
            "slang.format.clangFormatFallbackStyle": "{BasedOnStyle: Microsoft, BreakBeforeBraces: Allman, ColumnLimit: 0}",
            // Controls whether the extension is allowed to make line-break changes
            // when reformatting the code on typing.
            "slang.format.allowLineBreakChangesInOnTypeFormatting": false,
            // Controls whether the extension is allowed to make line-break changes
            // when doing range formatting, such as formatting on paste or on command.
            "slang.format.allowLineBreakChangesInRangeFormatting": false,
            // Enable inlay hints for duduced decl types, e.g. the deduced type in
            // `var i = 2`
            "slang.inlayHints.deducedTypes": true,
            // Enable inlay hints for parameter names at call sites.
            "slang.inlayHints.parameterNames": true,
            // Controls the workspace flavor of the language server.
            // Options: "standard", "vfx"
            "slang.workspaceFlavor": "standard",
            // The assumed Slang language version for source files that do not
            // contain a `#language` directive. The empty default follows the
            // compiler's own default version. Set this to match the version you
            // build with (for example a global `-std`/`-language-version` option)
            // so the editor does not report false errors on directive-less files.
            // A per-file `#language` directive always overrides this setting.
            // Options:
            //   "" - Use the compiler's default language version.
            //   "2018" - Legacy Slang (2018) language rules.
            //   "2025" - Slang 2025 language rules.
            //   "2026" - Slang 2026 language rules.
            //   "latest" - The latest Slang language rules (currently 2026).
            "slang.predefinedLanguageVersion": "",
        }
    },
}
```
