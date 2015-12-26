/*
 * Copyright (c) 2015 ordermanagement
 */
package com.company.ordermanagement.portal.command;

/**
 * @author mario
 */
@SuppressWarnings({"UnusedDeclaration"})
public class LoginUserCommand {

    private String login;

    private String password;

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}