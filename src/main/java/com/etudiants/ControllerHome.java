package com.etudiants;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;

@Controller
@RequestMapping("")
public class ControllerHome {

    @GetMapping("/")
    public String home() {
        return "Home";
    }

    @GetMapping("/showEtudients")
    public String showEtudients(ModelMap modelMap) throws SQLException, ClassNotFoundException {
        EtudiantDAO etudiantDAO = new EtudiantsDAOImpl();
        modelMap.addAttribute("shows", etudiantDAO.ShowEtudiant());
        return "showEtudients";
    }

    @GetMapping("/add")
    public String addEtudiant() {
        return "addEtudiant";
    }

    @PostMapping("/addEtudiant")
    public String addEtudiant(
            @RequestParam("nomEtudient") String nomEtudient,
            @RequestParam("prenomEtudient") String prenomEtudient,
            @RequestParam("numeroMatricule") String numeroMatricule,
            @RequestParam("mailEtudient") String mailEtudient
    ) throws SQLException, ClassNotFoundException {
        EtudiantDAO etudiantDAO = new EtudiantsDAOImpl();
        Etudiant etudiant = new Etudiant(nomEtudient, prenomEtudient, numeroMatricule, mailEtudient);
        etudiantDAO.addEtudiant(etudiant);
        return "redirect:/home";
    }
}
