package Padre::Wx::FBP::Preferences2;

# This module was generated by Padre::Plugin::FormBuilder::Perl.
# To change this module, edit the original .fbp file and regenerate.
# DO NOT MODIFY BY HAND!

use 5.008;
use strict;
use warnings;
use Padre::Wx ();
use Padre::Wx::Role::Main ();

our $VERSION = '0.01';
our @ISA     = qw{
	Padre::Wx::Role::Main
	Wx::Dialog
};

sub new {
	my $class  = shift;
	my $parent = shift;

	my $self = $class->SUPER::new(
		$parent,
		-1,
		Wx::gettext("Padre Preferences"),
		Wx::wxDefaultPosition,
		[ -1, -1 ],
		Wx::wxDEFAULT_DIALOG_STYLE | Wx::wxRESIZE_BORDER,
	);

	$self->{treebook} = Wx::Treebook->new(
		$self,
		-1,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	my $m_panel2 = Wx::Panel->new(
		$self->{treebook},
		-1,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxTAB_TRAVERSAL,
	);

	$self->{editor_wordwrap} = Wx::CheckBox->new(
		$m_panel2,
		-1,
		Wx::gettext("Default word wrap on for each file"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	$self->{swap_ctrl_tab_alt_right} = Wx::CheckBox->new(
		$m_panel2,
		-1,
		Wx::gettext("Use panel order for Ctrl-Tab (not usage history)"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	$self->{save_autoclean} = Wx::CheckBox->new(
		$m_panel2,
		-1,
		Wx::gettext("Clean up file content on saving (for supported document types)"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	$self->{editor_fold_pod} = Wx::CheckBox->new(
		$m_panel2,
		-1,
		Wx::gettext("Auto-fold POD markup when code folding enabled"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	$self->{editor_beginner} = Wx::CheckBox->new(
		$m_panel2,
		-1,
		Wx::gettext("Perl beginner mode"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	my $m_staticText41 = Wx::StaticText->new(
		$m_panel2,
		-1,
		Wx::gettext("Open files"),
	);

	$self->{startup_files} = Wx::Choice->new(
		$m_panel2,
		-1,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		[],
	);
	$self->{startup_files}->SetSelection(0);

	my $m_staticText5 = Wx::StaticText->new(
		$m_panel2,
		-1,
		Wx::gettext("Default projects directory"),
	);

	$self->{default_projects_directory} = Wx::DirPickerCtrl->new(
		$m_panel2,
		-1,
		"",
		"Select a folder",
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxDIRP_DEFAULT_STYLE,
	);

	$self->{main_singleinstance} = Wx::CheckBox->new(
		$m_panel2,
		-1,
		Wx::gettext("Open files in existing Padre"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	my $m_staticText6 = Wx::StaticText->new(
		$m_panel2,
		-1,
		Wx::gettext("Methods order"),
	);

	$self->{main_functions_order} = Wx::Choice->new(
		$m_panel2,
		-1,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		[],
	);
	$self->{main_functions_order}->SetSelection(0);

	my $m_staticText7 = Wx::StaticText->new(
		$m_panel2,
		-1,
		Wx::gettext("Prefered language for error diagnostics"),
	);

	$self->{locale_perldiag} = Wx::Choice->new(
		$m_panel2,
		-1,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		[],
	);
	$self->{locale_perldiag}->SetSelection(0);

	my $m_staticText8 = Wx::StaticText->new(
		$m_panel2,
		-1,
		Wx::gettext("Default line ending"),
	);

	$self->{default_line_ending} = Wx::Choice->new(
		$m_panel2,
		-1,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		[],
	);
	$self->{default_line_ending}->SetSelection(0);

	my $m_staticText9 = Wx::StaticText->new(
		$m_panel2,
		-1,
		Wx::gettext("Check for file updates on disk every (seconds)"),
	);

	$self->{update_file_from_disk_interval} = Wx::SpinCtrl->new(
		$m_panel2,
		-1,
		"",
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxSP_ARROW_KEYS,
		0,
		10,
		0,
	);

	my $m_staticText10 = Wx::StaticText->new(
		$m_panel2,
		-1,
		Wx::gettext("Cursor blink rate (milliseconds - 0 = off, 500 = default)"),
	);

	$self->{editor_cursor_blink} = Wx::TextCtrl->new(
		$m_panel2,
		-1,
		"",
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	$self->{autocomplete_brackets} = Wx::CheckBox->new(
		$m_panel2,
		-1,
		Wx::gettext("Autocomplete brackets"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	$self->{autocomplete_multiclosebracket} = Wx::CheckBox->new(
		$m_panel2,
		-1,
		Wx::gettext("Add another closing bracket if there already is one"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	$self->{editor_smart_highlight_enable} = Wx::CheckBox->new(
		$m_panel2,
		-1,
		Wx::gettext("Enable Smart highlighting while typing"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	$self->{window_list_shorten_path} = Wx::CheckBox->new(
		$m_panel2,
		-1,
		Wx::gettext("Shorten the common path in window list"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	$self->{mid_button_paste} = Wx::CheckBox->new(
		$m_panel2,
		-1,
		Wx::gettext("Use X11 middle button paste style"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	my $m_staticText11 = Wx::StaticText->new(
		$m_panel2,
		-1,
		Wx::gettext("RegExp for TODO panel"),
	);

	$self->{todo_regexp} = Wx::TextCtrl->new(
		$m_panel2,
		-1,
		"",
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	$self->{startup_splash} = Wx::CheckBox->new(
		$m_panel2,
		-1,
		Wx::gettext("Use splash screen"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	my $m_panel3 = Wx::Panel->new(
		$self->{treebook},
		-1,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxTAB_TRAVERSAL,
	);

	$self->{main_output_ansi} = Wx::CheckBox->new(
		$m_panel3,
		-1,
		Wx::gettext("Coloured text in output window (ANSI)"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	$self->{info_on_statusbar} = Wx::CheckBox->new(
		$m_panel3,
		-1,
		Wx::gettext("Show low priority info messages on status bar (not in a popup)"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	$self->{editor_right_margin_enable} = Wx::CheckBox->new(
		$m_panel3,
		-1,
		Wx::gettext("Show right margin at column"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	$self->{editor_right_margin_column} = Wx::TextCtrl->new(
		$m_panel3,
		-1,
		"",
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	my $m_staticText17 = Wx::StaticText->new(
		$m_panel3,
		-1,
		Wx::gettext("Editor Font"),
	);

	$self->{editor_font} = Wx::FontPickerCtrl->new(
		$m_panel3,
		-1,
		Wx::wxNullFont,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxFNTP_DEFAULT_STYLE,
	);
	$self->{editor_font}->SetMaxPointSize(100);

	my $m_staticText18 = Wx::StaticText->new(
		$m_panel3,
		-1,
		Wx::gettext("Editor Current Line Background Colour"),
	);

	$self->{editor_currentline_color} = Wx::ColourPickerCtrl->new(
		$m_panel3,
		-1,
		Wx::Colour->new( 0, 0, 0 ),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxCLRP_DEFAULT_STYLE,
	);

	my $m_panel4 = Wx::Panel->new(
		$self->{treebook},
		-1,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxTAB_TRAVERSAL,
	);

	my $m_staticText34 = Wx::StaticText->new(
		$m_panel4,
		-1,
		Wx::gettext("Perl interpreter"),
	);

	$self->{run_perl_cmd} = Wx::TextCtrl->new(
		$m_panel4,
		-1,
		"",
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	my $m_staticText35 = Wx::StaticText->new(
		$m_panel4,
		-1,
		Wx::gettext("Interpreter arguments"),
	);

	$self->{run_interpreter_args_default} = Wx::TextCtrl->new(
		$m_panel4,
		-1,
		"",
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	my $m_staticText36 = Wx::StaticText->new(
		$m_panel4,
		-1,
		Wx::gettext("Include directory:  -I<dir>\nEnable tainting checks:  -T\nEnable many useful warnings:  -w\nEnable all warnings:  -W\nDisable all warnings:  -X"),
	);

	my $m_staticText37 = Wx::StaticText->new(
		$m_panel4,
		-1,
		Wx::gettext("Script arguments"),
	);

	$self->{run_script_args_default} = Wx::TextCtrl->new(
		$m_panel4,
		-1,
		"",
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	$self->{run_use_external_window} = Wx::CheckBox->new(
		$m_panel4,
		-1,
		Wx::gettext("Use external window for execution"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	my $m_panel5 = Wx::Panel->new(
		$self->{treebook},
		-1,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxTAB_TRAVERSAL,
	);

	my $m_staticText19 = Wx::StaticText->new(
		$m_panel5,
		-1,
		Wx::gettext("File Type"),
	);

	$self->{m_choice8} = Wx::Choice->new(
		$m_panel5,
		-1,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		[],
	);
	$self->{m_choice8}->SetSelection(0);

	my $m_staticText20 = Wx::StaticText->new(
		$m_panel5,
		-1,
		Wx::gettext("Highlighter"),
	);

	$self->{m_choice9} = Wx::Choice->new(
		$m_panel5,
		-1,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		[],
	);
	$self->{m_choice9}->SetSelection(0);

	my $m_staticText21 = Wx::StaticText->new(
		$m_panel5,
		-1,
		Wx::gettext("Description"),
	);

	$self->{m_staticText22} = Wx::StaticText->new(
		$m_panel5,
		-1,
		Wx::gettext("Fast but might be out of date"),
	);

	my $m_staticText23 = Wx::StaticText->new(
		$m_panel5,
		-1,
		Wx::gettext("Content type"),
	);

	$self->{m_staticText24} = Wx::StaticText->new(
		$m_panel5,
		-1,
		Wx::gettext("application/x-perl"),
	);

	my $m_panel1 = Wx::Panel->new(
		$self->{treebook},
		-1,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxTAB_TRAVERSAL,
	);

	$self->{editor_indent_guess} = Wx::Button->new(
		$m_panel1,
		-1,
		Wx::gettext("Guess from Current Document"),
	);

	Wx::Event::EVT_BUTTON(
		$self,
		$self->{editor_indent_guess},
		sub {
			shift->guess(@_);
		},
	);

	$self->{editor_indent_auto} = Wx::CheckBox->new(
		$m_panel1,
		-1,
		Wx::gettext("Automatic indentation style detection"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	$self->{editor_indent_tab} = Wx::CheckBox->new(
		$m_panel1,
		-1,
		Wx::gettext("Use Tabs"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	my $m_staticText2 = Wx::StaticText->new(
		$m_panel1,
		-1,
		Wx::gettext("Tab display size (in spaces)"),
	);

	$self->{editor_indent_tab_width} = Wx::SpinCtrl->new(
		$m_panel1,
		-1,
		"",
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxSP_ARROW_KEYS,
		1,
		16,
		8,
	);

	my $m_staticText3 = Wx::StaticText->new(
		$m_panel1,
		-1,
		Wx::gettext("Indentation width (in columns)"),
	);

	$self->{editor_indent_width} = Wx::SpinCtrl->new(
		$m_panel1,
		-1,
		"",
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxSP_ARROW_KEYS,
		1,
		10,
		8,
	);

	my $m_staticText4 = Wx::StaticText->new(
		$m_panel1,
		-1,
		Wx::gettext("Autoindent"),
	);

	$self->{editor_autoindent} = Wx::Choice->new(
		$m_panel1,
		-1,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		[],
	);
	$self->{editor_autoindent}->SetSelection(0);

	my $m_panel6 = Wx::Panel->new(
		$self->{treebook},
		-1,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxTAB_TRAVERSAL,
	);

	my $m_staticText25 = Wx::StaticText->new(
		$m_panel6,
		-1,
		Wx::gettext("Diff tool"),
	);

	$self->{external_diff_tool} = Wx::FilePickerCtrl->new(
		$m_panel6,
		-1,
		"",
		"Select a file",
		"*.*",
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxFLP_DEFAULT_STYLE,
	);

	my $m_staticText26 = Wx::StaticText->new(
		$m_panel6,
		-1,
		Wx::gettext("Perl ctags file"),
	);

	$self->{perl_tags_file} = Wx::FilePickerCtrl->new(
		$m_panel6,
		-1,
		"",
		"Select a file",
		"*.*",
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxFLP_DEFAULT_STYLE,
	);

	my $m_panel8 = Wx::Panel->new(
		$self->{treebook},
		-1,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxTAB_TRAVERSAL,
	);

	my $m_staticText30 = Wx::StaticText->new(
		$m_panel8,
		-1,
		Wx::gettext("File access via HTTP"),
	);

	my $m_staticText31 = Wx::StaticText->new(
		$m_panel8,
		-1,
		Wx::gettext("Timeout (in seconds)"),
	);

	$self->{file_http_timeout} = Wx::SpinCtrl->new(
		$m_panel8,
		-1,
		"",
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxSP_ARROW_KEYS,
		10,
		900,
		10,
	);

	my $m_staticText32 = Wx::StaticText->new(
		$m_panel8,
		-1,
		Wx::gettext("File access via FTP"),
	);

	my $m_staticText33 = Wx::StaticText->new(
		$m_panel8,
		-1,
		Wx::gettext("Timeout (in seconds)"),
	);

	$self->{file_ftp_timeout} = Wx::SpinCtrl->new(
		$m_panel8,
		-1,
		"",
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxSP_ARROW_KEYS,
		10,
		900,
		10,
	);

	$self->{file_ftp_passive} = Wx::CheckBox->new(
		$m_panel8,
		-1,
		Wx::gettext("Use FTP passive mode"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	my $m_panel7 = Wx::Panel->new(
		$self->{treebook},
		-1,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxTAB_TRAVERSAL,
	);

	$self->{autocomplete_always} = Wx::CheckBox->new(
		$m_panel7,
		-1,
		Wx::gettext("Autocomplete always while typing"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	$self->{autocomplete_method} = Wx::CheckBox->new(
		$m_panel7,
		-1,
		Wx::gettext("Autocomplete new methods in packages"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	$self->{autocomplete_subroutine} = Wx::CheckBox->new(
		$m_panel7,
		-1,
		Wx::gettext("Autocomplete new functions in scripts"),
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
	);

	my $m_staticText27 = Wx::StaticText->new(
		$m_panel7,
		-1,
		Wx::gettext("Minimum length of suggestions"),
	);

	$self->{perl_autocomplete_min_suggestion_len} = Wx::SpinCtrl->new(
		$m_panel7,
		-1,
		"",
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxSP_ARROW_KEYS,
		1,
		64,
		1,
	);

	my $m_staticText28 = Wx::StaticText->new(
		$m_panel7,
		-1,
		Wx::gettext("Maximum number of suggestions"),
	);

	$self->{perl_autocomplete_max_suggestions} = Wx::SpinCtrl->new(
		$m_panel7,
		-1,
		"",
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxSP_ARROW_KEYS,
		5,
		256,
		5,
	);

	my $m_staticText29 = Wx::StaticText->new(
		$m_panel7,
		-1,
		Wx::gettext("Minimum characters for autocomplete"),
	);

	$self->{perl_autocomplete_min_chars} = Wx::SpinCtrl->new(
		$m_panel7,
		-1,
		"",
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxSP_ARROW_KEYS,
		1,
		16,
		1,
	);

	my $m_staticline1 = Wx::StaticLine->new(
		$self,
		-1,
		Wx::wxDefaultPosition,
		Wx::wxDefaultSize,
		Wx::wxLI_HORIZONTAL,
	);

	$self->{save} = Wx::Button->new(
		$self,
		Wx::wxID_OK,
		Wx::gettext("Save"),
	);
	$self->{save}->SetDefault;

	$self->{advanced} = Wx::Button->new(
		$self,
		Wx::wxID_OK,
		Wx::gettext("Advanced..."),
	);

	Wx::Event::EVT_BUTTON(
		$self,
		$self->{advanced},
		sub {
			shift->advanced(@_);
		},
	);

	$self->{cancel} = Wx::Button->new(
		$self,
		Wx::wxID_CANCEL,
		Wx::gettext("Cancel"),
	);

	my $fgSizer3 = Wx::FlexGridSizer->new( 20, 2, 0, 10 );
	$fgSizer3->AddGrowableCol(0);
	$fgSizer3->AddGrowableCol(1);
	$fgSizer3->SetFlexibleDirection(Wx::wxBOTH);
	$fgSizer3->SetNonFlexibleGrowMode(Wx::wxFLEX_GROWMODE_NONE);
	$fgSizer3->Add( $self->{editor_wordwrap}, 0, Wx::wxALL, 5 );
	$fgSizer3->Add( 0, 0, 1, Wx::wxEXPAND, 5 );
	$fgSizer3->Add( $self->{swap_ctrl_tab_alt_right}, 0, Wx::wxALL, 5 );
	$fgSizer3->Add( 0, 0, 1, Wx::wxEXPAND, 5 );
	$fgSizer3->Add( $self->{save_autoclean}, 0, Wx::wxALL, 5 );
	$fgSizer3->Add( 0, 0, 1, Wx::wxEXPAND, 5 );
	$fgSizer3->Add( $self->{editor_fold_pod}, 0, Wx::wxALL, 5 );
	$fgSizer3->Add( 0, 0, 1, Wx::wxEXPAND, 5 );
	$fgSizer3->Add( $self->{editor_beginner}, 0, Wx::wxALL, 5 );
	$fgSizer3->Add( 0, 0, 1, Wx::wxEXPAND, 5 );
	$fgSizer3->Add( $m_staticText41, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer3->Add( $self->{startup_files}, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALIGN_RIGHT | Wx::wxALL | Wx::wxEXPAND, 5 );
	$fgSizer3->Add( $m_staticText5, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer3->Add( $self->{default_projects_directory}, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALIGN_RIGHT | Wx::wxALL | Wx::wxEXPAND, 5 );
	$fgSizer3->Add( $self->{main_singleinstance}, 0, Wx::wxALL, 5 );
	$fgSizer3->Add( 0, 0, 1, Wx::wxEXPAND, 5 );
	$fgSizer3->Add( $m_staticText6, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer3->Add( $self->{main_functions_order}, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALIGN_RIGHT | Wx::wxALL | Wx::wxEXPAND, 5 );
	$fgSizer3->Add( $m_staticText7, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer3->Add( $self->{locale_perldiag}, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALIGN_RIGHT | Wx::wxALL | Wx::wxEXPAND, 5 );
	$fgSizer3->Add( $m_staticText8, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer3->Add( $self->{default_line_ending}, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALIGN_RIGHT | Wx::wxALL | Wx::wxEXPAND, 5 );
	$fgSizer3->Add( $m_staticText9, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer3->Add( $self->{update_file_from_disk_interval}, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALIGN_RIGHT | Wx::wxALL | Wx::wxEXPAND, 5 );
	$fgSizer3->Add( $m_staticText10, 0, Wx::wxALL, 5 );
	$fgSizer3->Add( $self->{editor_cursor_blink}, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALIGN_RIGHT | Wx::wxALL | Wx::wxEXPAND, 5 );
	$fgSizer3->Add( $self->{autocomplete_brackets}, 0, Wx::wxALL, 5 );
	$fgSizer3->Add( 0, 0, 1, Wx::wxEXPAND, 5 );
	$fgSizer3->Add( $self->{autocomplete_multiclosebracket}, 0, Wx::wxALL, 5 );
	$fgSizer3->Add( 0, 0, 1, Wx::wxEXPAND, 5 );
	$fgSizer3->Add( $self->{editor_smart_highlight_enable}, 0, Wx::wxALL, 5 );
	$fgSizer3->Add( 0, 0, 1, Wx::wxEXPAND, 5 );
	$fgSizer3->Add( $self->{window_list_shorten_path}, 0, Wx::wxALL, 5 );
	$fgSizer3->Add( 0, 0, 1, Wx::wxEXPAND, 5 );
	$fgSizer3->Add( $self->{mid_button_paste}, 0, Wx::wxALL, 5 );
	$fgSizer3->Add( 0, 0, 1, Wx::wxEXPAND, 5 );
	$fgSizer3->Add( $m_staticText11, 0, Wx::wxALL, 5 );
	$fgSizer3->Add( $self->{todo_regexp}, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALIGN_RIGHT | Wx::wxALL | Wx::wxEXPAND, 5 );
	$fgSizer3->Add( $self->{startup_splash}, 0, Wx::wxALL, 5 );
	$fgSizer3->Add( 0, 0, 1, Wx::wxEXPAND, 5 );

	$m_panel2->SetSizer($fgSizer3);
	$m_panel2->Layout;
	$fgSizer3->Fit($m_panel2);

	my $fgSizer4 = Wx::FlexGridSizer->new( 8, 2, 0, 10 );
	$fgSizer4->AddGrowableCol(0);
	$fgSizer4->AddGrowableCol(1);
	$fgSizer4->SetFlexibleDirection(Wx::wxBOTH);
	$fgSizer4->SetNonFlexibleGrowMode(Wx::wxFLEX_GROWMODE_SPECIFIED);
	$fgSizer4->Add( $self->{main_output_ansi}, 0, Wx::wxALL, 5 );
	$fgSizer4->Add( 0, 0, 1, Wx::wxEXPAND, 5 );
	$fgSizer4->Add( $self->{info_on_statusbar}, 0, Wx::wxALL, 5 );
	$fgSizer4->Add( 0, 0, 1, Wx::wxEXPAND, 5 );
	$fgSizer4->Add( $self->{editor_right_margin_enable}, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer4->Add( $self->{editor_right_margin_column}, 0, Wx::wxALL | Wx::wxEXPAND, 5 );
	$fgSizer4->Add( $m_staticText17, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer4->Add( $self->{editor_font}, 0, Wx::wxALL | Wx::wxEXPAND, 5 );
	$fgSizer4->Add( $m_staticText18, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer4->Add( $self->{editor_currentline_color}, 0, Wx::wxALL | Wx::wxEXPAND, 5 );

	$m_panel3->SetSizer($fgSizer4);
	$m_panel3->Layout;
	$fgSizer4->Fit($m_panel3);

	my $fgSizer9 = Wx::FlexGridSizer->new( 2, 2, 0, 0 );
	$fgSizer9->SetFlexibleDirection(Wx::wxBOTH);
	$fgSizer9->SetNonFlexibleGrowMode(Wx::wxFLEX_GROWMODE_SPECIFIED);
	$fgSizer9->Add( $m_staticText34, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer9->Add( $self->{run_perl_cmd}, 0, Wx::wxALL | Wx::wxEXPAND, 5 );
	$fgSizer9->Add( $m_staticText35, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer9->Add( $self->{run_interpreter_args_default}, 0, Wx::wxALL | Wx::wxEXPAND, 5 );
	$fgSizer9->Add( 0, 0, 1, Wx::wxEXPAND, 5 );
	$fgSizer9->Add( $m_staticText36, 0, Wx::wxALL, 5 );
	$fgSizer9->Add( $m_staticText37, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer9->Add( $self->{run_script_args_default}, 0, Wx::wxALL | Wx::wxEXPAND, 5 );
	$fgSizer9->Add( $self->{run_use_external_window}, 0, Wx::wxALL, 5 );

	$m_panel4->SetSizer($fgSizer9);
	$m_panel4->Layout;
	$fgSizer9->Fit($m_panel4);

	my $fgSizer5 = Wx::FlexGridSizer->new( 4, 2, 0, 0 );
	$fgSizer5->SetFlexibleDirection(Wx::wxBOTH);
	$fgSizer5->SetNonFlexibleGrowMode(Wx::wxFLEX_GROWMODE_SPECIFIED);
	$fgSizer5->Add( $m_staticText19, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer5->Add( $self->{m_choice8}, 0, Wx::wxALL, 5 );
	$fgSizer5->Add( $m_staticText20, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer5->Add( $self->{m_choice9}, 0, Wx::wxALL, 5 );
	$fgSizer5->Add( $m_staticText21, 0, Wx::wxALL, 5 );
	$fgSizer5->Add( $self->{m_staticText22}, 0, Wx::wxALL, 5 );
	$fgSizer5->Add( $m_staticText23, 0, Wx::wxALL, 5 );
	$fgSizer5->Add( $self->{m_staticText24}, 0, Wx::wxALL, 5 );

	$m_panel5->SetSizer($fgSizer5);
	$m_panel5->Layout;
	$fgSizer5->Fit($m_panel5);

	my $fgSizer2 = Wx::FlexGridSizer->new( 1, 1, 0, 0 );
	$fgSizer2->SetFlexibleDirection(Wx::wxBOTH);
	$fgSizer2->SetNonFlexibleGrowMode(Wx::wxFLEX_GROWMODE_ALL);
	$fgSizer2->Add( $self->{editor_indent_guess}, 0, Wx::wxALL, 5 );
	$fgSizer2->Add( $self->{editor_indent_auto}, 0, Wx::wxALL, 5 );
	$fgSizer2->Add( $self->{editor_indent_tab}, 0, Wx::wxALL, 5 );
	$fgSizer2->Add( $m_staticText2, 0, Wx::wxALL, 5 );
	$fgSizer2->Add( $self->{editor_indent_tab_width}, 0, Wx::wxALL, 5 );
	$fgSizer2->Add( $m_staticText3, 0, Wx::wxALL, 5 );
	$fgSizer2->Add( $self->{editor_indent_width}, 0, Wx::wxALL, 5 );
	$fgSizer2->Add( $m_staticText4, 0, Wx::wxALL, 5 );
	$fgSizer2->Add( $self->{editor_autoindent}, 0, Wx::wxALL, 5 );

	$m_panel1->SetSizer($fgSizer2);
	$m_panel1->Layout;
	$fgSizer2->Fit($m_panel1);

	my $fgSizer6 = Wx::FlexGridSizer->new( 2, 2, 0, 10 );
	$fgSizer6->AddGrowableCol(1);
	$fgSizer6->SetFlexibleDirection(Wx::wxBOTH);
	$fgSizer6->SetNonFlexibleGrowMode(Wx::wxFLEX_GROWMODE_SPECIFIED);
	$fgSizer6->Add( $m_staticText25, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer6->Add( $self->{external_diff_tool}, 0, Wx::wxALL | Wx::wxEXPAND, 5 );
	$fgSizer6->Add( $m_staticText26, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer6->Add( $self->{perl_tags_file}, 0, Wx::wxALL | Wx::wxEXPAND, 5 );

	$m_panel6->SetSizer($fgSizer6);
	$m_panel6->Layout;
	$fgSizer6->Fit($m_panel6);

	my $fgSizer8 = Wx::FlexGridSizer->new( 5, 2, 0, 0 );
	$fgSizer8->SetFlexibleDirection(Wx::wxBOTH);
	$fgSizer8->SetNonFlexibleGrowMode(Wx::wxFLEX_GROWMODE_SPECIFIED);
	$fgSizer8->Add( $m_staticText30, 0, Wx::wxALL, 5 );
	$fgSizer8->Add( 0, 0, 1, Wx::wxEXPAND, 5 );
	$fgSizer8->Add( $m_staticText31, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer8->Add( $self->{file_http_timeout}, 0, Wx::wxALL, 5 );
	$fgSizer8->Add( $m_staticText32, 0, Wx::wxALL, 5 );
	$fgSizer8->Add( 0, 0, 1, Wx::wxEXPAND, 5 );
	$fgSizer8->Add( $m_staticText33, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer8->Add( $self->{file_ftp_timeout}, 0, Wx::wxALL, 5 );
	$fgSizer8->Add( $self->{file_ftp_passive}, 0, Wx::wxALL, 5 );

	$m_panel8->SetSizer($fgSizer8);
	$m_panel8->Layout;
	$fgSizer8->Fit($m_panel8);

	my $fgSizer7 = Wx::FlexGridSizer->new( 10, 2, 0, 0 );
	$fgSizer7->SetFlexibleDirection(Wx::wxBOTH);
	$fgSizer7->SetNonFlexibleGrowMode(Wx::wxFLEX_GROWMODE_SPECIFIED);
	$fgSizer7->Add( $self->{autocomplete_always}, 0, Wx::wxALL, 5 );
	$fgSizer7->Add( 0, 0, 1, Wx::wxEXPAND, 5 );
	$fgSizer7->Add( $self->{autocomplete_method}, 0, Wx::wxALL, 5 );
	$fgSizer7->Add( 0, 0, 1, Wx::wxEXPAND, 5 );
	$fgSizer7->Add( $self->{autocomplete_subroutine}, 0, Wx::wxALL, 5 );
	$fgSizer7->Add( 0, 0, 1, Wx::wxEXPAND, 5 );
	$fgSizer7->Add( $m_staticText27, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer7->Add( $self->{perl_autocomplete_min_suggestion_len}, 0, Wx::wxALL, 5 );
	$fgSizer7->Add( $m_staticText28, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer7->Add( $self->{perl_autocomplete_max_suggestions}, 0, Wx::wxALL, 5 );
	$fgSizer7->Add( $m_staticText29, 0, Wx::wxALIGN_CENTER_VERTICAL | Wx::wxALL, 5 );
	$fgSizer7->Add( $self->{perl_autocomplete_min_chars}, 0, Wx::wxALL, 5 );

	$m_panel7->SetSizer($fgSizer7);
	$m_panel7->Layout;
	$fgSizer7->Fit($m_panel7);

	$self->{treebook}->AddPage( $m_panel2, Wx::gettext("Behaviour"), 1 );
	$self->{treebook}->AddPage( $m_panel3, Wx::gettext("Appearance"), 0 );
	$self->{treebook}->AddPage( $m_panel4, Wx::gettext("Run Parameters"), 0 );
	$self->{treebook}->AddPage( $m_panel5, Wx::gettext("Files and Colours"), 0 );
	$self->{treebook}->AddPage( $m_panel1, Wx::gettext("Indentation"), 0 );
	$self->{treebook}->AddPage( $m_panel6, Wx::gettext("External Tools"), 0 );
	$self->{treebook}->AddPage( $m_panel8, Wx::gettext("Local/Remote File Access"), 0 );
	$self->{treebook}->AddPage( $m_panel7, Wx::gettext("Perl Auto Complete"), 0 );

	my $buttons = Wx::BoxSizer->new(Wx::wxHORIZONTAL);
	$buttons->Add( $self->{save}, 0, Wx::wxALL, 5 );
	$buttons->Add( $self->{advanced}, 0, Wx::wxALL, 5 );
	$buttons->Add( $self->{cancel}, 0, Wx::wxALL, 5 );

	my $vsizer = Wx::BoxSizer->new(Wx::wxVERTICAL);
	$vsizer->Add( $self->{treebook}, 1, Wx::wxALL | Wx::wxEXPAND, 5 );
	$vsizer->Add( $m_staticline1, 0, Wx::wxALL | Wx::wxEXPAND, 5 );
	$vsizer->Add( $buttons, 0, Wx::wxALIGN_RIGHT, 5 );

	my $hsizer = Wx::BoxSizer->new(Wx::wxHORIZONTAL);
	$hsizer->Add( $vsizer, 1, Wx::wxALL | Wx::wxEXPAND, 5 );

	$self->SetSizer($hsizer);
	$self->Layout;
	$hsizer->Fit($self);
	$hsizer->SetSizeHints($self);

	return $self;
}

sub treebook {
	$_[0]->{treebook};
}

sub editor_wordwrap {
	$_[0]->{editor_wordwrap};
}

sub swap_ctrl_tab_alt_right {
	$_[0]->{swap_ctrl_tab_alt_right};
}

sub save_autoclean {
	$_[0]->{save_autoclean};
}

sub editor_fold_pod {
	$_[0]->{editor_fold_pod};
}

sub editor_beginner {
	$_[0]->{editor_beginner};
}

sub startup_files {
	$_[0]->{startup_files};
}

sub default_projects_directory {
	$_[0]->{default_projects_directory};
}

sub main_singleinstance {
	$_[0]->{main_singleinstance};
}

sub main_functions_order {
	$_[0]->{main_functions_order};
}

sub locale_perldiag {
	$_[0]->{locale_perldiag};
}

sub default_line_ending {
	$_[0]->{default_line_ending};
}

sub update_file_from_disk_interval {
	$_[0]->{update_file_from_disk_interval};
}

sub editor_cursor_blink {
	$_[0]->{editor_cursor_blink};
}

sub autocomplete_brackets {
	$_[0]->{autocomplete_brackets};
}

sub autocomplete_multiclosebracket {
	$_[0]->{autocomplete_multiclosebracket};
}

sub editor_smart_highlight_enable {
	$_[0]->{editor_smart_highlight_enable};
}

sub window_list_shorten_path {
	$_[0]->{window_list_shorten_path};
}

sub mid_button_paste {
	$_[0]->{mid_button_paste};
}

sub todo_regexp {
	$_[0]->{todo_regexp};
}

sub startup_splash {
	$_[0]->{startup_splash};
}

sub main_output_ansi {
	$_[0]->{main_output_ansi};
}

sub info_on_statusbar {
	$_[0]->{info_on_statusbar};
}

sub editor_right_margin_enable {
	$_[0]->{editor_right_margin_enable};
}

sub editor_right_margin_column {
	$_[0]->{editor_right_margin_column};
}

sub editor_font {
	$_[0]->{editor_font};
}

sub editor_currentline_color {
	$_[0]->{editor_currentline_color};
}

sub run_perl_cmd {
	$_[0]->{run_perl_cmd};
}

sub run_interpreter_args_default {
	$_[0]->{run_interpreter_args_default};
}

sub run_script_args_default {
	$_[0]->{run_script_args_default};
}

sub run_use_external_window {
	$_[0]->{run_use_external_window};
}

sub editor_indent_auto {
	$_[0]->{editor_indent_auto};
}

sub editor_indent_tab {
	$_[0]->{editor_indent_tab};
}

sub editor_indent_tab_width {
	$_[0]->{editor_indent_tab_width};
}

sub editor_indent_width {
	$_[0]->{editor_indent_width};
}

sub editor_autoindent {
	$_[0]->{editor_autoindent};
}

sub external_diff_tool {
	$_[0]->{external_diff_tool};
}

sub perl_tags_file {
	$_[0]->{perl_tags_file};
}

sub file_http_timeout {
	$_[0]->{file_http_timeout};
}

sub file_ftp_timeout {
	$_[0]->{file_ftp_timeout};
}

sub file_ftp_passive {
	$_[0]->{file_ftp_passive};
}

sub autocomplete_always {
	$_[0]->{autocomplete_always};
}

sub autocomplete_method {
	$_[0]->{autocomplete_method};
}

sub autocomplete_subroutine {
	$_[0]->{autocomplete_subroutine};
}

sub perl_autocomplete_min_suggestion_len {
	$_[0]->{perl_autocomplete_min_suggestion_len};
}

sub perl_autocomplete_max_suggestions {
	$_[0]->{perl_autocomplete_max_suggestions};
}

sub perl_autocomplete_min_chars {
	$_[0]->{perl_autocomplete_min_chars};
}

sub guess {
	die 'Handler method guess for event editor_indent_guess.OnButtonClick not implemented';
}

sub advanced {
	die 'Handler method advanced for event advanced.OnButtonClick not implemented';
}

1;

# Copyright 2008-2011 The Padre development team as listed in Padre.pm.
# LICENSE
# This program is free software; you can redistribute it and/or
# modify it under the same terms as Perl 5 itself.

