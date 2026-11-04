package com.burgstaller.okhttp.digest;

/* loaded from: classes.dex */
public class Credentials {
    private String password;
    private String userName;

    public Credentials(String str, String str2) {
        this.userName = str;
        this.password = str2;
    }

    public String getPassword() {
        return this.password;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public void setUserName(String str) {
        this.userName = str;
    }
}
