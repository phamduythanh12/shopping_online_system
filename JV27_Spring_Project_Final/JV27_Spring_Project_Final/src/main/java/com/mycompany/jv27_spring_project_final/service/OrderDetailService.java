/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv27_spring_project_final.service;

import com.mycompany.jv27_spring_project_final.entities.OrderDetailEntity;
import com.mycompany.jv27_spring_project_final.repository.OrderDetailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author duyth
 */
@Service
public class OrderDetailService {
    @Autowired
    private OrderDetailRepository detailRepository;
    
    public OrderDetailEntity saveOrderDetail( OrderDetailEntity detailEntity){
        return detailRepository.save(detailEntity);
    }
}
