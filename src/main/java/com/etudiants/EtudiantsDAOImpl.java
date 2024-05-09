package com.etudiants;

import java.sql.*;
import java.util.ArrayList;
public class EtudiantsDAOImpl implements EtudiantDAO {

    @Override
        public void addEtudiant(Etudiant etudiant) throws SQLException, ClassNotFoundException {

            String requet = "INSERT INTO etudient(nomEtudient,prenomEtudient,numeroMatricule,mailEtudient) VALUES (?, ?, ?, ?)";
            System.out.println(requet);
            PreparedStatement ps= ConnectionDAO.getConnection().prepareStatement(requet);
            ps.setString(1,etudiant.getNomEtudient());
            ps.setString(2,etudiant.getPrenomEtudient());
            ps.setString(3,etudiant.getNumeroMatricule());
            ps.setString(4,etudiant.getMailEtudient());
            ps.executeUpdate();

    }

    @Override
    public ArrayList<Etudiant> ShowEtudiant() throws ClassNotFoundException, SQLException {
        ArrayList<Etudiant> etudiants = new ArrayList<>();
            PreparedStatement ps = ConnectionDAO.getConnection().prepareStatement("select * from etudient");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String nomEtudient = rs.getString("nomEtudient");
                String prenomEtudient = rs.getString("prenomEtudient");
                String numeroMatricule = rs.getString("numeroMatricule");
                String mailEtudient = rs.getString("mailEtudient");
                Etudiant etudiant = new Etudiant(nomEtudient, prenomEtudient, numeroMatricule, mailEtudient);
                etudiants.add(etudiant);
            }
            return etudiants;
    }

    @Override
    public int editEtudiant(Etudiant etudiant) throws SQLException, ClassNotFoundException {
        PreparedStatement ps = ConnectionDAO.getConnection().prepareStatement("update etudient set nomEtudient = ?,prenomEtudient = ?,numeroMatricule = ?,mailEtudient = ? where idEtudient = ?");
        ps.setString(1 , etudiant.getNomEtudient());
        ps.setString(2 , etudiant.getPrenomEtudient());
        ps.setString(3 , etudiant.getNumeroMatricule());
        ps.setString(4 , etudiant.getMailEtudient());
        ps.setInt(5 , etudiant.getIdEtudient());

        return ps.executeUpdate();
    }

    @Override
    public int deleteEtudiant(int id) throws SQLException, ClassNotFoundException {
        PreparedStatement ps = ConnectionDAO.getConnection().prepareStatement("delete from etudient where idEtudient = ?");
        ps.setInt(1 , id);
        return ps.executeUpdate();
    }

}

