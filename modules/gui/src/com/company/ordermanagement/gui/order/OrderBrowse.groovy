/*
 * Copyright (c) 2015 ordermanagement
 */
package com.company.ordermanagement.gui.order

import com.company.ordermanagement.entity.Order
import com.company.ordermanagement.service.DeepLinkService;
import com.company.ordermanagement.service.OrderService
import com.haulmont.cuba.gui.components.AbstractLookup;
import com.haulmont.cuba.gui.components.Component
import com.haulmont.cuba.gui.components.Frame
import com.haulmont.cuba.gui.data.Datasource

import javax.inject.Inject;

/**
 * @author mario
 */
public class OrderBrowse extends AbstractLookup {


    @Inject
    private OrderService orderService;


    @Inject
    private Datasource<Order> ordersDs;

    @Inject
    private DeepLinkService deepLinkService;

    void latestOrderDate(Component component){

        showNotification("Latest Order Date: ${orderService.latestOrderDate}", Frame.NotificationType.TRAY)

    }

    void showDeepLink(Component component) {

        String deepLink = deepLinkService.generateDeepLinkForEntity(ordersDs.item)

        showNotification(deepLink, Frame.NotificationType.TRAY)

    }


}