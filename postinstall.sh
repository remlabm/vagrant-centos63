#!/usr/bin/env bash
set -x

unset HISTFILE
history -c

[ -f /root/.bash_history ] && rm /root/.bash_history
[ -f /home/vagrant/.bash_history ] && rm /home/vagrant/.bash_history

rm /home/vagrant/{base,chef,cleanup,puppet,ruby,vagrant,virtualbox,zerodisk}.sh || true

yum -y clean all

find /var/log/ -type f \( ! -iname "*.gz" \) | while read filename; do
    cat /dev/null > "$filename"
done

find /var/log/ -type f \( -iname "*.gz" \) | while read filename; do
    rm -f "$filename"
done

dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
