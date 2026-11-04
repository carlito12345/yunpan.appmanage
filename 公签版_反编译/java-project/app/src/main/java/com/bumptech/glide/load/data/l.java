package com.bumptech.glide.load.data;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

/* loaded from: classes.dex */
public final class l implements e {

    /* renamed from: a, reason: collision with root package name */
    public final l5.g f3367a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3368b;

    /* renamed from: c, reason: collision with root package name */
    public HttpURLConnection f3369c;

    /* renamed from: d, reason: collision with root package name */
    public InputStream f3370d;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f3371e;

    static {
        new m7.e(14);
    }

    public l(l5.g gVar, int i10) {
        this.f3367a = gVar;
        this.f3368b = i10;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() throws IOException {
        InputStream inputStream = this.f3370d;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.f3369c;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f3369c = null;
    }

    @Override // com.bumptech.glide.load.data.e
    public final f5.a c() {
        return f5.a.REMOTE;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        this.f3371e = true;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void d(com.bumptech.glide.i iVar, d dVar) {
        l5.g gVar = this.f3367a;
        int i10 = a6.k.f434a;
        SystemClock.elapsedRealtimeNanos();
        try {
            try {
                dVar.B(e(gVar.d(), 0, null, gVar.f10584b.b()));
                if (!Log.isLoggable("HttpUrlFetcher", 2)) {
                    return;
                }
            } catch (IOException e7) {
                dVar.i(e7);
                if (!Log.isLoggable("HttpUrlFetcher", 2)) {
                    return;
                }
            }
            SystemClock.elapsedRealtimeNanos();
        } catch (Throwable th2) {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                SystemClock.elapsedRealtimeNanos();
            }
            throw th2;
        }
    }

    public final InputStream e(URL url, int i10, URL url2, Map map) throws IOException {
        int responseCode;
        int responseCode2 = -1;
        if (i10 >= 5) {
            throw new ch.a(-1, null, "Too many (> 5) redirects!");
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new ch.a(-1, null, "In re-direct loop");
                }
            } catch (URISyntaxException unused) {
            }
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            for (Map.Entry entry : map.entrySet()) {
                httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
            int i11 = this.f3368b;
            httpURLConnection.setConnectTimeout(i11);
            httpURLConnection.setReadTimeout(i11);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setInstanceFollowRedirects(false);
            this.f3369c = httpURLConnection;
            try {
                httpURLConnection.connect();
                this.f3370d = this.f3369c.getInputStream();
                if (this.f3371e) {
                    return null;
                }
                try {
                    responseCode = this.f3369c.getResponseCode();
                } catch (IOException unused2) {
                    responseCode = -1;
                }
                int i12 = responseCode / 100;
                if (i12 == 2) {
                    HttpURLConnection httpURLConnection2 = this.f3369c;
                    try {
                        if (TextUtils.isEmpty(httpURLConnection2.getContentEncoding())) {
                            this.f3370d = new a6.e(httpURLConnection2.getInputStream(), httpURLConnection2.getContentLength());
                        } else {
                            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                                httpURLConnection2.getContentEncoding();
                            }
                            this.f3370d = httpURLConnection2.getInputStream();
                        }
                        return this.f3370d;
                    } catch (IOException e7) {
                        try {
                            responseCode2 = httpURLConnection2.getResponseCode();
                        } catch (IOException unused3) {
                        }
                        throw new ch.a(responseCode2, e7, "Failed to obtain InputStream");
                    }
                }
                if (i12 != 3) {
                    if (responseCode == -1) {
                        throw new ch.a(responseCode, null, "Http request failed");
                    }
                    try {
                        throw new ch.a(responseCode, null, this.f3369c.getResponseMessage());
                    } catch (IOException e10) {
                        throw new ch.a(responseCode, e10, "Failed to get a response message");
                    }
                }
                String headerField = this.f3369c.getHeaderField(HttpHeaders.LOCATION);
                if (TextUtils.isEmpty(headerField)) {
                    throw new ch.a(responseCode, null, "Received empty or null redirect url");
                }
                try {
                    URL url3 = new URL(url, headerField);
                    b();
                    return e(url3, i10 + 1, url, map);
                } catch (MalformedURLException e11) {
                    throw new ch.a(responseCode, e11, da.b.c("Bad redirect url: ", headerField));
                }
            } catch (IOException e12) {
                try {
                    responseCode2 = this.f3369c.getResponseCode();
                } catch (IOException unused4) {
                }
                throw new ch.a(responseCode2, e12, "Failed to connect or obtain data");
            }
        } catch (IOException e13) {
            throw new ch.a(0, e13, "URL.openConnection threw");
        }
    }
}
