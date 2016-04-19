/*
 * Copyright (c) 2015 ordermanagement
 */
package com.company.ordermanagement.portal.controllers;

import com.company.ordermanagement.entity.Product;
import com.company.ordermanagement.portal.command.LoginUserCommand;
import com.haulmont.cuba.core.app.DataService;
import com.haulmont.cuba.core.global.LoadContext;
import com.haulmont.cuba.portal.security.PortalSessionProvider;
import com.haulmont.cuba.security.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.inject.Inject;

/**
 * @author mario
 */
@Controller
public class PortalController {

    @Inject
    protected DataService dataService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model) {
        if (!PortalSessionProvider.getUserSession().isAuthenticated()) {
            final LoginUserCommand loginUserCommand = new LoginUserCommand();
            model.addAttribute(loginUserCommand);
        }
        LoadContext l = LoadContext.create(Product.class).setView("product-view");
        l.setQueryString("select p from om$Product p");
        model.addAttribute("products", dataService.loadList(l));


        return "index";
    }
}
