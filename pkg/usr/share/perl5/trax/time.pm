# trax Staff Management System
# utility date/time functions
# (c) 2011 by Steve Roscio, all rights reserved.
use strict;
use warnings;

package trax::time;
use Time::Local;
require Exporter;
our @ISA    = qw(Exporter);
our @EXPORT = qw(
    epochtime
    isotime
    tpart
    );

# Return a local epochtime int from the given ISO time string
sub epochtime {
    my $s = shift;
    return 0 unless $s =~ m/^(\d{4})-(\d\d)-(\d\d)\s(\d\d)\:(\d\d)\:(\d\d)$/;
    return timelocal($6,$5,$4,$3,$2-1,$1-1900);
}

# ISO8601 string of local time (without the "T" inbetween) - also good for database timestamps
sub isotime {
    my $t = shift || time();
    my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime($t);
    return sprintf '%4.4d-%2.2d-%2.2d %2.2d:%2.2d:%2.2d',
            $year+1900, $mon+1, $mday, $hour, $min, $sec;

}

# Returns the time partition that contains the given time
sub tpart {
    my ($trax, $t) = @_;
    my $cfg = $trax->{cfg};
    $t ||= time();    # default to now

    # Get partition time
    my $ptstr = $cfg->{bt}->{partition}
        || q{};    # TODO: not specific to {bt}, move to own section
    my ($ph, $pm, $ps) = split(/\s*\:\s*/, $ptstr);
    $ph //= 3;
    $pm //= 0;
    $ps //= 0;         #/
    my $ptime = $ph * 3600 + $pm * 60 + $ps;

    # Calculate start of partition
    my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime($t);
    my $ttime = $hour * 3600 + $min * 60 + $sec;
    my $alpha = timelocal($ps, $pm, $ph, $mday, $mon, $year);
    $alpha -= 24 * 60 * 60 if $ttime < $ptime;

    # End of partition
    my $omega = $alpha + 24 * 60 * 60 - 1;

    return [$alpha, $omega];
}

1;

