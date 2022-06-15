# removes existing theme
rm -rf /boot/grub/themes/grub-arch

# copies new theme
cp -TR ./theme /boot/grub/themes/grub-arch

# sets grub theme to grub-arch
sed -i 's/^GRUB_THEME.*/GRUB_THEME="/boot/grub/themes/grub-arch/theme.txt"'

# generates new grub.cfg
grub-mkconfig -o /boot/grub/grub.cfg