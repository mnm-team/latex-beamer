#!/usr/bin/env perl

$clean_ext.="%R.nav %R.snm %R.vrb";

$bibtex_use = 1.5;

# delete files gener by cusdeps
$cleanup_includes_cusdep_generated = 1;

$pdflatex = 'pdflatex -synctex=1 %O %S';

my $texinputs = $ENV{'TEXINPUTS'} || '';

$ENV{'TEXINPUTS'} = $texinputs . ':..//';

