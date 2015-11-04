/*
 * Copyright (c) 2015 ordermanagement
 */
package com.company.ordermanagement.entity;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

/**
 * @author mario
 */
public enum QuantityUnit implements EnumClass<String>{

    pc("pc"),
    h("h"),
    d("d");

    private String id;

    QuantityUnit (String value) {
        this.id = value;
    }

    public String getId() {
        return id;
    }

    public static QuantityUnit fromId(String id) {
        for (QuantityUnit at : QuantityUnit.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}