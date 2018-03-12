/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.wctc.dj.week4.model;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.regex.Pattern;

/**
 *
 * @author ryan
 */
public class ProductService {

    private List<Product> products = new ArrayList<Product>();

    
    public Product getID(String id) {
        Product theProduct = null;
        for (Product product : products) {
            if (product.getId().equals(id)) {
                theProduct = product;
            }
        }
        return theProduct;
    }

    public List<Product> getAllProducts() {
        return products;
    }

    public List<Product> findProduct(String search) {
        search = search.toLowerCase();
        List<Product> theProducts = new ArrayList<Product>();
        for (Product product : products) {
            if (product.getId().startsWith(search)) {
                theProducts.add(product);
            }
        }
        return theProducts;
    }

    public Product validateProduct(String id) {
        
        Integer index = 0;
        Product currentProduct = products.get(index);
        try {
            for (Product product : products) {
                if (product.getId().equals(id)) {
                    break;
                }
                index++;
            }
            currentProduct = products.get(index);
            
        } catch (IndexOutOfBoundsException ie) {
            //item does not exist in list... sorry
        }
        return currentProduct;
    }

    public List<Product> getProducts() {
        return products;
    }

    public final void setProducts(List<Product> products) {
        this.products = products;
    }

    public ProductService() throws IOException {
        List<Product> allProducts = processDB();
        setProducts(allProducts);
    }

    private List<Product> processDB() throws FileNotFoundException, IOException {
        List<Product> allProductsFromFile = new ArrayList<>();

        InputStream productStream =
		ProductService.class.getClassLoader().getResourceAsStream("productDB.txt");

        BufferedReader br =
		new BufferedReader(new InputStreamReader(productStream));

        String line;

        //Read File Line By Line
        while ((line = br.readLine()) != null) {
            String currentLine = line;
            String[] productData = currentLine.split("#@#");
            String id = productData[0];
            String name = productData[1];
            Double price = Double.parseDouble(productData[2]);
            String description = productData[3];
            String imageUrl = productData[4];
            Product currentProduct = new Product(id, name, price, description, imageUrl);
            allProductsFromFile.add(currentProduct);

        }
        return allProductsFromFile;
    }

}
