package com.etudiants;

public class Etudiant {
        private Integer idEtudient;
        private String nomEtudient;
        private String prenomEtudient;
        private String numeroMatricule;
        private String mailEtudient;

        public Etudiant() {}

        public Etudiant(String nomEtudient, String prenomEtudient, String numeroMatricule, String mailEtudient) {
                this.nomEtudient = nomEtudient;
                this.prenomEtudient = prenomEtudient;
                this.numeroMatricule = numeroMatricule;
                this.mailEtudient = mailEtudient;

        }


        public Integer getIdEtudient() {
                return idEtudient;
        }

        public String getNomEtudient() {
                return nomEtudient;
        }

        public String getPrenomEtudient() {
                return prenomEtudient;
        }

        public String getNumeroMatricule() {
                return numeroMatricule;
        }

        public String getMailEtudient() {
                return mailEtudient;
        }

        public void setIdEtudient(Integer idEtudient) {
                this.idEtudient = idEtudient;
        }

        public void setNomEtudient(String nomEtudient) {
                this.nomEtudient = nomEtudient;
        }

        public void setPrenomEtudient(String prenomEtudient) {
                this.prenomEtudient = prenomEtudient;
        }

        public void setNumeroMatricule(String numeroMatricule) {
                this.numeroMatricule = numeroMatricule;
        }

        public void setMailEtudient(String mailEtudient) {
                this.mailEtudient = mailEtudient;
        }

        @Override
        public String toString() {
                return "Etudiant{" +
                        "idEtudient=" + idEtudient +
                        ", nomEtudient='" + nomEtudient + '\'' +
                        ", prenomEtudient='" + prenomEtudient + '\'' +
                        ", numeroMatricule=" + numeroMatricule +
                        ", mailEtudient='" + mailEtudient + '\'' +
                        '}';
        }
}

