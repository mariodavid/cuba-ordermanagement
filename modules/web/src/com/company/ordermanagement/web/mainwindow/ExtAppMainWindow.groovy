/*
 * Copyright (c) 2016 ordermanagement
 */
package com.company.ordermanagement.web.mainwindow

import com.haulmont.cuba.gui.components.Embedded
import com.haulmont.cuba.web.app.mainwindow.AppMainWindow

import javax.inject.Inject

/**
 * @author mario
 */
public class ExtAppMainWindow extends AppMainWindow {


    @Inject Embedded metabaseDashboard

    @Override
    void init(Map<String, Object> params) {
        super.init(params)


        metabaseDashboard.setSource("http://docker-host:3000/dash/1")

    }
}
