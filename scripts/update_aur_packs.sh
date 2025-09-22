#!/bin/zsh

for package_dir in ${HOME}/AUR_Packages/*/; do
  if [ "${package_dir}"!="${HOME}/clones_repos/dotfiles" ]; then
    echo "${package_dir}"
    cd && cd "${package_dir}" && git pull && makepkg -s -i -c
  fi
done
