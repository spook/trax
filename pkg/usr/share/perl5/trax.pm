# trax.pm


use strict;
use warnings;

package trax;

use Carp qw(cluck);
require Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw($CONFIG_FILE 
                 $TRAX_NAME
                 $TRAX_VERSION
                );

our $TRAX_NAME    = "Hauntix Ticketing System";
our $TRAX_VERSION = "v0.1";
our $CONFIG_FILE = '/etc/trax/trax.conf';

1;
