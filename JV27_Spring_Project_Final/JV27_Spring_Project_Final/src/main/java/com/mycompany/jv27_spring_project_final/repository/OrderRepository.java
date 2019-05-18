/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv27_spring_project_final.repository;

import com.mycompany.jv27_spring_project_final.entities.OrderEntity;
import java.io.Serializable;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author duyth
 */
@Repository
public interface OrderRepository extends CrudRepository<OrderEntity, Integer>{
    
}
