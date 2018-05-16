
app echo(string message)
{
  "/bin/echo" message ;
}

foreach i in [0:3]
{
  echo("hello: " + i);
}
