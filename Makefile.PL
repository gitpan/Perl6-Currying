
use ExtUtils::MakeMaker;
WriteMakefile(
		NAME	=> q[Perl6::Currying],
		VERSION => q[0.03],
		PREREQ_PM => { 'Filter::Simple' => 0.78 }

	     );
