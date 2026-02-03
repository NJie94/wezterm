# My WezTerm Config

## Getting Started

### Requirements

- WezTerm
- JetBrainsMono Nerd Font

### Steps

``` sh
# On Windows and Unix systems
git clone https://github.com/NJie94/wezterm.git ~/.config/wezterm
```

# WezTerm Keybindings

## Modifier legend

| Symbol | macOS | Windows / Linux |
|---|---|---|
| `SUPER` | `⌥ Option` | `Alt` |
| `SUPER_REV` | `⌘ Command` + `Ctrl` | `Ctrl` + `Alt` |
| `LEADER` | `SUPER` + `Space` | `SUPER` + `Space` |

---

## Misc / useful

| Shortcut | Action |
|---|---|
| `F1` | Activate Copy Mode |
| `F2` | Command Palette |
| `F3` | Launcher |
| `F4` | Launcher (Fuzzy + Tabs) |
| `F5` | Launcher (Fuzzy + Workspaces) |
| `F11` | Toggle Fullscreen |
| `F12` | Debug Overlay |
| `SUPER + f` | Search (case-insensitive) |
| `SUPER_REV + u` | Quick-select URL patterns → open selected URL |

---

## Cursor / line movement

| Shortcut | Action |
|---|---|
| `SUPER + LeftArrow` | Send `ESC OH` (commonly **Home**) |
| `SUPER + RightArrow` | Send `ESC OF` (commonly **End**) |
| `SUPER + Backspace` | Send `Ctrl+U` (commonly **clear line / kill backward**) |

---

## Copy / paste

| Shortcut | Action |
|---|---|
| `Ctrl + Shift + c` | Copy to Clipboard |
| `Ctrl + Shift + v` | Paste from Clipboard |

---

## Tabs

### Spawn / close

| Shortcut | Action |
|---|---|
| `SUPER + t` | Spawn new tab (DefaultDomain) |
| `SUPER_REV + w` | Close current tab (no confirm) |

### Navigate / reorder

| Shortcut | Action |
|---|---|
| `SUPER + [` | Previous tab |
| `SUPER + ]` | Next tab |
| `SUPER_REV + [` | Move tab left |
| `SUPER_REV + ]` | Move tab right |

### Title / tab bar

| Shortcut | Action |
|---|---|
| `SUPER + 0` | Emit event: `tabs.manual-update-tab-title` |
| `SUPER_REV + 0` | Emit event: `tabs.reset-tab-title` |
| `SUPER + 9` | Emit event: `tabs.toggle-tab-bar` |

---

## Window

| Shortcut | Action |
|---|---|
| `SUPER + n` | Spawn new window |

*(Your “zoom window” size/maximize bindings are commented out.)*

---

## Background controls (backdrops)

| Shortcut | Action |
|---|---|
| `SUPER + /` | Random backdrop |
| `SUPER + ,` | Previous backdrop |
| `SUPER + .` | Next backdrop |
| `SUPER_REV + /` | Background picker (InputSelector, fuzzy) |
| `SUPER + b` | Toggle focus backdrop mode |

---

## Panes

### Split / zoom / close

| Shortcut | Action |
|---|---|
| `SUPER + -` | Split **vertical** (CurrentPaneDomain) |
| `SUPER + \\` | Split **horizontal** (CurrentPaneDomain) |
| `SUPER + Enter` | Toggle pane zoom |
| `SUPER + w` | Close current pane (no confirm) |

> Note the intentional difference: **`SUPER+w` closes pane**, **`SUPER_REV+w` closes tab**.

### Pane navigation / swap

| Shortcut | Action |
|---|---|
| `SUPER + k` | Focus pane up |
| `SUPER + j` | Focus pane down |
| `SUPER + h` | Focus pane left |
| `SUPER + l` | Focus pane right |
| `SUPER_REV + p` | Pane select (alphabet `1234567890`) → swap with active & keep focus |

### Scroll within pane

| Shortcut | Action |
|---|---|
| `SUPER + u` | Scroll up 5 lines |
| `SUPER + d` | Scroll down 5 lines |
| `PageUp` | Scroll up ~0.75 page |
| `PageDown` | Scroll down ~0.75 page |

---

## Leader key tables

### Enter key-table modes

| Shortcut | Action |
|---|---|
| `LEADER` then `f` | Enter **resize_font** mode |
| `LEADER` then `p` | Enter **resize_pane** mode |

### `resize_font` table

| Key (while in table) | Action |
|---|---|
| `k` | Increase font size |
| `j` | Decrease font size |
| `r` | Reset font size |
| `Escape` / `q` | Exit table |

### `resize_pane` table

| Key (while in table) | Action |
|---|---|
| `k` | Resize pane up (1) |
| `j` | Resize pane down (1) |
| `h` | Resize pane left (1) |
| `l` | Resize pane right (1) |
| `Escape` / `q` | Exit table |

---

## Mouse bindings

| Mouse | Action |
|---|---|
| `Ctrl + Left Click` | Open link at mouse cursor |

---

## Notes
