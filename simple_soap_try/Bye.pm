package Bye;

  sub sayBye{
      shift;
      return "Bye ".shift;
  }

1;
