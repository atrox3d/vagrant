#!/bin/bash
echo "forcing colors in ~vagrant/.bashrc"
sed -i 's/#force_color_prompt=yes/force_color_prompt=yes/g' ~vagrant/.bashrc
