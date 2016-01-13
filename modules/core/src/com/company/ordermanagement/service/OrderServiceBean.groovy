/*
 * Copyright (c) 2016 ordermanagement
 */
package com.company.ordermanagement.service;

import org.springframework.stereotype.Service;

@Service(OrderService.NAME)
public class OrderServiceBean implements OrderService {


    @Override
    Date getLatestOrderDate() {
        new Date()
    }
}