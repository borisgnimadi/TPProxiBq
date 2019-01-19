package lanceur;

import dao.ClientDao;
import model.User;

public class Test {

	public static void main(String[] args) {
		ClientDao dao = new ClientDao();
		User user = dao.findByUsername("b");
		System.out.println(user);

	}

}
