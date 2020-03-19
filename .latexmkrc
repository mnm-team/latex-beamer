#!/usr/bin/env perl

$ENV{'TEXINPUTS'} = './style//:';

$clean_ext.="%R.nav %R.snm %R.vrb";

$bibtex_use = 1.5;

# delete files gener by cusdeps
$cleanup_includes_cusdep_generated = 1;

