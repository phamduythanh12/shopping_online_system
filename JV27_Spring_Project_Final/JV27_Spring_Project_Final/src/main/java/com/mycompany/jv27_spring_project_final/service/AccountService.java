/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv27_spring_project_final.service;

import com.mycompany.jv27_spring_project_final.entities.AccountEntity;
import com.mycompany.jv27_spring_project_final.repository.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author AnhLe
 */
@Service
public class AccountService {

    @Autowired
    private AccountRepository accountRepository;

    public AccountEntity findAccountByUsernameAndPassword(String username, String password) {
        return accountRepository.findByUsernameLikeAndPasswordLike(username, password);
    }
     public AccountEntity findAccountByUsernameAndEmail(String username, String email) {
        return accountRepository.findByUsernameLikeOrEmailLike(username, email);
    }
    public AccountEntity saveAccount(AccountEntity accountEntity){
        return accountRepository.save(accountEntity);
    }
    public AccountEntity findAccountByUsernameAndPasswordAndStatus(String username, String password) {
        return accountRepository.findAccountByUsernameAndPasswordAndStatus(username, password);
    }
     public AccountEntity findAccountByEmail(String email) {
        return accountRepository.findAccountByEmail(email);
    }
      public AccountEntity findAccountById(int id) {
        return accountRepository.findOne(id);
    }
}
