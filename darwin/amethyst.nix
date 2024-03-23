
{ config, pkgs, lib, ... }: {
    home.file.amethyst = {
        target = ".config/amethyst/amethyst.yml";
        text = ''
        # layouts - Ordered list of layouts to use by layout key (default tall, wide, fullscreen, and column).
        layouts:
          # - bsp
          # - widescreen-tall
          - tall
          - wide
          - column
          - fullscreen
          # - tall-right
          # - two-pane
          # - middle-wide
          # - 3column-left
          # - 3column-middle
          # - 3column-right
          # - 4column-left
          # - 4column-right
          # - row
          # - floating
          # - widescreen-tall-right

        # First mod (default option + shift).
        mod1:
          - option
          # - shift
          # - control
          # - command

        # Second mod (default option + shift + control).
        mod2:
          - option
          - shift
          # - control
          # - command

        # Commands:
        # special key values
        # space
        # enter
        # up
        # right
        # down
        # left

        # special characters require quotes
        # '.'
        # ','

        # Move to the next layout in the list.
        cycle-layout:
          mod: mod2
          key: space

        # Move to the previous layout in the list.
        cycle-layout-backward:
          mod: <NONE>
          key: <NONE>

        # Shrink the main pane by a percentage of the screen dimension as defined by window-resize-step. Note that not all layouts respond to this command.
        shrink-main:
          mod: mod1
          key: h

        # Expand the main pane by a percentage of the screen dimension as defined by window-resize-step. Note that not all layouts respond to this command.
        expand-main:
          mod: mod1
          key: l

        # Increase the number of windows in the main pane. Note that not all layouts respond to this command.
        increase-main:
          mod: <NONE>
          key: <NONE>

        # Decrease the number of windows in the main pane. Note that not all layouts respond to this command.
        decrease-main:
          mod: <NONE>
          key: <NONE>

        # General purpose command for custom layouts. Functionality is layout-dependent.
        # command1:
        #   mod: <NONE>
        #   key: <NONE>
        # General purpose command for custom layouts. Functionality is layout-dependent.
        # command2:
        #   mod: <NONE>
        #   key: <NONE>
        # General purpose command for custom layouts. Functionality is layout-dependent.
        # command3:
        #   mod: <NONE>
        #   key: <NONE>
        # General purpose command for custom layouts. Functionality is layout-dependent.
        # command4:
        #   mod: <NONE>
        #   key: <NONE>

        # Focus the next window in the list going counter-clockwise.
        focus-ccw:
          mod: mod1
          key: k

        # Focus the next window in the list going clockwise.
        focus-cw:
          mod: mod1
          key: j

        # Focus the main window in the list.
        focus-main:
          mod: <NONE>
          key: <NONE>

        # Focus the next screen in the list going counter-clockwise.
        focus-screen-ccw:
          mod: <NONE>
          key: <NONE>

        # Focus the next screen in the list going clockwise.
        focus-screen-cw:
          mod: mod1
          key: ','

        focus-screen-1:
          mod: <NONE>
          key: <NONE>

        focus-screen-2:
          mod: <NONE>
          key: <NONE>
          
        focus-screen-3:
          mod: <NONE>
          key: <NONE>

        focus-screen-4:
          mod: <NONE>
          key: <NONE>

        # Move the currently focused window onto the next screen in the list going counter-clockwise.
        swap-screen-ccw:
          mod: <NONE>
          key: <NONE>

        # Move the currently focused window onto the next screen in the list going clockwise.
        swap-screen-cw:
          mod: <NONE>
          key: <NONE>

        # Swap the position of the currently focused window with the next window in the list going counter-clockwise.
        swap-ccw:
          mod: mod2
          key: k

        # Swap the position of the currently focused window with the next window in the list going clockwise.
        swap-cw:
          mod: mod2
          key: j

        # Swap the position of the currently focused window with the main window in the list.
        swap-main:
          mod: <NONE>
          key: <NONE>

        # Move focus to the n-th screen in the list; e.g., focus-screen-3 will move mouse focus to the 3rd screen. Note that the main window in the given screen will be focused.
        #focus-screen-n:
        # focus-screen-<screen-number>:
        #   mod: mod1
        #   key: y
        # Move the currently focused window to the n-th screen; e.g., throw-screen-3 will move the window to the 3rd screen.
        # throw-screen-n:
        # throw-screen-<screen-number>:
        #   mod: mod1
        #   key: u
        # Move the currently focused window to the n-th space; e.g., throw-space-3 will move the window to the 3rd space.
        throw-space-1:
          mod: mod2
          key: 1
          
        throw-space-2:
          mod: mod2
          key: 2
          
        throw-space-3:
          mod: mod2
          key: 3

        throw-space-4:
          mod: mod2
          key: 4

        throw-space-5:
          mod: mod2
          key: 5

        throw-space-6:
          mod: mod2
          key: 6

        throw-space-7:
          mod: mod2
          key: 7

        throw-space-8:
          mod: mod2
          key: 8

        throw-space-9:
          mod: mod2
          key: 9

        # Select tall layout
        select-tall-layout:
          mod: <NONE>
          key: <NONE>

        # Select wide layout
        select-wide-layout:
          mod: <NONE>
          key: <NONE>

        # Select fullscreen layout
        select-fullscreen-layout:
          mod: <NONE>
          key: <NONE>

        # Select column layout
        select-column-layout:
          mod: <NONE>
          key: <NONE>

        # Move the currently focused window to the space to the left.
        throw-space-left:
          mod: mod2
          key: left

        # Move currently the focused window to the space to the right.
        throw-space-right:
          mod: mod2
          key: right

        # Toggle the floating state of the currently focused window; i.e., if it was floating make it tiled and if it was tiled make it floating.
        toggle-float:
          mod: <NONE>
          key: <NONE>

        # Display the layout HUD with the current layout on each screen.
        display-current-layout:
          mod: <NONE>
          key: <NONE>

        # Turn on or off tiling entirely.
        toggle-tiling:
          mod: <NONE>
          key: <NONE>

        # Rerun the current layout's algorithm.
        reevaluate-windows:
          mod: mod1
          key: z

        # Turn on or off focus-follows-mouse.
        toggle-focus-follows-mouse:
          mod: <NONE>
          key: <NONE>

        # Automatically quit and reopen Amethyst.
        relaunch-amethyst:
          mod: <NONE>
          key: <NONE>

        # disable screen padding on builtin display
        disable-padding-on-builtin-display: false

        # Boolean flag for whether or not to add margins betwen windows (default false).
        # window-margins: false

        # Boolean flag for whether or not to set window margins if there is only one window on the screen, assuming window margins are enabled (default false).
        smart-window-margins: false

        # # Add 10px margin between windows
        window-margins: true
        window-margin-size: 5

        # The max number of windows that may be visible on a screen at one time before
        # additional windows are minimized. A value of 0 disables the feature.
        window-max-count: 0

        # The smallest height that a window can be sized to regardless of its layout frame (in px, default 0).
        window-minimum-height: 0

        # The smallest width that a window can be sized to regardless of its layout frame (in px, default 0)
        window-minimum-width: 0

        # List of bundle identifiers for applications to either be automatically floating or automatically tiled based on floating-is-blacklist (default []).
        floating: []

        # Boolean flag determining behavior of the floating list. true if the applications should be floating and all others tiled. false if the applications should be tiled and all others floating (default true).
        floating-is-blacklist: true

        # true if screen frames should exclude the status bar. false if the screen frames should include the status bar (default false).
        ignore-menu-bar: false

        # true if windows smaller than a 500px square should be floating by default (default true)
        float-small-windows: true

        # true if the mouse should move position to the center of a window when it becomes focused (default false). Note that this is largely incompatible with focus-follows-mouse.
        mouse-follows-focus: true

        # true if the windows underneath the mouse should become focused as the mouse moves (default false). Note that this is largely incompatible with mouse-follows-focus
        # focus-follows-mouse: false

        # true if dragging and dropping windows on to each other should swap their positions (default false).
        mouse-swaps-windows: true

        # true if changing the frame of a window with the mouse should update the layout to accommodate the change (default false). Note that not all layouts will be able to respond to the change.
        mouse-resizes-windows: false

        # true to display the name of the layout when a new layout is selected (default true).
        enables-layout-hud: true

        # true to display the name of the layout when moving to a new space (default true).
        enables-layout-hud-on-space-change: true

        # true to get updates to beta versions of the software (default false).
        use-canary-build: false

        # true to insert new windows into the first position and false to insert new windows into the last position (default false).
        new-windows-to-main: false

        # true to automatically move to a space when throwing a window to it (default true).
        follow-space-thrown-windows: false

        # The integer percentage of the screen dimension to increment and decrement main pane ratios by (default 5).
        window-resize-step: 5

        # Padding to apply between windows and the left edge of the screen (in px, default 0).
        screen-padding-left: 0

        # Padding to apply between windows and the right edge of the screen (in px, default 0).
        screen-padding-right: 0

        # Padding to apply between windows and the top edge of the screen (in px, default 0).
        screen-padding-top: 0

        # Padding to apply between windows and the bottom edge of the screen (in px, default 0).
        screen-padding-bottom: 0

        # true to maintain layout state across application executions (default true).
        restore-layouts-on-launch: true

        # true to display some optional debug information in the layout HUD (default false).
        debug-layout-info: false
        '';
    };
}