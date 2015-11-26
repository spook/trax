# trax Staff Management System
# GUI styles package
# (c) 2011 by Steve Roscio, all rights reserved.

package trax::style;
require Exporter;
our @ISA    = qw(Exporter);
our @EXPORT = qw(
    $COLOR_BLACK
    $COLOR_BLUE
    $COLOR_CYAN
    $COLOR_ORANGE
    $COLOR_WHITE

    $COLOR_STATE_NO_INFO
    $COLOR_STATES_BG
    $COLOR_STATES_FG

    $FONT_XXL
    $FONT_XL
    $FONT_LG
    $FONT_BG
    $FONT_MD
    $FONT_SM
    $FONT_XS
    );

our $COLOR_BLACK    = "#000000";
our $COLOR_BLUE     = "#0000ff";
our $COLOR_CYAN     = "#00ffff";
our $COLOR_ORANGE   = "#ffa500";
our $COLOR_WHITE    = "#ffffff";

# User presence state colors
#our $COLOR_STATE_NO_INFO  = "#8b8989";                          # No info, dark grey
our $COLOR_STATE_NO_INFO  = "#cccccc";                           # No info, dark grey
our $COLOR_STATES_BG = {here => ['#81ff81', '#00c000', '#689868'],  # greens
                        gone => ['#bc81ff', '#5a00c0', '#7f6898'],  # violets
                        miss => ['#ff8181', '#c00000', '#986868'],  # reds
                        xtra => ['#81ffff', '#00bdc0', '#689898'],  # cyans
                       };
our $COLOR_STATES_FG = {here => ['#000000', '#ffffff', '#ffffff'],  # greens
                        gone => ['#000000', '#ffffff', '#ffffff'],  # violets
                        miss => ['#000000', '#ffffff', '#ffffff'],  # reds
                        xtra => ['#000000', '#ffffff', '#ffffff'],  # cyans
                       };

our $FONT_XXL = "sans-serif 35";    # Standard extra extra large font
our $FONT_XL  = "sans-serif 28";    # Standard extra large font
our $FONT_LG  = "sans-serif 21";    # Standard large font
our $FONT_BG  = "sans-serif 17";    # Standard big font
our $FONT_MD  = "sans-serif 12";    # Standard medium font
our $FONT_SM  = "sans-serif 9";     # Standard small font
our $FONT_XS  = "sans-serif 7";     # Standard extra small font

1;
