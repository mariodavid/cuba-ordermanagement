/*
 * Copyright (c) 2015 ordermanagement
 */
package com.company.ordermanagement.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.FileDescriptor;
import java.util.Set;
import javax.persistence.JoinTable;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;

/**
 * @author mario
 */
@NamePattern("%s|name")
@Table(name = "OM_PRODUCT")
@Entity(name = "om$Product")
public class Product extends StandardEntity {
    private static final long serialVersionUID = -5073711717993812319L;

    @Column(name = "NAME", nullable = false)
    protected String name;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "CATEGORY_ID")
    protected ProductCategory category;

    @Lob
    @Column(name = "DESCRIPTION")
    protected String description;

    @JoinTable(name = "OM_PRODUCT_FILE_DESCRIPTOR_LINK",
        joinColumns = @JoinColumn(name = "PRODUCT_ID"),
        inverseJoinColumns = @JoinColumn(name = "FILE_DESCRIPTOR_ID"))
    @ManyToMany
    protected Set<FileDescriptor> images;

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }

    public void setImages(Set<FileDescriptor> images) {
        this.images = images;
    }

    public Set<FileDescriptor> getImages() {
        return images;
    }


    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setCategory(ProductCategory category) {
        this.category = category;
    }

    public ProductCategory getCategory() {
        return category;
    }


}