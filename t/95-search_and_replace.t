#!/usr/bin/perl

use strict;
use warnings;
use Test::More;

BEGIN {
	unless ( $ENV{DISPLAY} or $^O eq 'MSWin32' ) {
		plan skip_all => 'Needs DISPLAY';
		exit 0;
	}
	plan tests => 25;
}
use File::Copy qw(copy);
use File::Spec::Functions qw(catfile);
use Test::NoWarnings;
use t::lib::Padre;
use Padre;

my $padre = Padre->new;

my $text = <<'EOTEXT';
Roses are red,
Violets are blue,
All your base are belong to us.
EOTEXT

use_ok 'Padre::Search';

## commands below should work
SCOPE: {
	my $search = new_ok 'Padre::Search', [find_term => 'are'];
	
	ok my ($first_char, $last_char, @all) = $search->matches(
		$text,
		qr/are/,
		0,
		length($text),
	), 'calling matches with proper parameters should work';

	is $first_char, 6, 'found first entry at position 6';
	is $last_char,  9, 'found first entry ending at position 9';
	is substr($text, $first_char, $last_char - $first_char), 'are', 'position is correct';
	
	is_deeply \@all, [
		[6,   9],
		[23, 26],
		[47, 50],
	], 'matches returns a correct structure';
}

SCOPE: {
	my $search = new_ok 'Padre::Search', [find_term => 'are'];
	my $sel_begin = 5;
	my $sel_end   = 30;
	
	ok my ($first_char, $last_char, @all) = $search->matches(
		substr( $text, $sel_begin, $sel_end - $sel_begin ),
		qr/are/,
		0,
		$sel_end - $sel_begin,
	), 'calling matches with proper parameters should work';

	is $first_char, 1, 'found relative entry at position 1';
	is $last_char,  4, 'found relative entry ending at position 4';
	is substr($text, $first_char + $sel_begin, $last_char - $first_char), 'are',
	'relative position is correct';
	
	is_deeply \@all, [
		[1,   4],
		[18, 21],
	], 'matches returns a correct relative structure (within selection)';
}

SCOPE: {
	my $search = new_ok 'Padre::Search', [find_term => 'style'];
	ok my $main = $padre->ide->wx->main, 'got main object';
	eval { $main->setup_editor( catfile( 't', 'files', 'perl_functions.pl' ) ) }; diag $@ if $@;
	is scalar $main->editors, 1, '1 editor loaded';
	
    ok my $doc    = $main->current->document, 'fetched document';
    ok my $editor = $doc->editor, 'fetched editor';
	ok $search->search_next($editor), 'calling search_next()';
	ok my ($begin, $end) = $editor->GetSelection, 'retrieving current selection';
	is $begin, 22, 'search_next() selects text with proper beginning position';
	is $end, 27, 'search_next() selects text with proper ending position';
	is $editor->GetTextRange( $begin, $end ), 'style', 'got the right text';
}

### commands below should generate an exception
eval {
	my $search = Padre::Search->new;
};
ok $@, 'initializing without "find_term" is ilegal';