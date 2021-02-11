package metier.forms;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import dao.exceptions.DAOException;
import dao.interfaces.DAOProduit;
import modele.Produit;


public class AddProductForm {
	
	 private DAOProduit daoProduit;
	 private String results;
	 
	 private static final Integer MAX_DESIGNATION_LENGTH=100;
	 private static final Integer MAX_DESCRIPTION_LENGTH=255;
	 
	 private static final String FIELD_DESIGNATION="designation";
	 private static final String FIELD_QUANTITE="quantite";
	 private static final String FIELD_DESCRIPTION="description";
	 private static final String FIELD_PRIX="prix";
	 
	 private Map<String,String>errors=new HashMap<String,String>();
	 
	 
	 public Produit addProduit(HttpServletRequest request)
	 {
		 String designation=this.getFieldValue(request, FIELD_DESIGNATION);
		 int quantite=Integer.parseInt(this.getFieldValue(request, FIELD_QUANTITE));
		 String description=this.getFieldValue(request, FIELD_DESCRIPTION);
		 double prix=Double.parseDouble(this.getFieldValue(request, FIELD_PRIX));
		 
		 Produit produit=new Produit();
		 
		 try {
			 this.checkDescriptionInput(description, produit);
			 this.checkDesignationInput(designation, produit);
			 this.checkPrixInput(prix, produit);
			 this.checkQuantiteInput(quantite, produit);		
		 } 
		 catch (DAOException e) {
			e.printStackTrace();
			this.results="Erreur imprÃ©vu merci de rÃ©essayer plus tard .";
		}
		 
		 return produit;
	 }
	 
	
	public void checkDescriptionInput(String description,Produit produit) {
		if (description.length() > MAX_DESCRIPTION_LENGTH || description.length() == 0) {
			this.setErrors(FIELD_DESCRIPTION, "respecter la taille reservé pour le champ description");
		}
		produit.setDescription(description);
	}
	
	public void  checkDesignationInput(String designation,Produit produit) {
		if (designation.length() > MAX_DESIGNATION_LENGTH || designation.length() == 0) {
			this.setErrors(FIELD_DESIGNATION, "respecter la taille reservé pour le champ designation");
		}
		produit.setDesignation(designation);	
	}
	
	public void  checkPrixInput(double prix,Produit produit) {
		if (prix < 0.0) {
			this.setErrors(FIELD_PRIX, "entrer un prix superieur a 0");
		}
		produit.setPrix(prix);	
	}
	
	public void  checkQuantiteInput(int quantite,Produit produit) {
		if (quantite < 0) {
			this.setErrors(FIELD_QUANTITE, "entrer une quantite superieur a 0");
		}
		produit.setQuantite(quantite);
	}
	
	public String getResults() {
		return results;
	}
	
	public Map<String, String> getErrors() {
		return errors;
    }
	
	private void setErrors(String filed, String message) {
		this.errors.put(filed, message);
    }
	
	private String getFieldValue(HttpServletRequest request,String field){
		String value=(String)request.getParameter(field);
		if(value==null  || value.trim().length()==0)
			return null;
		else
			return value.trim();
    }
}
