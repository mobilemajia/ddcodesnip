#! /usr/bin/perl -w

sub ReadConfigFile  {
	my ($ini_file) = @_;

	if (!open(SQL_L10_CONFIG_FILE, "<$ini_file"))
	{
		die "can not open config file";
	}
	my $want_line;
	my $configKeyValue;
	while (<SQL_L10_CONFIG_FILE>) {
		chomp;
		if ($_ =~ /^(.*)(naviseccli -User admin -Password admin -Scope 0 -Address.*)$/ )
		{       
			$want_line="$2";
			print SQL_L10_LOG "$want_line\n";
		}


	}
}


if (!open(SQL_L10_LOG, ">c:\\d\\tmp2.txt"))
{
	die "can not open log file";
}

&ReadConfigFile('c:\\d\\tmp.txt');
