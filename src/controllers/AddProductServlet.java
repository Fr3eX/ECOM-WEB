package controllers;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dao.implementations.DAOProduitImp;
import metier.forms.AddProductForm;
import modele.Categorie;
import modele.Produit;
import modele.User;
import modele.Vendeur;

@WebServlet("/addProduct")
@MultipartConfig( fileSizeThreshold = 1024 * 1024, 
	maxFileSize = 1024 * 1024 * 5,
	maxRequestSize = 1024 * 1024 * 5 * 1 )
public class AddProductServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private static final String VUE="/WEB-INF/sell.jsp";
	private static final String MESSAGE="probleme lors de l'ajout du produit";
    public static final String IMAGES_FOLDER = "/Images";
    public String uploadPath; 
    
    public AddProductServlet() {
        super();
    }
    public void init() throws ServletException {
        uploadPath = getServletContext().getRealPath( IMAGES_FOLDER );
        File uploadDir = new File( uploadPath );
        System.out.println("****1*****"+uploadPath);
        if ( ! uploadDir.exists() ) uploadDir.mkdir();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		User user = (User)session.getAttribute("USER");
		EntityManagerFactory factory=Persistence.createEntityManagerFactory("FIRST_UNIT");
		
		int i=0;
        for ( Part part : request.getParts() ) {
        	String name = part.getName();
            String fileName = getFileName( part );
            String fullPath = uploadPath + File.separator + fileName;
            System.out.println("****2*****"+i+fileName);
            System.out.println("********3*******"+fullPath);
            part.write( fullPath );
            i++;
        }
		/*
		final Part filePart = request.getPart("productImage");
	    final String fileName = getFileName(filePart);
	    String fullPath = uploadPath + File.separator + fileName;
        System.out.println("*******2*****"+fileName);
        System.out.println("********3*******"+fullPath);
	    filePart.write( fullPath );*/
	    
		AddProductForm apf = new AddProductForm();
		Produit produit = apf.addProduit(request);
		DAOProduitImp daoProduit = new DAOProduitImp(factory);
		String catName = (String)request.getParameter("categorie");
		Categorie cat = daoProduit.loadCategorieByName(catName);
		Vendeur vendeur = daoProduit.loadSeller(user.getIdUser());
		
		if(produit != null) {
			produit.setCategorie(cat);
			produit.setVendeur(vendeur);
			daoProduit.ajouterProduit(produit);
			List<Produit> listeProduits = daoProduit.getProduitsParVendeure(user.getIdUser());
			request.setAttribute("listeProduits", listeProduits);
			request.setAttribute("designation", produit.getDesignation());
			this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
		}
		else {
			request.setAttribute("message_erreur", MESSAGE);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
    private String getFileName( Part part ) {
        for ( String content : part.getHeader( "content-disposition" ).split( ";" ) ) {
            if ( content.trim().startsWith( "filename" ) )
                return content.substring( content.indexOf( "=" ) + 2, content.length() - 1 );
        }
        return null;
    }

}
