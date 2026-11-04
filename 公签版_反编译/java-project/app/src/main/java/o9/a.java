package o9;

import androidx.room.i;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import okhttp3.CacheControl;
import okhttp3.Call;
import okhttp3.Dns;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import ue.d;

/* loaded from: classes.dex */
public final class a implements Dns {

    /* renamed from: d, reason: collision with root package name */
    public static final MediaType f11672d = MediaType.get("application/dns-message");

    /* renamed from: a, reason: collision with root package name */
    public final OkHttpClient f11673a;

    /* renamed from: b, reason: collision with root package name */
    public HttpUrl f11674b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f11675c;

    public a(i iVar) {
        OkHttpClient okHttpClient = (OkHttpClient) iVar.f2405b;
        if (okHttpClient == null) {
            throw new NullPointerException("client not set");
        }
        this.f11674b = (HttpUrl) iVar.f2406c;
        this.f11675c = iVar.f2404a;
        this.f11673a = okHttpClient.newBuilder().dns((Dns) iVar.f2407d).build();
    }

    public static void b(Response response, String str, ArrayList arrayList, ArrayList arrayList2) {
        try {
            ArrayList arrayListC = c(str, response);
            synchronized (arrayList) {
                arrayList.addAll(arrayListC);
            }
        } catch (Exception e7) {
            synchronized (arrayList2) {
                arrayList2.add(e7);
            }
        }
    }

    public static ArrayList c(String str, Response response) {
        if (response.cacheResponse() == null && response.protocol() != Protocol.HTTP_2) {
            Platform.get().log(5, "Incorrect protocol: " + response.protocol(), null);
        }
        try {
            if (!response.isSuccessful()) {
                throw new IOException("response: " + response.code() + " " + response.message());
            }
            ResponseBody responseBodyBody = response.body();
            if (responseBodyBody.contentLength() <= 65536) {
                return b.a(responseBodyBody.source().v(), str);
            }
            throw new IOException("response size exceeds limit (65536 bytes): " + responseBodyBody.contentLength() + " bytes");
        } finally {
            response.close();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0176  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(String str, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, int i10) {
        Response responseExecute;
        String[] strArr;
        int i11;
        int i12 = 1;
        Request.Builder builderHeader = new Request.Builder().header("Accept", f11672d.toString());
        int i13 = b.f11676a;
        fg.i iVar = new fg.i();
        iVar.b0(0);
        iVar.b0(256);
        iVar.b0(1);
        iVar.b0(0);
        iVar.b0(0);
        iVar.b0(0);
        fg.i iVar2 = new fg.i();
        String[] strArrSplit = str.split("\\.");
        int length = strArrSplit.length;
        int i14 = 0;
        while (i14 < length) {
            String str2 = strArrSplit[i14];
            d.e(str2, "<this>");
            int length2 = str2.length();
            if (length2 < 0) {
                throw new IllegalArgumentException(g.b.i("endIndex < beginIndex: ", length2, " < 0").toString());
            }
            if (length2 > str2.length()) {
                StringBuilder sbN = g.b.n("endIndex > string.length: ", length2, " > ");
                sbN.append(str2.length());
                throw new IllegalArgumentException(sbN.toString().toString());
            }
            long j10 = 0;
            int i15 = 0;
            while (i15 < length2) {
                char cCharAt = str2.charAt(i15);
                if (cCharAt < 128) {
                    j10++;
                    i15 += i12;
                } else {
                    if (cCharAt < 2048) {
                        strArr = strArrSplit;
                        i11 = length;
                        j10 += 2;
                    } else {
                        strArr = strArrSplit;
                        i11 = length;
                        if (cCharAt < 55296 || cCharAt > 57343) {
                            j10 += 3;
                            i12 = 1;
                        } else {
                            int i16 = i15 + 1;
                            char cCharAt2 = i16 < length2 ? str2.charAt(i16) : (char) 0;
                            if (cCharAt > 56319 || cCharAt2 < 56320 || cCharAt2 > 57343) {
                                j10++;
                                i15 = i16;
                            } else {
                                j10 += 4;
                                i15 += 2;
                            }
                            strArrSplit = strArr;
                            length = i11;
                            i12 = 1;
                        }
                    }
                    i15 += i12;
                    strArrSplit = strArr;
                    length = i11;
                }
            }
            String[] strArr2 = strArrSplit;
            int i17 = length;
            if (j10 != str2.length()) {
                throw new IllegalArgumentException("non-ascii hostname: ".concat(str));
            }
            iVar2.W((byte) j10);
            iVar2.e0(str2);
            i14 += i12;
            strArrSplit = strArr2;
            length = i17;
        }
        iVar2.W(0);
        iVar2.K(0L, iVar, iVar2.f5853b);
        iVar.b0(i10);
        iVar.b0(1);
        Request requestBuild = builderHeader.url(this.f11674b.newBuilder().addQueryParameter("dns", iVar.c(iVar.f5853b).b().replace("=", "")).build()).build();
        OkHttpClient okHttpClient = this.f11673a;
        if (okHttpClient.cache() != null) {
            try {
                responseExecute = okHttpClient.newCall(requestBuild.newBuilder().cacheControl(CacheControl.FORCE_CACHE).build()).execute();
            } catch (IOException unused) {
            }
            if (responseExecute.code() == 504) {
                responseExecute = null;
            }
        }
        if (responseExecute != null) {
            b(responseExecute, str, arrayList2, arrayList3);
        } else {
            arrayList.add(okHttpClient.newCall(requestBuild));
        }
    }

    @Override // okhttp3.Dns
    public final List lookup(String str) throws InterruptedException, UnknownHostException {
        if (this.f11674b == null) {
            return Dns.SYSTEM.lookup(str);
        }
        boolean z = PublicSuffixDatabase.get().getEffectiveTldPlusOne(str) == null;
        if (z) {
            throw new UnknownHostException("private hosts not resolved");
        }
        if (!z && !this.f11675c) {
            throw new UnknownHostException("public hosts not resolved");
        }
        ArrayList arrayList = new ArrayList(2);
        ArrayList arrayList2 = new ArrayList(2);
        ArrayList arrayList3 = new ArrayList(5);
        a(str, arrayList, arrayList3, arrayList2, 1);
        a(str, arrayList, arrayList3, arrayList2, 28);
        CountDownLatch countDownLatch = new CountDownLatch(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Call) it.next()).enqueue(new kf.b(this, arrayList2, countDownLatch, str, arrayList3));
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException e7) {
            arrayList2.add(e7);
        }
        return !arrayList3.isEmpty() ? arrayList3 : Dns.SYSTEM.lookup(str);
    }
}
