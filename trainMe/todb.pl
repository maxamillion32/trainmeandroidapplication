use DBI;
use DBD::mysql;

use warnings;


$dbh = DBI->connect('dbi:mysql:trainme','root','')or die "Connection Error: $DBI::errstr\n";

$inputfilename = 'exerciseinfos.txt';
open($fh, '<', $inputfilename);


while ($row = <$fh>){
		chomp $row;

		push my @myArray, split(",", $row);
		$query = "insert into exercises (name, muscle, level, rating, equipment)
			values (?, ?, ?, ?, ?) ";
		$statement = $dbh->prepare($query);
		$statement->execute($myArray[0], $myArray[1], $myArray[2], $myArray[3], $myArray[4]);
		$statement->finish();

}

















#----------------------------------------------------------------------
# insert the values into the database
#----------------------------------------------------------------------


# invoke the ConnectToMySQL sub-routine to make the database connection


# set the value of your SQL query


# prepare your statement for connecting to the database


# execute your SQL statement
