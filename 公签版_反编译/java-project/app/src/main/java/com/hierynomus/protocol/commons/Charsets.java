package com.hierynomus.protocol.commons;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class Charsets {
    public static final Charset UTF_8 = Charset.forName(HTTP.UTF_8);
    public static final Charset UTF_16BE = Charset.forName("UTF-16BE");
    public static final Charset UTF_16LE = Charset.forName("UTF-16LE");
    public static final Charset UTF_16 = Charset.forName(HTTP.UTF_16);
    public static final Charset US_ASCII = Charset.forName("US-ASCII");

    private Charsets() {
    }
}
