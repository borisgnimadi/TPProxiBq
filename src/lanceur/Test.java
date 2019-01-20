package lanceur;

import dao.ClientDao;
import model.Client;
import model.Personne;

public class Test {

	public static void main(String[] args) {
		ClientDao dao = new ClientDao();
		Client client = dao.findByUsername("i");
		System.out.println("client trouvé : "+client);
		Personne cl = new Client("gnimadi", "Aubin Boris", "test1",  "test2", 0,  "test3");
		dao.create(cl);

		
	}

}
