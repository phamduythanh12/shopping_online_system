/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv27_spring_project_final.service;

import com.mycompany.jv27_spring_project_final.entities.ProviderEntity;
import com.mycompany.jv27_spring_project_final.repository.ProviderRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author duyth
 */
@Service
public class ProviderService {
    @Autowired
    private ProviderRepository providerRepository;
    
    public List<ProviderEntity> getProviders(){
        return (List<ProviderEntity>) providerRepository.findAll();
    }
}
