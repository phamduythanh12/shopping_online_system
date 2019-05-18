/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv27_spring_project_final.repository;


import com.mycompany.jv27_spring_project_final.entities.ProductEntity;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author duyth
 */
@Repository
public interface ProductRepository extends PagingAndSortingRepository<ProductEntity, Integer>{
    //List<ProductEntity> findByProductTypeLike(int productTypeId);
    
     @Query("select b from ProductEntity b where b.productType.id = :id")
    Page<ProductEntity> findProductByProductType(@Param("id") int ProductTypeID, Pageable pageable);
    @Query("select b from ProductEntity b where b.provider.id = :id")
    Page<ProductEntity> findProductByProvider(@Param("id") int ProductTypeID, Pageable pageable);
    @Query("select b from ProductEntity b where b.name Like %:searchKey%")
    Page<ProductEntity> findProductByName(@Param("searchKey") String searchKey, Pageable pageable);
//    @Query(value = "select p from ProductEntity p ")
//    Page<ProductEntity> findAllActiveProductPageable(Pageable pageable);
}
