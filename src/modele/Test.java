package modele;






import dao.implementations.DAOCategorieImp;

public abstract class Test {

	public static void main(String[] args) {
		
		DAOCategorieImp dao = new DAOCategorieImp() ;
		
		dao.delCategorie(3);
	
		
		
    	
    


	}
	
}