print "starting...";

use Perl6::Currying;

my $add = { $^a + $^b };

print $add->(1,2), "\n";

my $incr = $add->(1);

print $incr->(3), "\n";

@data{0..10} = ('A'..'Z');

print join ",", sort { $^y <=> $^x } 1..10;            print "\n=======\n";
print join "\n", map { $^value**2 } 1..10;             print "\n=======\n";
print join "\n", map { $data{$_-1}.$^value**2 } 1..10; print "\n=======\n";
print join "\n", map { $data{$^value} } 1..10;         print "\n=======\n";

my $div = { $^x / $^y };

print $div->(1,2), "\n";

my $half = $div->({y=>2});

print $half->(42), "\n";
print $half->({x=>42}), "\n";
my $twelfth = $half->({y=>12});
print $twelfth->(24), "\n";
my $bad = $half->({q=>12}), "\n";
