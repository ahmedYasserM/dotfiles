import { $ } from "bun";

// AUR Packages
const aurPackages: string[] = [
  "beekeeper-studio-bin",
  "bruno",
  "microsoft-edge-stable-bin",
  "todoist-appimage",
  "visual-studio-code-bin",
  "webcord",
];

// Cargo Packages

const cargoPackages: string[] = [
  "bat",
  "exa",
  "ripgrep",
  "git-graph",
  "otree",
  "serpl",
  "tabiew",
  "zoxide",
];

// Fonts and Icons
const fonts: string[] = [
  "ttf-jetbrains-mono",
  "ttf-nerd-fonts-symbols",
  "noto-fonts-emoji",
];

// Pacman Packages
const pacmanPackages: string[] = [
  "make",
  "cmake",
  "yay",
  "doas",
  "firefox",
  "git",
  "btop",
  "neovim",
  "nodejs",
  "npm",
  "zsh",
  "foliate",
  "telegram-desktop",
  "zip",
  "unzip",
  "entr",
  "github-cli",
  "man-db",
  "dotnet-sdk",
  "dotnet-runtime",
  "tldr",
  "mpv",
];

// Install Rust
await $`curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`;

// Install Cargo Packages
await $`cargo install ${cargoPackages.join(" ")}`;

// Install Fonts
await $`sudo pacman -S ${fonts.join(" ")}`;

// Install Pacman Packages
await $`sudo pacman -S ${pacmanPackages.join(" ")}`;

// Install AUR Packages
await $`yay -S ${aurPackages.join(" ")}`;
