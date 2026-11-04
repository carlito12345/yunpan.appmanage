package com.burgstaller.okhttp.digest.fromhttpclient;

import java.io.Serializable;

/* loaded from: classes.dex */
public class BasicNameValuePair implements NameValuePair, Cloneable, Serializable {
    private static final long serialVersionUID = -6437800749411518984L;
    private final String name;
    private final String value;

    public BasicNameValuePair(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Name may not be null");
        }
        this.name = str;
        this.value = str2;
    }

    public Object clone() {
        return super.clone();
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NameValuePair)) {
            return false;
        }
        BasicNameValuePair basicNameValuePair = (BasicNameValuePair) obj;
        return (this.name.equals(basicNameValuePair.name) && this.value == basicNameValuePair.value) || ((str = this.value) != null && str.equals(basicNameValuePair.value));
    }

    @Override // com.burgstaller.okhttp.digest.fromhttpclient.NameValuePair
    public String getName() {
        return this.name;
    }

    @Override // com.burgstaller.okhttp.digest.fromhttpclient.NameValuePair
    public String getValue() {
        return this.value;
    }

    public int hashCode() {
        return LangUtils.hashCode(LangUtils.hashCode(17, this.name), this.value);
    }

    public String toString() {
        if (this.value == null) {
            return this.name;
        }
        StringBuilder sb2 = new StringBuilder(this.value.length() + this.name.length() + 1);
        sb2.append(this.name);
        sb2.append("=");
        sb2.append(this.value);
        return sb2.toString();
    }
}
