# ----------------------------------------------------------------------
# Curses::UI::TextViewer
#
# (c) 2001-2002 by Maurice Makaay. All rights reserved.
# This file is part of Curses::UI. Curses::UI is free software.
# You can redistribute it and/or modify it under the same terms
# as perl itself.
#
# e-mail: maurice@gitaar.net
# ----------------------------------------------------------------------

package Curses::UI::TextViewer;

use strict;
use Curses;
use Curses::UI::TextEditor;

use vars qw($VERSION @ISA);
@ISA = qw(Curses::UI::TextEditor);
$VERSION = '1.01';
	
sub new ()
{
	my $class = shift;

	my %args = ( 
		@_,
		-readonly	 => 1,
	);
	return $class->SUPER::new( %args);
}

1;

__END__

=pod

=head1 NAME

Curses::UI::TextViewer - Create and manipulate textviewer widgets

=head1 SYNOPSIS

    use Curses::UI;
    my $cui = new Curses::UI;
    my $win = $cui->add('window_id', 'Window');

    my $textviewer = $win->add( 
        'mytextviewer', 'TextViewer',
	-text => "Hello, world!\n"
               . "Goodbye, world!"
    );

    $textviewer->focus();


=head1 DESCRIPTION

Curses::UI::TextViewer is a widget that can be used 
to create a textviewer widget. This class is
derived from Curses::UI::TextEditor. The
only special thing about this class is that the 
B<-readonly> option is forced to a true value. 
So for the usage of Curses::UI::TextViewer see
L<Curses::UI::TextEditor|Curses::UI::TextEditor>).




=head1 SEE ALSO

L<Curses::UI|Curses::UI>, 
L<Curses::UI::TextEditor|Curses::UI::TextEditor>, 




=head1 AUTHOR

Copyright (c) 2001-2002 Maurice Makaay. All rights reserved.

This package is free software and is provided "as is" without express
or implied warranty. It may be used, redistributed and/or modified
under the same terms as perl itself.

=end

