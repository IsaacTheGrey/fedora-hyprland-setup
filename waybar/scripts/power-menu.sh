#!/usr/bin/env bash
# Waybar exports WAYBAR_CLICK_BUTTON: 1=left, 2=middle, 3=right

case "$WAYBAR_CLICK_BUTTON" in
  1) hyprctl dispatch exit    ;;  # logout
  2) systemctl reboot         ;;  # reboot
  3) sudo shutdown -P +1       ;;  # shutdown
  *) exit 0                   ;;  # anything else, do nothing
esac
#!/usr/bin/env bash

# Waybar sets $WAYBAR_CLICK_BUTTON to 1 (left), 2 (middle), 3 (right)
case "$WAYBAR_CLICK_BUTTON" in
  1)  # left-click → logout
      hyprctl dispatch exit
      ;;
  2)  # middle-click → reboot
      systemctl reboot
      ;;
  3)  # right-click → poweroff
      systemctl poweroff
      ;;
esac
