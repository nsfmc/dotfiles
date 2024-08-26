if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx HOMEBREW_HOME "/opt/homebrew"
set -gx PATH "$HOMEBREW_HOME/bin" $PATH

set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# pnpm
set -gx PNPM_HOME "/Users/marcos/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

# rust
set -gx RUSTUP_HOME "$HOME/.rustup"
set -gx CARGO_HOME "$HOME/.cargo"
set -gx PATH "$CARGO_HOME/bin" $PATH
# rust end

# deno
set -gx DENO_INSTALL "$HOME/.deno"
set -gx PATH "$DENO_INSTALL/bin" $PATH
# deno end

# Created by `pipx` on 2022-11-12 20:11:47
set PATH $PATH /Users/marcos/.local/bin
