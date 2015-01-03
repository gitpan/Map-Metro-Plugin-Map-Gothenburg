use 5.14.0;

package Map::Metro::Plugin::Map::Gothenburg;

our $VERSION = '0.1000'; # VERSION

use Moose;
with 'Map::Metro::Plugin::Map';

has '+mapfile' => (
    default => 'map-gothenburg.metro',
);
sub map_version {
    return $VERSION;
}
sub map_package {
    return __PACKAGE__;
}

1;

__END__

=encoding utf-8

=head1 NAME

Map::Metro::Plugin::Map::Gothenburg - Map::Metro map for Gothenburg

=head1 SYNOPSIS

    use Map::Metro;
    my $graph = Map::Metro->new('Gothenburg')->parse;

=head1 DESCRIPTION

See L<Map::Metro> for usage information.

=head1 Status

As of 2015-jan-03 it contains all twelve regular tram lines, see L<wikipedia|https://en.wikipedia.org/wiki/Gothenburg_tram_network>.

=begin HTML

<p><a href="https://raw.githubusercontent.com/Csson/p5-Map-Metro-Gothenburg/master/static/images/gothenburg.png"><img src="https://raw.githubusercontent.com/Csson/p5-Map-Metro-Gothenburg/master/static/images/gothenburg.png" style="max-width: 600px" /></a></p>

=end HTML

=head1 AUTHOR

Erik Carlsson E<lt>info@code301.comE<gt>

=head1 COPYRIGHT

Copyright 2015 - Erik Carlsson

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
