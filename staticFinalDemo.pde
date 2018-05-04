static class Thing {
  
  int numberThatEveryThingHas;
  PImage imageThatEveryThingHas;
  
  // A static final variable like this can be useful 
  // for configuring things that are shared among all objects of this class
  // but need to be defined only once.
  static final int numberThatsEqualForAllThings = 10;
  
  public void setNumber(int x) {
    numberThatEveryThingHas = x; 
  }
  
  public int getNumber() {
    return numberThatEveryThingHas;
  }
  
  public void doSomething() {
    println("This object has a variable with value " + this.numberThatEveryThingHas);
    println("This class has a (final static) variable with value " + this.numberThatsEqualForAllThings); // gives warning
    println("This class has a (final static) variable with value " + Thing.numberThatsEqualForAllThings); // static members should be used like this
  }

}

void setup() {
  Thing t1 = new Thing();
  Thing t2 = new Thing();
  
  t1.setNumber(1);
  t2.setNumber(2);
  println(t1.getNumber());
  println(t2.getNumber());
  t1.doSomething();
}
