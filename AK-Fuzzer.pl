    #!/usr/bin/perl
    #1-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=0
    #0     _                   __           __       __                     1
    #1   /' \            __  /'__`\        /\ \__  /'__`\                   0
    #0  /\_, \    ___   /\_\/\_\ \ \    ___\ \ ,_\/\ \/\ \  _ ___           1
    #1  \/_/\ \ /' _ `\ \/\ \/_/_\_<_  /'___\ \ \/\ \ \ \ \/\`'__\          0
    #0     \ \ \/\ \/\ \ \ \ \/\ \ \ \/\ \__/\ \ \_\ \ \_\ \ \ \/           1
    #1      \ \_\ \_\ \_\_\ \ \ \____/\ \____\\ \__\\ \____/\ \_\           0
    #0       \/_/\/_/\/_/\ \_\ \/___/  \/____/ \/__/ \/___/  \/_/           1
    #1                  \ \____/ >> Exploit database separated by exploit   0
    #0                   \/___/          type (local, remote, DoS, etc.)    1
    #1                                                                      1
    #0  [+] Site            : 1337day.com                                   0
    #1  [+] Support e-mail  : submit[at]1337day.com                         1
    #0                                                                      0
    #1               #########################################              1
    #0               I'm The Black Devils member from Inj3ct0r Team         1
    #1               #########################################              0
    #0-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-1
        use strict;
        use Socket;
        use HTTP::Request;
        use LWP::UserAgent;
  	use warnings;
		system("title The Black Devils");
    system("color 1e");
    system ("cls");
    print "    |=======================================================|\n";
    print "    |= [!] Name :   AK-Fuzzer 1.0 Release                  =|\n";
    print "    |= [!] Author  : The Black Devils                      =|\n";
    print "    |= [!] Mail: mr.k4rizma(at)gmail(dot)com               =|\n";
    print "    |=======================================================|\n";
    print "\n\n";
    sleep (1);
    print "\t\t\t\t W";
	sleep (1);
	print "E";
	sleep (1);
	print "L";
	sleep (1);
	print "C";
	sleep (1);
	print "O";
	sleep (1);
	print "M";
	sleep (1);
	print "E";
    print "\n\n";
    print "\n\n";
    menu:;
    print "\tMenu:\n";

    print "\t ID [1] => Fuzzer local  [Fuzz a Local software] \n";

    print "\t ID [2] => Fuzzer Remote [Fuzz a Remote software] \n";

	print "\t ID [3] => [ /x ] Creation mode \n";
	
	print "\t ID [4] => LFI Scanner \n";

    print"\n";
    print "\t\t Select ID To Start :";
    my $menu = <>;
    if ($menu =~ /1/){
            goto id1;
            }
            if ($menu =~ /2/){
                    goto id2;
            }
			if ($menu =~ /3/){
            goto readbin;
            }
			            if ($menu =~ /4/){
                    goto menu2;
            }
            else {
                    print"\n\n";
                    print "\t\tUnknow Command\n";
                    goto menu;
            };
    id1:;
require "FLocal.pl";
    id2:;
require "RFuzz.pl";
    readbin:;
require "raedbin.pl";
menu2:;
require "LFI.pl";
