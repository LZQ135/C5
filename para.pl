#!/usr/bin/perl -w

$DNA1 = 'ACGT';
$DNA2 = 'TGCA';

$DNA3 = "$DNA1$DNA2";
print "$DNA3\n\n";

$DNA3 = $DNA1 . $DNA2;
print "$DNA3\n\n";

print $DNA1, $DNA2, "\n";

exit;
