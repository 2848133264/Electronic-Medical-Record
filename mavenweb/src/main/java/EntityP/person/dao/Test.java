package EntityP.person.dao;

import EntityP.person.person;

public class Test {
	public static void main(String[] args) throws Exception {
		
		persondaoImpl u =new persondaoImpl();
		u.printrecord(new person());
	}

}
