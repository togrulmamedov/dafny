// method m()
// {
//    var i, n := 0, 11;
//    while i < n
//       decreases n - i
//    {
//       // do something interesting
//       i := i + 5;
//    }
// }

function disj(x: bool, y: bool): bool
{
  if x then true else 
  if y then true else false
}

method Test(x: int, y: int, z: int) returns (v: bool)
  ensures v == disj(x > z, x > y)
 {
   if x > y
    { return true; }
   else if x > z
    { return true; }
   else
    { return false; }
 }
 
 method M(x: int, z: int)
 {
   var y := 5;
   
   assert disj(x > z, x > y) == false;
 }