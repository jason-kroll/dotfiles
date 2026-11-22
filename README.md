dotfiles
========

These are my dotfiles. Maybe they are useful to someone? It's not a bad idea to
have a stash of them for myself, either, just in case.

What's in here:

* [README.md](README.md) -> this file!
* [attic](attic/) -> old configs of sentimental value or historical interest
* everything else -> active configs of one variety or another

## Installation Notes

Honestly why would you install someone else's dotfiles? But maybe as references
there is something useful in them.

*.zshenv should never be committed! especially now when it's full of API keys...*

Most of the other things can be symlinked `ln -s "$PWD"/.zshrc ~/.zshrc` or
just copied to $HOME and copied back to the dotfiles repo when it's time to
back them up, but...

Here's a neat trick on a new machine in a new town:

```sh
# git clone --bare https://github.com/jason-kroll/dotfiles ~/.dotfiles  # if ya don't need to push
git clone --bare git@github.com:jason-kroll/dotfiles ~/.dotfiles  # so I can push
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout -f
```

*(but don't ever `dotfiles add -A` all right?)*

## Tooling

Emacs is my chef's knife, Vim is my paring knife. Just because you *can* use
Emacs for everything doesn't necessarily mean you should.

I'm pretty much an editor-and-shell, side-by-side sort. I've settled on a
handful of core tools:

* [Spacemacs](https://github.com/syl20bnr/spacemacs)
* [Neovim](https://neovim.io/) (lately with [kickstart.nvim](https://kickstartnvim.com/))
* [Zsh](https://www.zsh.org/) (with [Oh My Zsh](https://ohmyz.sh/), naturally)
* [tmux](https://github.com/tmux/tmux/wiki)
* [Alacritty](https://alacritty.org/)
* [Pop!_OS / COSMIC](https://system76.com/cosmic) via System76, tiling like XMonad
* [Linux](https://kernel.org)

My favorite themes right now:

* [Nord](https://www.nordtheme.com/)
* [Rosé Pine Dawn](https://rosepinetheme.com/en/)

## LLMs

*Don't be the first to cross a new bridge or the last to cross an old one.*

LLM-related tooling:

* [Aider](https://github.com/Aider-AI/aider)
* [AiderMacs](https://github.com/MatthewZMD/aidermacs)
* [Emacs Agent Shell](https://github.com/xenodium/agent-shell)
* [Mistral Vibe](https://github.com/mistralai/mistral-vibe)

For LLMs, I like Mistral Vibe and Aider, though API pricing interferes with the
latter. Open-weight and local models are quite good enough these days, and it's
better not to become dependent on the frontier, though I do keep an eye on it.

I tend not to go overboard with LLMs and MCP and ACP and skills and whatever
else; it's all changing too quickly to warrant optimizing around it. Moreover,
complexity is just more scope for things to go wrong; I'd rather keep things
clean, simple, minimal, and self-contained. Vibe and Aider are minimal.

## Languages

I'm a bit of a PLT enthusiast, although things have narrowed down as of late:

* [Rust](https://www.rust-lang.org/) is the best language
* [Python](https://www.python.org/) is the go-to scripting
* [Julia](http://julialang.org/) is promising
* C remains the most elegant

I do kinda miss a couple languages that had, maybe still have, wonderful communities:

* [Ruby](https://www.ruby-lang.org/en/)
* [Clojure](http://clojure.org/)

## Closing Thoughts

Complexity is the enemy, mutability explodes state, all code is an attack
surface, bias for memory safety before even correctness, functions are mappings
of sets to sets, lean on the compiler... you get the idea, you know the type.

[git blame for an accurate last updated, but I'll just note November of 2026 here]

