/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv27_spring_project_final.repository;

import com.mycompany.jv27_spring_project_final.entities.AccountEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author AnhLe
 */
@Repository
public interface AccountRepository extends CrudRepository<AccountEntity, Integer> {

    AccountEntity findByUsernameLikeAndPasswordLike(String username, String password);
    
    AccountEntity findByUsernameLikeOrEmailLike(String username, String email);

    @Query(value = "SELECT * FROM account e where e.user_name = :username and e.password = :password and e.status = 'Active'", nativeQuery = true)
    AccountEntity findAccountByUsernameAndPasswordAndStatus(@Param("username")String username,@Param("password") String password);

    @Query(value = "SELECT * FROM account e WHERE e.email = :email", nativeQuery = true)
    AccountEntity findAccountByEmail( @Param("email") String email);
}
