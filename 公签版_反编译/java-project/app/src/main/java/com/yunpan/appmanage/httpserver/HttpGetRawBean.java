package com.yunpan.appmanage.httpserver;

import fi.iki.elonen.NanoHTTPD;
import java.io.BufferedInputStream;
import java.io.FileInputStream;
import q4.a;

/* loaded from: classes.dex */
public class HttpGetRawBean {
    public String filePath;
    public String getUrl;
    public String mimeType;

    public HttpGetRawBean(String str, String str2, String str3) {
        this.getUrl = str;
        this.filePath = str2;
        this.mimeType = str3;
    }

    public NanoHTTPD.Response getNanoRes() {
        BufferedInputStream bufferedInputStream;
        Exception e7;
        FileInputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(this.filePath);
            try {
                bufferedInputStream = new BufferedInputStream(fileInputStream);
            } catch (Exception e10) {
                bufferedInputStream = null;
                e7 = e10;
            }
            try {
                return NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.OK, this.mimeType + "; charset=utf-8", bufferedInputStream, bufferedInputStream.available());
            } catch (Exception e11) {
                e7 = e11;
                a.e(bufferedInputStream);
                a.e(fileInputStream);
                return RemoteServer.createPlainTextResponse(NanoHTTPD.Response.Status.INTERNAL_ERROR, "SERVER INTERNAL ERROR: IOException: " + e7.getMessage());
            }
        } catch (Exception e12) {
            bufferedInputStream = null;
            e7 = e12;
            fileInputStream = null;
        }
    }

    public boolean isUrl(String str) {
        return this.getUrl.equalsIgnoreCase(str);
    }
}
