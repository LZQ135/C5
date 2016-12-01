#!/usr/bin/perl -w
print "please type the filename of the DNA: ";

$dna_filename = <STDIN>;

chomp $dna_filename;

unless ( open( DNAFILE, $dna_filename ) ) {

    print "Cannot open file \"$dna_filename\"\n\n";
    exit;
}

@DNA = <DNAFILE>;

close DNAFILE;

$DNA = join( '', @DNA );

$DNA =~ s/\s//g;

@DNA = split( '', $DNA );

$count_of_A = 0;
$count_of_C = 0;
$count_of_G = 0;
$count_of_T = 0;
$errors      = 0;

foreach $base (@DNA) {

         if ( $base eq 'A' ) {
                 ++$count_of_A;
         }
         elsif ( $base eq 'C' ) {
                    ++$count_of_C;
         }
         elsif ( $base eq 'G' ) {
                    ++$count_of_G;
         }
         elsif ( $base eq 'T' ) {
                   ++$count_of_T;
         }
        else {
             print "!!!!!!!!!!! Error - I don\'t recognize this base: $base\n";
                     ++$errors;
          }
}

print "A = $count_of_A\n";
print "C = $count_of_C\n";
print "G = $count_of_G\n";
print "T = $count_of_T\n";
print "errors = $errors\n";

exit;
 
