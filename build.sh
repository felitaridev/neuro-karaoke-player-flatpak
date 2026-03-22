#!/bin/bash

if [[ "$1" == "--cleanup" ]]; then
	rm -Rf .flatpak-builder/ repo/ builddir/
	exit $?
fi

which flatpak-builder
if [ $? -eq 0 ]; then
	if [[ "$1" == "--install" ]]; then
		flatpak-builder --force-clean --user --install-deps-from=flathub --repo=repo --install builddir io.github.AferilVT.neuro_karaoke_player.yml
	elif [[ "$1" == "--publish" ]]; then
		flatpak-builder --force-clean --user --install-deps-from=flathub --repo=repo builddir io.github.AferilVT.neuro_karaoke_player.yml
		flatpak build-bundle repo io.github.AferilVT.neuro_karaoke_player.flatpak io.github.AferilVT.neuro_karaoke_player --runtime-repo=https://flathub.org/repo/flathub.flatpakrepo
	fi
else
	echo "You need flatpak-builder. Install it from the repo to build flatpaks"
	exit 255
fi

