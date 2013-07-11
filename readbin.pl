    system("title The Black Devils");
    system("color 1e");
    system ("cls");
    print "    |=======================================================|\n";
    print "    |= [!] Name :   [ /x ] Creation mode                   =|\n";
    print "    |= [!] Author  : The Black Devils                      =|\n";
    print "    |= [!] Mail: mr.k4rizma(at)gmail(dot)com               =|\n";
    print "    |=======================================================|\n";
  
	
print "|Entre The name of the file |\n";
my $binfile = <> ;
chomp $binfile ;

print "Reading ".$binfile."\n";
open(FILE,$binfile);
binmode FILE;
my ($data, $n, $offset, $strContent);
$strContent= "";
my $cnt=0;
while (($n = read FILE, $data, 1, $offset) != 0) {
  $offset += $n;
}
close(FILE);

print "Read ".$offset." bytes\n\n";
my $cnt=0;
my $nullbyte=0;
print chr(34);
my $i=0 ;
for ($i=0; $i < (length($data)); $i++) 
{
  my $c = substr($data, $i, 1);
  my $str1 = sprintf("%01x", ((ord($c) & 0xf0) >> 4) & 0x0f);
  my $str2 = sprintf("%01x", ord($c) & 0x0f);
  if ($cnt < 8)
  {
    print "\\x".$str1.$str2;
    $cnt=$cnt+1;    
  }
  else
  {
    $cnt=1;
    print chr(34)."\n".chr(34)."\\x".$str1.$str2;
  }
  if (($str1 eq "0") && ($str2 eq "0"))
    {
      $nullbyte=$nullbyte+1;
    }
}
print chr(34).";\n";
print "\nNumber of null bytes : " . $nullbyte."\n";
sleep (15);
goto menu;
