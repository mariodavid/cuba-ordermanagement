/*
 * Copyright (c) 2015 ordermanagement
 */
package com.company.ordermanagement.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;

/**
 * @author mario
 */
@NamePattern("%s|name")
@Table(name = "OM_PRODUCT_CATEGORY")
@Entity(name = "om$ProductCategory")
public class ProductCategory extends StandardEntity {
    private static final long serialVersionUID = -5030580418238980852L;

    @Column(name = "NAME", nullable = false)
    protected String name;

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }


}