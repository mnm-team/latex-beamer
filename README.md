LMU Beamer Theme
================

**This project is aiming to provide users with a beamer theme following the [LMU
corporate design][1].**

Usage
-----

Copy the project files into your presentation's directory:

    git clone https://gitlab.physik.uni-muenchen.de/LDAP_cipwheel/lmu-beamer-theme.git

In your presentation, use the *beamer* document class and tell it to use the LMU
theme:

```latex
\documentclass[
    compress,   % compresses the navigation into one line
    utf8        % good for using ö,ä,ü,ß,...
]{beamer}

\usetheme{LMU}
```

Documentation
-------------

This project provides the file *lmu-example.tex*. It shows how to use the beamer
theme explicitly and some more things you might want to do in a more technical
presentation.

For general information on presentations with the beamer package reading the
[original documentation][2] is highly recommended. For hacking the LMU theme you
will also need to understand the [PGF/TikZ package][3].

Status of the Project
---------------------

This project is in alpha-stage.

This project follows the [Semantic Versioning Specification][4].

[1]: http://www.uni-muenchen.de/aktuelles/publikationen/cd/index.html "LMU Corporate Design"
[2]: http://ctan.org/pkg/beamer "beamer Documentation"
[3]: https://ctan.org/pkg/pgf "PGF/TikZ Documentation"
[4]: http://semver.org "Semantic Versioning Specification"
