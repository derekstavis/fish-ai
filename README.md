<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

#### fish-ai
> Don't remember the command? Use `ai` to figure out.

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v3.0.0-007EC7.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>


## Install

You will need `curl` and `jq` installed. Define your `OPENAI_API_KEY`
using `set -U OPENAI_API_KEY <your key>` and then install the plugin:

```fish
$ omf install fish-ai
```

## Usage

Use `ai <what you wanna do>` to get the corresponding command.

```fish

```fish
$ ai convert image.jpg to image.png
$ # command line is automatically generated
$ convert image.png -quality 75 image.jpg
```

# License

[MIT][mit] © [Derek Stavis][author] et [al][contributors]


[mit]:            https://opensource.org/licenses/MIT
[author]:         https://github.com/derekstavis
[contributors]:   https://github.com/derekstavis/fish-ai/graphs/contributors
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
