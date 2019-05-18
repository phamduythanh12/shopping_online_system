/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv27_spring_project_final.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.*;
import javax.persistence.ManyToOne;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author duyth
 */
@Entity
@Table(name = "product")
public class ProductEntity implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(nullable = false)
    private String name;
    private String description;
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "expiry_date")
    private Date expiryDate;
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "date_Of_manufacture")
    private Date dateOfManufacture;
    @Column(name = "delete_flag")
    private boolean deleteFlag;
    private double price;

    @ManyToOne
    @JoinColumn(name = "product_type_id")
    private ProductTypeEntity productType;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "provider_id")
    private ProviderEntity provider;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "product", cascade = CascadeType.REMOVE)
    private List<ImageEntity> image;

    @ManyToMany(fetch = FetchType.LAZY, cascade = {CascadeType.MERGE, CascadeType.REMOVE})
    @JoinTable(name = "promotion_product_relation",
            joinColumns = @JoinColumn(name = "product_id",
                    referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "promotion_id",
                    referencedColumnName = "id"))
    private List<PromotionsEntity> promotions;

    public ProductEntity() {
    }

    public ProductTypeEntity getProductType() {
        return productType;
    }

    public void setProductType(ProductTypeEntity productType) {
        this.productType = productType;
    }

    public ProviderEntity getProvider() {
        return provider;
    }

    public void setProvider(ProviderEntity provider) {
        this.provider = provider;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public List<ImageEntity> getImage() {
        return image;
    }

    public void setImage(List<ImageEntity> image) {
        this.image = image;
    }

    public List<PromotionsEntity> getPromotions() {
        return promotions;
    }

    public void setPromotions(List<PromotionsEntity> promotions) {
        this.promotions = promotions;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getExpiryDate() {
        return expiryDate;
    }

    public void setExpiryDate(Date expiryDate) {
        this.expiryDate = expiryDate;
    }

    public Date getDateOfManufacture() {
        return dateOfManufacture;
    }

    public void setDateOfManufacture(Date dateOfManufacture) {
        this.dateOfManufacture = dateOfManufacture;
    }

    public boolean isDeleteFlag() {
        return deleteFlag;
    }

    public void setDeleteFlag(boolean deleteFlag) {
        this.deleteFlag = deleteFlag;
    }

}
