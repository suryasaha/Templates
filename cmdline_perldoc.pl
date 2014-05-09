#!/usr/bin/perl

=head1 NAME

cmdline_perldoc.pl

=head1 SYNOPSIS

cmdline_perldoc.pl -g [??? file] <other params>

=head1 COMMAND-LINE OPTIONS

 -g  old GFF file (required)
 -d  debugging messages (1 or 0)
 -h  Help

=cut

our ( $opt_g, $opt_d, $opt_h );
getopts('g:d:h');
if ($opt_h) {
	help();
	exit;
}

if ( !$opt_g ) {
	print "\nTPF or AGP file and type are required. See help below\n\n\n";
	help();
}









#----------------------------------------------------------------------------

sub help {
	print STDERR <<EOF;
  $0:

    Description:

     ??????????????
     
    NOTE:


    Usage:
      cmdline_perldoc.pl -g [?? file] <other params>
      
    Flags:

		 -g  old GFF file (required)
		 -d  debugging messages (1 or 0)
		 -h  Help

EOF
	exit(1);
}

=head1 LICENSE

  Same as Perl. Change??????????

=head1 AUTHORS

  Surya Saha <suryasaha@cornell.edu , @SahaSurya>

=cut
