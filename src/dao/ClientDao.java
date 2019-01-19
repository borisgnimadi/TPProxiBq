package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.User;

public class ClientDao extends AbstractDaoJdbc implements UserDao {

	@Override
	public void create(User u) {

		try {
			Connection cn = AbstractDaoJdbc.getConnetion();

			String req = "INSERT INTO user (name,firstname)  VALUES ( ?, ?)";
			PreparedStatement st = AbstractDaoJdbc.getConnetion().prepareStatement(req);
			st.setString(1, u.getName());
			st.setString(2, u.getFirstname());

			st.execute();

			System.out.println("une ligne inserée avec succès !");
			AbstractDaoJdbc.close(cn, st, null);
			;
		} catch (Exception e) {
			System.err.println("Erreur : Pas d'insertion !");

		}

	}

	@Override
	public User findByUsername(String name) {
		try {
			Connection cn = AbstractDaoJdbc.getConnetion();

			String req = "SELECT * FROM user WHERE firstname LIKE '%"+name+"%' ";
			PreparedStatement st = AbstractDaoJdbc.getConnetion().prepareStatement(req);
			ResultSet rs = st.executeQuery(req);
			while (rs.next()) {
				User user = new User(rs.getInt("id"), rs.getString("name"), rs.getString("firstName"));
				System.out.println( rs.getString("name"));
				System.out.println( rs.getString("id"));
				System.out.println( rs.getString("firstName"));
				return user;
			}

			System.out.println("une ligne trouvée avec succès !");
			AbstractDaoJdbc.close(cn, st, null);
		} catch (Exception e) {
			System.err.println("Erreur : pas de réponse");

		}

		return null;
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub

	}

	@Override
	public User findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateOld() {
		// TODO Auto-generated method stub

	}

}
