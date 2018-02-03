/*
 * Copyright (c) 2015 ordermanagement
 */
package com.company.ordermanagement.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import java.util.Set;
import javax.persistence.OneToMany;
import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;

/**
 * @author mario
 */
@NamePattern("%s, %s|name,firstname")
@Table(name = "OM_CUSTOMER")
@Entity(name = "om$Customer")
public class Customer extends StandardEntity {
    private static final long serialVersionUID = -9000380518812765282L;

    @Column(name = "NAME", nullable = false)
    protected String name;

    @Column(name = "FIRSTNAME")
    protected String firstname;

    @Column(name = "STREET", nullable = false)
    protected String street;

    @Column(name = "POSTCODE", nullable = false)
    protected String postcode;

    @Column(name = "CITY", nullable = false)
    protected String city;

    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "customer")
    protected Set<Order> orders;

    public void setOrders(Set<Order> orders) {
        this.orders = orders;
    }

    public Set<Order> getOrders() {
        return orders;
    }


    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getStreet() {
        return street;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCity() {
        return city;
    }


}