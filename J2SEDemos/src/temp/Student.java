package temp;

public class Student extends Person {
	public String name1;

//	@Override
//	public void setName(String name) {
//		this.name1 = name;
//	}

	@Override
	public String toString() {
		return "Student [" + name1 + "]";
	}



	public static void main(String[] args){
		Person s = new Student();
		s.setName("stu");
//		s.name = "stu";
		System.out.println(s);

	}
	
}
