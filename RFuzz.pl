
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
