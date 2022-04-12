class final_class {
  final int a;
  const final_class(this.a);
}

void setValues() {
  final_class abc = final_class(5);
  abc.a = 8; //final class is immutable becuase it's keys are final
}
