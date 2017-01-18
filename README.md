# TinTin++ Return of the Shadow Profile

Scripts for playing [Return of the Shadow][rots] with [TinTin++][tintin] and
[tmux][tmux].

## Contents

1. [Installation](#installation)
1. [Quick Start](#quick-start)
1. [Tmux Basics](#tmux-basics)
1. [General](#general)
1. [Chat Window](#chat-window)
1. [Spams](#spams)
1. [Ride](#ride)
1. [Login](#login)
1. [Profiles](#profiles)
1. [Exits](#exits)

### Installation

1. Clone or download this repository.
1. Install [TinTin++][tintin].
1. Install [tmux][tmux].

### Quick Start

1. Run `./play.sh`
1. Hit `F1` to connect
1. Exit with `#end`

### Tmux Basics

More documentation for tmux can be found with `man tmux` or at [tmux][tmux].

1. Hold `Shift` while selecting text to copy paste.
1. Switching panes with `Ctrl+b o`.
1. Scroll with `PgUp` and `PgDown`.
1. Enter editing mode with `Ctrl+b [`. `Esc` to exit edit mode.
1. In edit mode, scroll with arrow keys.
1. In edit mode, search with `Ctrl+s`.

Also, included is a `tmux.conf` that should allow mouse scrolling and window
selection. Try clicking a pane and using the mouse wheel.

### [General](/commands/general.tin)

* `F1` to connect
* Re-flee trigger on failed flee

### [Chat Window](/commands/chat.tin)

All `say`, `group-say`, `chat`, `narrate`, `sing`, `tell`, `yell`, `whisper`,
`petition`, and `wiznet` commands are captured and sent to a chat window.

To resize the chat window. Hit `Ctrl+b`, then:

```
# To make chat larger, type
:resize-pane -D 1

# To make chat smaller, type
:resize-pane -U 1
```

### [Spams](/commands/spams.tin)

Travel between two pre-determined locations. All spams have an inverse spam.
E.g., `bedtodfr` would also have `dfrtobed`.

**NOTE**: Some spams do not stay on the road or path.

* `bedtodfr`: From *Road Over an Ancient Streambed* to *Dark Forest Road*
	on the Old Forest Road east of Vinyanost.
* `bridgetodocks`: From *Rickety Bridge* to *The Forest Gate* near the docks on
	the Enchanted Path east of Maethelburg.
* `bridgetot`: From *Rickety Bridge* to *A Wide Landing Before The Gates*
	outside Thranduil's Hall on the Enchanted Path.
* `dfrtobone`: From *Dark Forest Road* to *A Bone Sculpture* in southeast
	Mirkwood.
* `dfrtoivy`: From *Dark Forest Road* to *The Old Forest Road* a few rooms north
	of Ivy. Entrance to Orc Caves.
* `dfrtomile`: From *Dark Forest Road* to *Old Forest Road Before a Large
	Milestone* connecting the Old Forest Road to the Road to Dale.
* `dgtofount`: From *Before the Barbican* north of Dol Guldur to *A Fountain on
	the Warpath*.
* `fiddstomile`: From *Road to Dale at the Entrance to the Fiddlers' Inn* to
	*Old Forest Road Before a Large Milestone* on the Road to Dale.
* `globstobone`: From *Spiked Barricade* outside of Glob's Barricade to *A Bone
	Sculpture* in southeast Mirkwood.
* `lttofidds`: From *On the Bridge before the Guard Post* outside Vinyanost to
	*Road to Dale at the Entrance to the Fiddlers' Inn*.
* `mbtovinny`: From *Before the South Gate of Maethelburg* to *Outside the North
	Gate of Vinyanost*.
* `ttolt`: From *A Wide Landing Before The Gates* outside Thranduil's Hall to
	*On the Bridge before the Guard Post* outside Vinyanost.
* `vinnytobed`: From *Eastern Shallows of the Anduin* east of Vinyanost to *Road
	Over an Ancient Streambed*.
* `vinnytorc`: From *Before the City of Vinyanost* to *Road Near a Large
	Campsite* outside of Ranger Camp.
* `founttoglobs`: From *A Fountain on the Warpath* to *Spiked Barricade* outside
	of Glob's Barricade.

### [Ride](/commands/ride.tin)

Following a character will set that character as your `$leader`. You can see
the `leader` variable with `#var`.

* `mount`: When `$leader` mounts
* `dismount`: When `$leader` stops riding

#### [Login](/commands/login.tin)

* Blow out dragon eye
* Load player profile

#### Profiles

At login, an action attempts to load a profile at `profiles/CharacterName.tin`.
You can place character specific commands in here or `#read` a shared
command file for the character's class.

### [Exits](/commands/exits)

* Faroth
* Vale

## TODO

* [ ] Make chat window location and size configurable
* [ ] Keep spams on the road where possible
* [ ] Add spams from `bedtoravine` and `ravinetofount` (matron?)
* [ ] Add spams to common super mobs

[rots]: http://rotsmud.wikia.com
[tintin]: http://tintin.sourceforge.net
[tmux]: https://tmux.github.io
