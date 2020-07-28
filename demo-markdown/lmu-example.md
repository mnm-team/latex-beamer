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

## Background

- The LMU provides students, professors and other staff with
  - Corporate Design Manual [@lmu2006]
  - Web-Styleguide [@lmu2007]
  - templates for MS Office^[Although we really dislike MS Products]
- The IT-Service for Physics provides some \LaTeX\ templates such as beamer theme [@lmu2014].
- The MNM Team again modernized this
  - New theme based on recently revised corporate design templates.
  - 16:9 format
  - Use Markdown to write presentations which is even simpler than Powerpoint.

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

Latex tables are always a pain. In Markdown it's way easier. Here is an example
using pipe syntax.

| Syntax    | Description |
| --------- | ----------- |
| Header    | Title       |
| Paragraph | Text        |

## Multiline Tables

This is an example of multiline tables. Everything is documented in Pandocs
user guide.^[https://pandoc.org/MANUAL.html#tables]

<!--
here we change the font size because our table is too large for a single frame.
-->

\small

-------------------------------------------------------------
 Centered   Default           Right Left
  Header    Aligned         Aligned Aligned
----------- ------- --------------- -------------------------
   First    row                12.0 Example of a row that
                                    spans multiple lines.

  Second    row                 5.0 Here's another one. Note
                                    the blank line between
                                    rows.
-------------------------------------------------------------

Table: Here's the caption. It, too, may span
multiple lines.

## Figures

![This is the caption](../lmulogo.pdf)
