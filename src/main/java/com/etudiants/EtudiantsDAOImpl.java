package com.etudiants;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

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
                Integer id = rs.getInt("idEtudiant");
                String nomEtudient = rs.getString("nomEtudient");
                String prenomEtudient = rs.getString("prenomEtudient");
                String numeroMatricule = rs.getString("numeroMatricule");
                String mailEtudient = rs.getString("mailEtudient");
                Etudiant etudiant = new Etudiant(id,nomEtudient, prenomEtudient, numeroMatricule, mailEtudient);
                etudiants.add(etudiant);
            }
            return etudiants;
    }

    @Override
    public int editEtudiant(Etudiant etudiant) throws SQLException, ClassNotFoundException {
        PreparedStatement ps = ConnectionDAO.getConnection().prepareStatement("update etudient set nomEtudient = ?,prenomEtudient = ?,numeroMatricule = ?,mailEtudient = ? where idEtudiant = ?");
        ps.setString(1 , etudiant.getNomEtudient());
        ps.setString(2 , etudiant.getPrenomEtudient());
        ps.setString(3 , etudiant.getNumeroMatricule());
        ps.setString(4 , etudiant.getMailEtudient());
        ps.setInt(5 , etudiant.getIdEtudient());

        return ps.executeUpdate();
    }

    @Override
    public int deleteEtudiant(int id) throws SQLException, ClassNotFoundException {
        PreparedStatement ps = ConnectionDAO.getConnection().prepareStatement("delete from etudient where idEtudiant = ?");
        ps.setInt(1 , id);
        return ps.executeUpdate();
    }

    @Override
    public ArrayList<Etudiant> selectBiId(int id) throws SQLException, ClassNotFoundException {
        ArrayList<Etudiant> etudiants = new ArrayList<Etudiant>();
        Connection con = new ConnectionDAO().getConnection();
        PreparedStatement ps = con.prepareStatement("select * from etudient where idEtudiant = ?");
        ps.setInt(1,id);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Integer idEtudiant = rs.getInt("idEtudiant");
            String nomEtudient = rs.getString("nomEtudient");
            String prenomEtudient = rs.getString("prenomEtudient");
            String numeroMatricule = rs.getString("numeroMatricule");
            String mailEtudient = rs.getString("mailEtudient");
            Etudiant etudiant = new Etudiant(idEtudiant, nomEtudient, prenomEtudient, numeroMatricule, mailEtudient);
            etudiants.add(etudiant);
        }
        return etudiants;
    }


}

