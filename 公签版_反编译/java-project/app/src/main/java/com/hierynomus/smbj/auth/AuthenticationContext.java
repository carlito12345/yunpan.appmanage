package com.hierynomus.smbj.auth;

import java.util.Arrays;

/* loaded from: classes.dex */
public class AuthenticationContext {
    private final String domain;
    private final char[] password;
    private final String username;

    public AuthenticationContext(String str, char[] cArr, String str2) {
        this.username = str;
        this.password = Arrays.copyOf(cArr, cArr.length);
        this.domain = str2;
    }

    public static AuthenticationContext anonymous() {
        return new AuthenticationContext("", new char[0], null);
    }

    public static AuthenticationContext guest() {
        return new AuthenticationContext("Guest", new char[0], null);
    }

    public String getDomain() {
        return this.domain;
    }

    public char[] getPassword() {
        return this.password;
    }

    public String getUsername() {
        return this.username;
    }

    public boolean isAnonymous() {
        return this.username.isEmpty() && this.password.length == 0;
    }

    public boolean isGuest() {
        return this.username.equals("Guest") && this.password.length == 0;
    }

    public String toString() {
        return "AuthenticationContext[" + this.username + '@' + this.domain + ']';
    }
}
