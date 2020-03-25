---
theme: lmu
title: "Title"
subtitle: "Subtitle"
author:
  - "Max Mustermann"
  - "Karl Wombat"
institute: "MNM-Team, LMU München"
date: April 04, 2018
toc: false
biblio-title: References
slide-level: 2
---

# Overview

## Motivation

- The LMU provides students, professors and other staff with
  - Corporate Design Manual [@lmu2006]
  - Web-Styleguide [@lmu2007]
  - templates for MS Office^[Although we really dislike MS Products]
- The IT-Service for Physics provides some \LaTeX\ templates such as beamer theme [@lmu2014].
- The MNM Team again modernized this and changed the ratio to 16:9.

## Usage

- install the style-files in your project-directory

  - beamerthemeLMU.sty
  - beamerinnerthemelmu.sty
  - beamerouterthemelmu.sty
  - beamercolorthemelmu.sty
  - beamerfontthemelmu.sty

- Write simple Markdown documents like this
- We will show you some nice features.

## Code

```latex
\documentclass[
    compress,    % compresses navigation bar
]{beamer}

\usetheme{LMU}   % enable LMU theme
```

## Description Lists

You may consult further advice online. Note that this is a description list

pandoc
~ <https://pandoc.org/MANUAL.html>

beamer
~ <https://pandoc.org/MANUAL.html#producing-slide-shows-with-pandoc>

## Block Environment

### This is a block

This is the content in a block. This is caused by the slide-level parameter in
the YAML config. See above.

## General advice

- Stay simple in Markdown
- Do not overuse this. Markdown and Beamer is certainly some magic.
- Making simple and nice looking presentations has never been simpler.

BUT...

. . .

- Do not misuse. Use Latex if you need more complex things.
- Markdown is _powerful_ due to its simplicity.
- It is done for **easy** text editing.

## Tables

Latex tables are always a pain. In Markdown it is much easier.

| Syntax    | Description |
| --------- | ----------- |
| Header    | Title       |
| Paragraph | Text        |

## Figures

![This is the caption](../lmulogo.pdf)
