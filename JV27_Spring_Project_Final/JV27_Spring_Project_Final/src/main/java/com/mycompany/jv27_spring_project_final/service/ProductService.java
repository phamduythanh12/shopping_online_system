/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv27_spring_project_final.service;

import com.mycompany.jv27_spring_project_final.entities.ProductEntity;
import com.mycompany.jv27_spring_project_final.repository.ProductRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

/**
 *
 * @author duyth
 */
@Service
public class ProductService {
    
    @Autowired
    private ProductRepository productRepository;
    
    public List<ProductEntity> getProducts( Pageable pgbl){
        List<ProductEntity> productes = (List<ProductEntity>) productRepository.findAll(pgbl).getContent();
        
        return productes;
    }
    public List<ProductEntity> searchProductTypes(int productType){
        Pageable pageable = new PageRequest(0, 12);
        return  (List<ProductEntity>) productRepository.findProductByProductType(productType,pageable).getContent();
    }
      public List<ProductEntity> searchProvider(int productType){
          Pageable pageable = new PageRequest(0, 12);
        return (List<ProductEntity>) productRepository.findProductByProvider(productType,pageable).getContent();
    }
    public ProductEntity getProduct( int productId){
        return productRepository.findOne(productId);
    }
    public ProductEntity searchProduct( String productName){
        List<ProductEntity> productEntitys = (List<ProductEntity>) productRepository.findAll();
        ProductEntity productEntity1 = new ProductEntity();
        for(ProductEntity productEntity:productEntitys){
            if(productEntity.getName().equals(productName)){
               productEntity1 = productEntity;
               
            }
        }
       return productEntity1;
    }


    public  List<ProductEntity> searchProductName(String productname){
        Pageable pageable = new PageRequest(0, 12);
        return  (List<ProductEntity>) productRepository.findProductByName(productname,pageable).getContent();
    }
//    public Page<ProductEntity> getProductsActivePageable(Pageable page){
//        return productRepository.findAllActiveProductPageable(page);
//    }
}
