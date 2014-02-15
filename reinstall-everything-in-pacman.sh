# This command will reinstall all packages which were installed from pacman
# Caveat: All packages will be marked as explicitly installed, not as
#         dependencies.

pacman -S $(pacman -Qq | grep -vx "$( pacman -Qmq )" | tr "\n" " ")
