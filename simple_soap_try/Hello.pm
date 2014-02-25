package Hello;

sub sayHello{
  shift;
  #STDERR "im in say hello";
  return "Hello ". shift;
}
1;
