/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv27_spring_project_final.service;

import com.mycompany.jv27_spring_project_final.entities.ProductEntity;
import com.mycompany.jv27_spring_project_final.entities.ProductTypeEntity;
import com.mycompany.jv27_spring_project_final.repository.ProductTypeRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author duyth
 */
@Service
public class ProductTypeService {
    @Autowired
    private ProductTypeRepository productTypeRepository;
    

     public List<ProductTypeEntity> getProductTypes(){
        return (List<ProductTypeEntity>) productTypeRepository.findAll();
    }
     public ProductTypeEntity getProductType(int id){
         return productTypeRepository.findOne(id);
     }
}
