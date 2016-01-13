/*
 * Copyright (c) 2016 ordermanagement
 */
package com.company.ordermanagement.service;

import java.util.Date;

/**
 * @author mario
 */
public interface OrderService {
    String NAME = "om_OrderService";

    public Date getLatestOrderDate();
}