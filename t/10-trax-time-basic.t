#!/usr/bin/perl -w
# trax Staff Management System
# test for utility date/time functions
# (c) 2011 by Steve Roscio, all rights reserved.

use strict;
use lib 'pkg/usr/share/perl5';
use Test::More tests => 20;
use trax::time;

is isotime(1324598941), '2011-12-22 17:09:01', "isotime a";
is isotime(1324544584), '2011-12-22 02:03:04', "isotime b";
is isotime(1293962645), '2011-01-02 03:04:05', "isotime c";
is isotime(1293876000), '2011-01-01 03:00:00', "isotime d";
is isotime(1293875999), '2011-01-01 02:59:59', "isotime e";

is epochtime('2011-12-22 17:09:01'), 1324598941, "epochtime a";
is epochtime('2011-12-22 02:03:04'), 1324544584, "epochtime b";
is epochtime('2011-01-02 03:04:05'), 1293962645, "epochtime c";
is epochtime('2011-01-01 03:00:00'), 1293876000, "epochtime d";
is epochtime('2011-01-01 02:59:59'), 1293875999, "epochtime e";


my $p = tpart({}, 1324598941);  # 2011-12-22 17:09:01
is isotime($p->[0]), '2011-12-22 03:00:00', "tpart a start";
is isotime($p->[1]), '2011-12-23 02:59:59', "tpart a end";

$p = tpart({}, 1324544584);     # 2011-12-22 02:03:04
is isotime($p->[0]), '2011-12-21 03:00:00', "tpart b start";
is isotime($p->[1]), '2011-12-22 02:59:59', "tpart b end";

$p = tpart({}, 1293962645);     # 2011-01-02 03:04:05
is isotime($p->[0]), '2011-01-02 03:00:00', "tpart c start";
is isotime($p->[1]), '2011-01-03 02:59:59', "tpart c end";

$p = tpart({}, 1293876000);     # 2011-01-01 03:00:00
is isotime($p->[0]), '2011-01-01 03:00:00', "tpart d start";
is isotime($p->[1]), '2011-01-02 02:59:59', "tpart d end";

$p = tpart({}, 1293875999);     # 2011-01-01 02:59:59
is isotime($p->[0]), '2010-12-31 03:00:00', "tpart e start";
is isotime($p->[1]), '2011-01-01 02:59:59', "tpart e end";

