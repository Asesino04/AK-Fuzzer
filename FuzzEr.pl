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
    print "\t\t\t\t WELCOME\n";
    print "\n\n";
    menu:;
    print "\tMenu:\n";
    print "\t ID [1] => Fuzzer local  [Fuzz a Local software] \n";
    print "\t ID [2] => Fuzzer Remote [Fuzz a Remote software] \n";
    print"\n";
    print "\t\t Select ID For Start FuzzinG :";
    my $menu = <>;
    if ($menu =~ /1/){
            goto id1;
            }
            if ($menu =~ /2/){
                    goto id2;
            }
            else {
                    print"\n\n";
                    print "\t\tUnknow Command\n";
                    goto menu;
            };
     
     
    id1:;
        print "\n\n";
        print "\t\t\tWelcome To AK-Local Fuzzer \n\n";
       sleep(2);
       print "\n";
       # Creating ...
     # Header 
	   print "|Entre The Header  [if don't exist press enter ] |\n";
	   my $header =<> ;
       chomp $header ;
       # Number Of Fuzzer
       print "|Entre The number of fuzzer |\n";
       my $num =<> ;
       chomp $num ;
       # Extensions 
       print "|Entre The Extensions Of the File |\n";
       my  $ext =<> ;
       chomp $ext ;
       # Name Of The File
       print "|Entre The Name Of the File |\n";
       my $file =<> ;
       chomp $file ;
       my $PoC = "\x41" x $num ;
       open(file , ">", "$file.$ext"); # Evil File $ext
       print file $header.$PoC; 
       print "\n [+] $file.$ext successfully created!\n" or die print "\n [-] OupsS! File is Not Created !! ";
	   sleep (5);
       open(file);
	   system ("cls");
	   goto menu;
    id2:;
        print "\n\n";
        print "\t\t\tWelcom To AK-Remote Fuzzer\n\n";
        print "\t Insert Target (ex: 192.168.1.1)\n";
		my $host = <> ;
        print "\t Target is  : $host ";
print "|How many Bytes you will send |\n";
my $fuzz = <> ;
my $junk = "\x41" x $fuzz ;
# initialize  port
print "|Entre Target Port |\n";
my $port = <> ;
my $proto = getprotobyname('tcp');
# get the port address
my $iaddr = inet_aton($host);
my $paddr = sockaddr_in($port, $iaddr);

print "[+] Setting up socket\n";
# create the socket, connect to the port
socket(SOCKET, PF_INET, SOCK_STREAM, $proto) or die "socket: $!";
print "[+] Connecting to $host on port $port\n";
connect(SOCKET, $paddr) or die "connect: $!";

print "[+] Sending Buffer\n";
print SOCKET $junk."\n";

print "[+] Buffer sent\n";

close SOCKET or die goto menu;
system ("cls");


