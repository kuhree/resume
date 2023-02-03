<p align="center">
  <!-- <a href="https://example.com/"> -->
  <!--   <img src="https://via.placeholder.com/72" alt="Logo" width=72 height=72> -->
  <!-- </a> -->

  <h3 align="center">Markdown CV & Resume</h3>

  <p align="center">
    This repo that allows me to keep a version-controlled plain text resume the can be transformed on the fly.
    <br>
    <a href="https://github.com/kuhreee/cv/issues/new?template=bug.md">Report bug</a>
    ·
    <a href="https://github.com/kuhreee/cv/issues/new?template=feature.md&labels=feature">Request feature</a>
  </p>
</p>

<!--- These are examples. See https://shields.io for others or to customize this set of shields. You might want to include dependencies, project status and licence info here --->

![GitHub repo size](https://img.shields.io/github/repo-size/kuhree/cv)
![GitHub contributors](https://img.shields.io/github/contributors/kuhree/cv)
![GitHub stars](https://img.shields.io/github/stars/kuhree/cv?style=social)
![GitHub forks](https://img.shields.io/github/forks/kuhree/cv?style=social)
![Twitter Follow](https://img.shields.io/twitter/follow/kuhreee?style=social)

## Table of contents

- [Quick start](#quick-start)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [Contributors](#contributors)
- [Contact](#contact)
- [License](#license)

## Quick start

- Install deps
- Run `make`
- Use the files in `dist` for whatever you need.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- You will need `make`, `wkhtmltopdf`, and `pandoc` installed on your machine.

## Dependencies

To install dependencies, follow these steps:

homebrew:

```
# make should already be installed on MacOS
brew install pandoc wkhtmltopdf
```

## Usage

To use this repo, follow these steps:

```
make pdf # Create a new pdf
make html # Create a new html
# Use files in the `dist` folder

docker build -t cv . # Build a docker image to serve the html version
```

## License

This project uses the following license: [The Unlicense](./LICENSE).
