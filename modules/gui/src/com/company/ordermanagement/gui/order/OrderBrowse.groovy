/*
 * Copyright (c) 2015 ordermanagement
 */
package com.company.ordermanagement.gui.order;

import com.company.ordermanagement.service.OrderService;
import com.haulmont.cuba.gui.components.AbstractLookup;
import com.haulmont.cuba.gui.components.Component
import com.haulmont.cuba.gui.components.Frame;

import javax.inject.Inject;

/**
 * @author mario
 */
public class OrderBrowse extends AbstractLookup {


    @Inject
    private OrderService orderService;


    public void latestOrderDate(Component component){

        showNotification("Latest Order Date: ${orderService.latestOrderDate}", Frame.NotificationType.TRAY)

    }
}