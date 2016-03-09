/*
 * Copyright (c) 2015 ordermanagement
 */
package com.company.ordermanagement.gui.customer;

import com.company.ordermanagement.entity.Customer;
import com.company.ordermanagement.entity.Order;
import com.company.ordermanagement.service.DeepLinkService;
import com.haulmont.cuba.gui.components.AbstractLookup;
import com.haulmont.cuba.gui.components.Component;
import com.haulmont.cuba.gui.components.Frame;
import com.haulmont.cuba.gui.data.Datasource;

import javax.inject.Inject;

/**
 * @author mario
 */
public class CustomerBrowse extends AbstractLookup {


    @Inject
    private Datasource<Customer> customersDs;

    @Inject
    private DeepLinkService deepLinkService;


    public void showDeepLink(Component component) {

        Customer customer = customersDs.getItem();
        String deepLink = deepLinkService.generateDeepLinkForEntity(customer);
        String title = "Deep Link: " + customer.getInstanceName();

        showMessageDialog(title, deepLink, MessageType.CONFIRMATION);
    }

}