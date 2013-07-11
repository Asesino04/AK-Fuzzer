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
system("title The Black Devils");
system("color 1e");
system("cls");
print "\n\n";                 
print "    |=======================================================|\n";
print "    |= [!] Name : The Black Devils Local Fuzzer V 1.0 ||   =|\n";
print "    |= [!] Author  : The Black Devils                      =|\n";
print "    |= [!] Mail: mr.k4rizma(at)gmail(dot)com               =|\n";
print "    |=======================================================|\n";
sleep(2);
print "\n";
# Creating ...

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
       sleep (5);
	   require "AK-Fuzzer.pl";
