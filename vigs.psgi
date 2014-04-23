use strict;
use warnings;

use VIGS;

my $app = VIGS->apply_default_middlewares(VIGS->psgi_app);
$app;

