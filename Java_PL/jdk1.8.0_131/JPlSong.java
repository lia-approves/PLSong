public class JPlSong{
    public static void main(String[] args){
	Yurim yurim = new Yurim();
	yurim.speak();
    }
}

abstract class Human{
    protected String name;
    protected String bio;
    public String printType(){
	return "My type is: Human";
    }
}

interface PhysicsMajor{
default void speak(){
    System.out.println("Ahahahaha oh shit Tuesdays :O");
}
}

interface Foodie{
default void speak(){
    System.out.println("Java chip makes Yurim the CAFEBABE ;)");
}
}

abstract class UCSBStudent extends Human{
    protected String major;
    public String printType(){
	return super.printType() + " > UCSBStudent";
    }
}

class Yurim extends UCSBStudent implements PhysicsMajor, Foodie{
    public Yurim(){
	name = "Yurim";
	major = "CCS Physics";
    }
    public String printType(){
	return super.printType() + " > " + major + " Major > " + name;
    }
    public void speak(){
	Foodie.super.speak();
    }
}
