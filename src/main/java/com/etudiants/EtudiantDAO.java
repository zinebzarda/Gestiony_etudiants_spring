package com.etudiants;

import java.sql.SQLException;
import java.util.ArrayList;

public interface EtudiantDAO {
    void addEtudiant(Etudiant etudiant) throws SQLException, ClassNotFoundException;
    ArrayList<Etudiant> ShowEtudiant() throws ClassNotFoundException, SQLException;
    int editEtudiant(Etudiant etudiant) throws SQLException, ClassNotFoundException;
    int deleteEtudiant(int id) throws SQLException, ClassNotFoundException;

}
