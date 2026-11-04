package com.burgstaller.okhttp.digest.fromhttpclient;

/* loaded from: classes.dex */
public interface HeaderElement {
    String getName();

    NameValuePair getParameter(int i10);

    NameValuePair getParameterByName(String str);

    int getParameterCount();

    NameValuePair[] getParameters();

    String getValue();
}
