# Neuro Karaoke Player: Flatpak Edition

This is a Flatpak wrapper for the [Neuro Karaoke Player](https://github.com/AferilVT/neuro-karaoke-wrapper).
The goal of this app is to provide a sandboxed flatpak version of the app for security and portability.

## Installing

Ensure you have the flathub repo installed.

Grab the `.flatpak` file, and install it using

```
flatpak install --user [path to file].flatpak
```

Due to the nature of the app being a simple web wrapper for neurokaraoke.com, it cannot be released on flathub due to their own policies.


## Build

You need `flatpak-builder` and `bsdtar` tools.

Clone the repo

```
git clone https://codeberg.org/felitaridev/neuro-karaoke-player-flatpak
cd neuro-karaoke-player-flatpak
```

To build and install, use

```
./build.sh --install
```

To create a `.flatpak` file to distribute, run
```
./build.sh --publish
```

To delete flatpak-builder files, run
```
./build.sh --cleanup
```
