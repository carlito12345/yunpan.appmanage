package com.hjq.permissions;

import android.app.Activity;
import android.app.usage.NetworkStatsManager;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.view.View;
import android.widget.TextView;
import ba.r;
import c6.e;
import c6.f;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.hjq.permissions.core.OnPermissionFragmentCallback;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.yunpan.appmanage.bean.DesktopBean;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import com.yunpan.appmanage.bean.NameValueBean;
import com.yunpan.appmanage.bean.PresentationBean;
import com.yunpan.appmanage.bean.StackBean;
import com.yunpan.appmanage.ui.ActivityAppTraffic;
import com.yunpan.appmanage.ui.ActivityBootStartTask;
import com.yunpan.appmanage.ui.ActivityDisplayStartApp;
import com.yunpan.appmanage.ui.ActivityDownload;
import com.yunpan.appmanage.ui.ActivityKeyMapLogcat;
import com.yunpan.appmanage.ui.ActivityPresentation;
import com.yunpan.appmanage.ui.ActivityPresentation2;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.f0;
import com.yunpan.appmanage.util.v;
import com.yunpan.appmanage.util.w;
import ec.d;
import f2.e0;
import fa.c0;
import fa.x;
import fa.y;
import h2.j;
import h2.k;
import ha.a9;
import ha.ad;
import ha.ba;
import ha.ea;
import ha.fa;
import ha.fc;
import ha.h3;
import ha.he;
import ha.i;
import ha.j2;
import ha.n6;
import ha.u9;
import ha.v1;
import ha.z6;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import ma.h;
import okhttp3.HttpUrl;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.slf4j.Marker;
import ph.l;
import r1.r0;
import s1.g;
import u1.p;
import u7.g0;
import u7.q;
import u7.y0;
import ua.r5;
import ua.t5;
import v8.c;
import wa.t;
import wa.u;
import x9.b6;
import x9.x0;
import z7.s;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements OnPermissionFragmentCallback, k, c, he, ea, f, e, y, d, mb.f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3750a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3751b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3752c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f3753d;

    public /* synthetic */ b(Object obj, Object obj2, Object obj3, int i10) {
        this.f3750a = i10;
        this.f3751b = obj;
        this.f3752c = obj2;
        this.f3753d = obj3;
    }

    @Override // fa.y
    public void a(x xVar) {
        u9 u9Var = (u9) this.f3751b;
        u9Var.a();
        if (xVar.f5762a) {
            if (v.f4106a.J) {
                a0.v(xVar.f5764c, true);
                return;
            } else {
                a0.v("安装成功", true);
                return;
            }
        }
        if (xVar.f5763b == -111) {
            a0.s(xVar.f5764c, false);
            return;
        }
        a0.s("安装失败，调用安装器来安装\n" + xVar.f5764c, false);
        int i10 = v.f4106a.f4112c0;
        String str = (String) this.f3752c;
        if (i10 != 0) {
            com.bumptech.glide.c.I((Context) this.f3753d, str);
        } else {
            u9Var.c("安装中");
            h.f11033a.c(str, new ma.c(u9Var, 1));
        }
    }

    @Override // ha.he, ha.ea
    public void b(int i10) throws IOException {
        int i11 = 0;
        Object obj = this.f3753d;
        Object obj2 = this.f3752c;
        Object obj3 = this.f3751b;
        switch (this.f3750a) {
            case 3:
                i iVar = (i) obj3;
                iVar.getClass();
                KeyMapSelectBean keyMapSelectBean = (KeyMapSelectBean) ((ArrayList) obj2).get(i10);
                iVar.f7175i = keyMapSelectBean;
                ((TextView) obj).setText(keyMapSelectBean.gn_name);
                break;
            case 4:
                a9 a9Var = (a9) obj3;
                a9Var.getClass();
                StringBuilder sb2 = new StringBuilder();
                KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) obj2;
                sb2.append(keyMapSelectBean2.gn_name);
                sb2.append("（");
                String[] strArr = (String[]) obj;
                sb2.append(strArr[i10]);
                sb2.append("）");
                String string = sb2.toString();
                a9Var.b(string);
                s sVar = new s();
                sVar.l("type", Integer.valueOf(keyMapSelectBean2.gn_type));
                sVar.m("str1", strArr[i10]);
                s sVar2 = a9Var.f6745s;
                sVar2.m("name", string);
                sVar2.j("event", sVar);
                break;
            case 10:
                int i12 = ActivityBootStartTask.G;
                ActivityBootStartTask activityBootStartTask = (ActivityBootStartTask) obj3;
                activityBootStartTask.getClass();
                s sVar3 = new s();
                sVar3.k("isOpen", Boolean.TRUE);
                KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) obj2;
                sVar3.l("type", Integer.valueOf(keyMapSelectBean3.gn_type));
                sVar3.m("name", keyMapSelectBean3.gn_name);
                sVar3.m("pack", ((DesktopBean) ((ArrayList) obj).get(i10)).packageName);
                activityBootStartTask.y(-1, sVar3, keyMapSelectBean3.gn_name);
                break;
            case 13:
                int i13 = ActivityPresentation.H;
                ActivityPresentation activityPresentation = (ActivityPresentation) obj3;
                activityPresentation.getClass();
                new mc.c(i11, new e0(activityPresentation, (ArrayList) obj2, i10, (PresentationBean) obj, 3)).d(rc.f.f13757b).a(fc.b.a()).b(new r5(activityPresentation, i11));
                break;
            default:
                int i14 = ActivityPresentation2.H;
                ActivityPresentation2 activityPresentation2 = (ActivityPresentation2) obj3;
                activityPresentation2.getClass();
                new mc.c(i11, new e0(activityPresentation2, i10, (StackBean) obj2, (ArrayList) obj)).d(rc.f.f13757b).a(fc.b.a()).b(new t5(activityPresentation2, i11));
                break;
        }
    }

    @Override // c6.f
    public boolean c(int i10, View view) {
        ba baVar = (ba) this.f3751b;
        baVar.getClass();
        v1 v1Var = new v1(baVar, i10, (ClipboardManager) this.f3753d, 1);
        new fa(baVar.f6724a, baVar.f6725b, null, (ArrayList) this.f3752c, v1Var).show();
        return true;
    }

    @Override // h2.k
    public y0 d(int i10, r0 r0Var, int[] iArr) {
        u7.e0 e0Var = g0.f15471b;
        q.c(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i11 = 0;
        int i12 = 0;
        while (i11 < r0Var.f13553a) {
            int i13 = i11;
            j jVar = new j(i10, r0Var, i13, (h2.i) this.f3751b, iArr[i11], (String) this.f3752c, (String) this.f3753d);
            int i14 = i12 + 1;
            int iF = u7.a0.f(objArrCopyOf.length, i14);
            if (iF > objArrCopyOf.length) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, iF);
            }
            objArrCopyOf[i12] = jVar;
            i11++;
            i12 = i14;
        }
        return g0.i(i12, objArrCopyOf);
    }

    @Override // v8.c
    public void e(v8.a aVar, View view) {
        TextView textView = (TextView) view;
        n6 n6Var = (n6) this.f3751b;
        n6Var.getClass();
        boolean zEquals = textView.getText().toString().equals("停止监听");
        ArrayList arrayList = (ArrayList) this.f3752c;
        Context context = n6Var.f6725b;
        if (zEquals) {
            try {
                Intent intent = new Intent(context, (Class<?>) ActivityKeyMapLogcat.class);
                intent.setPackage(null);
                intent.setFlags(270532608);
                p000if.a.x0(1, context, intent);
            } catch (Exception unused) {
            }
            n6Var.f7468j.E(arrayList);
            v8.b.c("Logcat");
            return;
        }
        textView.setText("停止监听");
        p000if.a.F0(context);
        TextView textView2 = (TextView) textView.getRootView().findViewById(com.yunpan.appmanage.R.id.v_ts);
        g0.e eVar = n6Var.f7469k;
        boolean z = v.f4106a.W;
        eVar.getClass();
        new mc.c(0, new c0(eVar, z, (String) this.f3753d)).d(rc.f.f13757b).a(fc.b.a()).b(new h3(arrayList, textView2));
    }

    @Override // mb.f
    public void f(int i10, mb.h hVar, nb.b bVar) {
        int iCeil = (int) Math.ceil(((p) this.f3751b).d(hVar, 0, hVar.f11076c, (eb.c) this.f3752c));
        androidx.leanback.widget.i iVar = (androidx.leanback.widget.i) this.f3753d;
        if (iCeil > iVar.f1647b) {
            iVar.f1647b = iCeil;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:278:0x06ae  */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(mc.b bVar) throws IllegalAccessException, IllegalArgumentException, UnsupportedEncodingException, InvocationTargetException {
        r rVar;
        String strSubstring;
        int i10;
        StringBuilder sb2;
        String strB;
        int i11;
        int i12;
        int i13;
        Object objV;
        Response responseA;
        Object obj = this.f3753d;
        Object obj2 = this.f3752c;
        Object obj3 = this.f3751b;
        switch (this.f3750a) {
            case 9:
                ActivityAppTraffic.x((ActivityAppTraffic) obj3, (NetworkStatsManager) obj2, (HashMap) obj, bVar);
                break;
            default:
                int i14 = ActivityDownload.P0;
                ((ActivityDownload) obj3).getClass();
                HttpUrl httpUrl = null;
                String strSubstring2 = "";
                Response response = null;
                ResponseBody responseBodyBody = null;
                String strString = "";
                int i15 = 0;
                while (true) {
                    rVar = (r) obj2;
                    if (i15 == 0) {
                        f0.f4019a.f11674b = httpUrl;
                    } else if (i15 <= 2) {
                        f0.f4019a.f11674b = HttpUrl.get(f0.a(i15));
                    } else if (i15 == 3) {
                        f0.f4019a.f11674b = httpUrl;
                        if (rVar.f2741c.contains("123pan.com")) {
                            rVar.f2741c = rVar.f2741c.replace("123pan.com", "123pan.cn");
                            rVar.a();
                        } else if (rVar.f2741c.contains("123pan.cn")) {
                            rVar.f2741c = rVar.f2741c.replace("123pan.cn", "123865.com");
                            rVar.a();
                        } else if (rVar.f2741c.contains("123865.com")) {
                            rVar.f2741c = rVar.f2741c.replace("123865.com", "123pan.cn");
                            rVar.a();
                        } else {
                            f0.f4019a.f11674b = HttpUrl.get(f0.a(i15));
                        }
                    }
                    i15++;
                    try {
                        l9.a aVar = new l9.a(rVar.f2741c);
                        k9.a aVar2 = aVar.f11017i;
                        aVar2.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
                        aVar2.b("Referer", rVar.f2741c);
                        if (!rVar.f2747i.isEmpty()) {
                            aVar.g("Cookie", rVar.f2747i);
                        }
                        responseA = aVar.a();
                    } catch (Exception unused) {
                    }
                    if (responseA.isSuccessful()) {
                        responseBodyBody = responseA.body();
                        if (responseBodyBody != null) {
                            if (responseBodyBody.contentType().type().equals("text")) {
                                strString = responseBodyBody.string();
                                if (strString.contains("acw_sc__v2") && strString.contains("<html><script>")) {
                                    rVar.f2747i = com.bumptech.glide.c.N(strString);
                                    responseA = null;
                                }
                            }
                            response = responseA;
                        } else {
                            responseA = null;
                            response = responseA;
                        }
                    } else {
                        response = null;
                    }
                    if (response == null) {
                        httpUrl = null;
                    }
                }
                if (response != null) {
                    String string = responseBodyBody.contentType().toString();
                    String strType = responseBodyBody.contentType().type();
                    String str = (String) obj;
                    if (!strType.equals("text")) {
                        rVar.f2739a = 0;
                        List<String> listValues = response.headers().values(HttpHeaders.CONTENT_DISPOSITION);
                        if (listValues != null) {
                            for (String str2 : listValues) {
                                if (str2.contains("filename=")) {
                                    strSubstring = str2.substring(str2.indexOf("filename=") + 9);
                                    if (strSubstring != null && !strSubstring.isEmpty()) {
                                        try {
                                            strSubstring = URLDecoder.decode(strSubstring.trim(), HTTP.UTF_8);
                                        } catch (Exception unused2) {
                                        }
                                    }
                                }
                            }
                            strSubstring = "";
                        } else {
                            strSubstring = "";
                        }
                        if (strSubstring.isEmpty()) {
                            String[] strArrSplit = str.split("/");
                            if (strArrSplit.length > 0) {
                                String str3 = strArrSplit[strArrSplit.length - 1];
                                if (str3.contains("?") || str3.contains("&")) {
                                    str3 = "";
                                }
                                if (str3.contains(".")) {
                                    strSubstring2 = str3;
                                }
                            } else {
                                strSubstring2 = strSubstring;
                            }
                        }
                        if (strSubstring2.isEmpty()) {
                            String[] strArrSplit2 = response.request().url().toString().split("/");
                            if (strArrSplit2.length > 0) {
                                String strSubstring3 = strArrSplit2[strArrSplit2.length - 1];
                                if (strSubstring3.contains("?")) {
                                    i10 = 0;
                                    strSubstring3 = strSubstring3.substring(0, strSubstring3.indexOf("?"));
                                } else {
                                    i10 = 0;
                                }
                                strSubstring2 = strSubstring3.contains("&") ? strSubstring3.substring(i10, strSubstring3.indexOf("&")) : strSubstring3;
                            }
                        }
                        if (strSubstring2.isEmpty()) {
                            try {
                                String strSubstring4 = string.substring(string.indexOf("/") + 1);
                                if (!strSubstring4.isEmpty()) {
                                    if (strSubstring4.contains("vnd.android.package-archive")) {
                                        strSubstring4 = "apk";
                                    } else if (strSubstring4.equals(Marker.ANY_MARKER)) {
                                        if (strType.equals("image")) {
                                            strSubstring4 = "png";
                                        } else if (strSubstring4.equals("octet-stream")) {
                                            strSubstring4 = "bin";
                                        }
                                    }
                                    strSubstring2 = System.currentTimeMillis() + "." + strSubstring4;
                                }
                            } catch (Exception unused3) {
                            }
                        }
                        bVar.f(strSubstring2);
                        bVar.b();
                        break;
                    } else if (strString.isEmpty()) {
                        strB = "出错：无法打开此地址";
                    } else if (str.startsWith("https://qing.mvvs.cn") || str.startsWith("https://dudu-lucky.com") || str.startsWith("https://lecoauto.com")) {
                        rVar.f2739a = 6;
                        System.out.getClass();
                        ArrayList arrayList = new ArrayList();
                        if (strString.contains("氢桌面")) {
                            Iterator it = p000if.a.O(strString, "$(\".down_", SignParameters.NEW_LINE).iterator();
                            while (it.hasNext()) {
                                String str4 = (String) it.next();
                                try {
                                    String strSubstring5 = str4.substring(0, str4.lastIndexOf("\""));
                                    String strSubstring6 = strSubstring5.substring(strSubstring5.lastIndexOf("\"") + 1);
                                    if (strSubstring6.startsWith("http")) {
                                        arrayList.add(new b6(new NameValueBean(strSubstring6.substring(strSubstring6.lastIndexOf("/") + 1), strSubstring6)));
                                    }
                                } catch (Exception unused4) {
                                }
                            }
                        } else if (strString.contains("嘟嘟桌面")) {
                            ph.h hVarZ = d.b.Z(strString);
                            hVarZ.getClass();
                            nh.b.b0(".theme-vdoing-content.content__default");
                            rh.p pVarR = rh.v.R(".theme-vdoing-content.content__default");
                            pVarR.e();
                            l lVar = (l) q4.a.b0(hVarZ, l.class).filter(new rh.f(pVarR, hVarZ, 0)).findFirst().orElse(null);
                            if (lVar != null) {
                                Iterator<E> it2 = lVar.L("a[href]").iterator();
                                while (it2.hasNext()) {
                                    l lVar2 = (l) it2.next();
                                    String strTrim = lVar2.M().trim();
                                    if (strTrim.contains("(")) {
                                        strTrim = strTrim.substring(0, strTrim.indexOf("("));
                                    }
                                    if (!strTrim.isEmpty() && strTrim.length() >= 2) {
                                        arrayList.add(new b6(new NameValueBean(strTrim.concat(".apk"), lVar2.b("href"))));
                                    }
                                }
                            }
                        } else if (strString.contains("乐酷桌面")) {
                            Iterator<E> it3 = d.b.Z(strString).L(".col-md-6.col-lg-4.mb-4").iterator();
                            while (it3.hasNext()) {
                                l lVar3 = (l) it3.next();
                                lVar3.getClass();
                                nh.b.b0("a[href]");
                                rh.p pVarR2 = rh.v.R("a[href]");
                                pVarR2.e();
                                String strB2 = ((l) q4.a.b0(lVar3, l.class).filter(new rh.f(pVarR2, lVar3, 0)).findFirst().orElse(null)).b("href");
                                if (strB2.startsWith("http")) {
                                    String strTrim2 = strB2.trim();
                                    arrayList.add(new b6(new NameValueBean(strTrim2.substring(strTrim2.lastIndexOf("/") + 1).replace(" ", "").replace("_sign", "").replace("sign", ""), strB2)));
                                }
                            }
                        }
                        bVar.f(arrayList);
                        bVar.f(Boolean.TRUE);
                        bVar.b();
                        break;
                    } else if (str.contains("sgwbox.com")) {
                        rVar.f2750m = "";
                        rVar.f2739a = 8;
                        bVar.f(q4.a.m(rVar, strString));
                        bVar.f(Boolean.TRUE);
                        bVar.b();
                        break;
                    } else if (str.contains("4275.com")) {
                        rVar.f2739a = 6;
                        ArrayList arrayList2 = new ArrayList();
                        String strN = p000if.a.N(strString, "<h2>", "</h2>", false);
                        if (!strN.isEmpty()) {
                            arrayList2.add(new b6(new NameValueBean(strN, "https://4275.com?m=download&a=down&code=" + URLEncoder.encode(p000if.a.N(strString, "data-code=\"", "\"", false), HTTP.UTF_8) + "&token=" + URLEncoder.encode(p000if.a.N(strString, "data-token=\"", "\"", false), HTTP.UTF_8) + "&cdn=3", p000if.a.N(strString, "<span class=\"time\">", "</span>", false))));
                            bVar.f(arrayList2);
                            bVar.f(Boolean.TRUE);
                            bVar.b();
                            break;
                        } else {
                            strB = "读取数据出错";
                        }
                    } else {
                        if (strString.contains("123云盘") || strString.contains("123pan.com")) {
                            rVar.f2739a = 1;
                            String strN2 = p000if.a.N(strString, "\\\"ShareKey\\\":\\\"", "\\", false);
                            rVar.f2744f = strN2;
                            if (strN2.isEmpty()) {
                                String str5 = rVar.f2741c;
                                String strSubstring7 = str5.substring(str5.lastIndexOf("/") + 1);
                                if (strSubstring7.contains(".")) {
                                    strSubstring7 = strSubstring7.substring(0, strSubstring7.indexOf("."));
                                }
                                if (strSubstring7.contains("#")) {
                                    strSubstring7 = strSubstring7.substring(0, strSubstring7.indexOf("#"));
                                }
                                if (strSubstring7.contains("?")) {
                                    strSubstring7 = strSubstring7.substring(0, strSubstring7.indexOf("?"));
                                }
                                rVar.f2744f = strSubstring7;
                            }
                            rVar.f2750m = "0";
                            rVar.f2751n = 1;
                            try {
                                bVar.f(qf.c.v(rVar));
                                bVar.f(Boolean.TRUE);
                                bVar.b();
                                break;
                            } catch (Exception e7) {
                                e = e7;
                                sb2 = new StringBuilder();
                            }
                        } else if (str.contains("www.ilanzou.com") || strString.contains("蓝奏云优享版")) {
                            rVar.f2739a = 3;
                            try {
                                bVar.f(com.bumptech.glide.d.R(rVar, strString));
                                bVar.f(Boolean.TRUE);
                                bVar.b();
                                break;
                            } catch (Exception e10) {
                                e = e10;
                                sb2 = new StringBuilder();
                            }
                        } else if (strString.contains(">文件大小：</span>") || strString.contains("acw_sc__v2") || strString.contains("<iframe") || strString.contains("/filemoreajax.php") || strString.contains("/ajaxm.php?") || strString.contains("woozooo.com")) {
                            rVar.f2739a = 2;
                            try {
                                bVar.f(com.bumptech.glide.c.T(rVar, strString));
                                bVar.f(Boolean.TRUE);
                                bVar.b();
                                break;
                            } catch (Exception e11) {
                                e = e11;
                                sb2 = new StringBuilder();
                            }
                        } else if (strString.contains("小飞机网盘") || str.contains(".feijipan.")) {
                            rVar.f2739a = 4;
                            rVar.f2750m = "";
                            rVar.f2751n = 1;
                            rVar.f2745g = UUID.randomUUID().toString();
                            String str6 = rVar.f2741c;
                            String strSubstring8 = str6.substring(str6.lastIndexOf("/") + 1);
                            if (strSubstring8.contains(".")) {
                                i11 = 0;
                                strSubstring8 = strSubstring8.substring(0, strSubstring8.indexOf("."));
                            } else {
                                i11 = 0;
                            }
                            if (strSubstring8.contains("#")) {
                                strSubstring8 = strSubstring8.substring(i11, strSubstring8.indexOf("#"));
                            }
                            if (strSubstring8.contains("?")) {
                                strSubstring8 = strSubstring8.substring(i11, strSubstring8.indexOf("?"));
                            }
                            rVar.f2744f = strSubstring8;
                            try {
                                bVar.f(g.y(rVar));
                                bVar.f(Boolean.TRUE);
                                bVar.b();
                                break;
                            } catch (Exception e12) {
                                e = e12;
                                sb2 = new StringBuilder();
                            }
                        } else if (strString.contains("光鸭云盘") || str.contains("guangyapan.com")) {
                            rVar.f2739a = 9;
                            rVar.f2750m = "";
                            rVar.f2751n = 1;
                            String str7 = rVar.f2741c;
                            String strSubstring9 = str7.substring(str7.indexOf("/s/") + 3);
                            if (strSubstring9.contains(".")) {
                                i12 = 0;
                                strSubstring9 = strSubstring9.substring(0, strSubstring9.indexOf("."));
                            } else {
                                i12 = 0;
                            }
                            if (strSubstring9.contains("#")) {
                                strSubstring9 = strSubstring9.substring(i12, strSubstring9.indexOf("#"));
                            }
                            if (strSubstring9.contains("?")) {
                                strSubstring9 = strSubstring9.substring(i12, strSubstring9.indexOf("?"));
                            }
                            if (strSubstring9.contains("/")) {
                                strSubstring9 = strSubstring9.substring(i12, strSubstring9.indexOf("/"));
                            }
                            rVar.f2744f = strSubstring9;
                            try {
                                bVar.f(g.x(rVar));
                                bVar.f(Boolean.TRUE);
                                bVar.b();
                                break;
                            } catch (Exception e13) {
                                e = e13;
                                sb2 = new StringBuilder();
                            }
                        } else if (strString.contains("雀云网盘") || strString.contains("<title>雀云文件分享</title>")) {
                            rVar.f2739a = 5;
                            rVar.f2750m = "";
                            rVar.f2751n = 1;
                            String str8 = rVar.f2741c;
                            String strSubstring10 = str8.substring(str8.lastIndexOf("/") + 1);
                            if (strSubstring10.contains(".")) {
                                i13 = 0;
                                strSubstring10 = strSubstring10.substring(0, strSubstring10.indexOf("."));
                            } else {
                                i13 = 0;
                            }
                            if (strSubstring10.contains("#")) {
                                strSubstring10 = strSubstring10.substring(i13, strSubstring10.indexOf("#"));
                            }
                            if (strSubstring10.contains("?")) {
                                strSubstring10 = strSubstring10.substring(i13, strSubstring10.indexOf("?"));
                            }
                            rVar.f2744f = strSubstring10;
                            try {
                                if (!strString.contains("passwordSection")) {
                                    objV = p000if.a.V(strString);
                                } else if (rVar.f2742d.isEmpty()) {
                                    bVar.d(new Exception("需要密码"));
                                    break;
                                } else {
                                    rVar.f2743e = true;
                                    objV = p000if.a.I(rVar);
                                }
                                bVar.f(objV);
                                bVar.f(Boolean.TRUE);
                                bVar.b();
                                break;
                            } catch (Exception e14) {
                                e = e14;
                                sb2 = new StringBuilder();
                            }
                        } else if (strString.contains("OPENLIST") || strString.contains("window.ALIST")) {
                            rVar.f2739a = 7;
                            try {
                                String strSubstring11 = str.substring(rVar.f2740b.length());
                                rVar.f2750m = strSubstring11;
                                if (strSubstring11.isEmpty()) {
                                    rVar.f2750m = "/";
                                }
                                rVar.f2751n = 1;
                                bVar.f(d.b.B(rVar));
                                bVar.f(Boolean.TRUE);
                                bVar.b();
                                break;
                            } catch (Exception e15) {
                                e = e15;
                                sb2 = new StringBuilder();
                            }
                        } else {
                            strB = (strString.contains("\"message\":\"分享页面不存在\"") || strString.contains("系统升级维护中")) ? "分享页面不存在" : "分享地址不存在 或 不支持的网盘";
                        }
                        strB = da.b.b(e, sb2, "");
                    }
                } else {
                    strB = "无法打开地址";
                }
                android.support.v4.media.session.a.B(strB, bVar);
                break;
        }
    }

    @Override // com.hjq.permissions.core.OnPermissionFragmentCallback
    public /* synthetic */ void onRequestPermissionAnomaly() {
        com.hjq.permissions.core.a.a(this);
    }

    @Override // com.hjq.permissions.core.OnPermissionFragmentCallback
    public void onRequestPermissionFinish() {
        XXPermissions.lambda$startPermissionActivity$0((Activity) this.f3751b, (List) this.f3752c, (OnPermissionCallback) this.f3753d);
    }

    @Override // com.hjq.permissions.core.OnPermissionFragmentCallback
    public /* synthetic */ void onRequestPermissionNow() {
        com.hjq.permissions.core.a.b(this);
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int i11 = 4;
        int i12 = 6;
        Object obj = this.f3752c;
        Object obj2 = this.f3753d;
        Object obj3 = this.f3751b;
        switch (this.f3750a) {
            case 6:
                fc fcVar = (fc) obj3;
                fcVar.getClass();
                x9.y0 y0Var = (x9.y0) obj;
                x0 x0Var = (x0) y0Var.t(i10);
                x0Var.f18384b = !x0Var.f18384b;
                y0Var.D(i10, x0Var);
                if (!x0Var.f18383a.contains("不使用PM命令安装")) {
                    if (!x0Var.f18383a.contains("应用授予运行时权限")) {
                        if (!x0Var.f18383a.contains("方法2")) {
                            if (!x0Var.f18383a.contains("方法1")) {
                                if (!x0Var.f18383a.startsWith("无法启动应用")) {
                                    if (!x0Var.f18383a.startsWith("允许第三方应用调用")) {
                                        if (x0Var.f18383a.contains("固定互传IP")) {
                                            w wVar = v.f4106a;
                                            boolean z = x0Var.f18384b;
                                            wVar.I = z;
                                            try {
                                                wVar.f4123i.k("FixedMutualPreachIP", Boolean.valueOf(z));
                                            } catch (Exception unused) {
                                            }
                                            wVar.m();
                                            break;
                                        }
                                    } else {
                                        fcVar.f6725b.getPackageManager().setComponentEnabledSetting((ComponentName) obj2, x0Var.f18384b ? 1 : 2, 1);
                                        break;
                                    }
                                } else {
                                    u uVar = t.f17728a;
                                    boolean z4 = x0Var.f18384b;
                                    uVar.getClass();
                                    try {
                                        uVar.f17752s = z4;
                                        uVar.f17731b.k("IsCannotStartApp", Boolean.valueOf(z4));
                                    } catch (Exception unused2) {
                                    }
                                    uVar.i();
                                    break;
                                }
                            } else {
                                w wVar2 = v.f4106a;
                                boolean z10 = x0Var.f18384b;
                                wVar2.z = z10;
                                try {
                                    wVar2.f4123i.k("Auto_Open_Adb", Boolean.valueOf(z10));
                                } catch (Exception unused3) {
                                }
                                wVar2.m();
                                break;
                            }
                        } else {
                            w wVar3 = v.f4106a;
                            boolean z11 = x0Var.f18384b;
                            wVar3.A = z11;
                            try {
                                wVar3.f4123i.k("Auto_Open_Adb2", Boolean.valueOf(z11));
                            } catch (Exception unused4) {
                            }
                            wVar3.m();
                            break;
                        }
                    } else {
                        boolean z12 = x0Var.f18384b;
                        if (z12 && Build.VERSION.SDK_INT < 23) {
                            a0.u("当前系统版本不支持此功能");
                            x0Var.f18384b = false;
                            y0Var.D(i10, x0Var);
                            break;
                        } else {
                            w wVar4 = v.f4106a;
                            wVar4.f4150x = z12;
                            try {
                                wVar4.f4123i.k("InstallAuthorized", Boolean.valueOf(z12));
                            } catch (Exception unused5) {
                            }
                            wVar4.m();
                            break;
                        }
                    }
                } else {
                    w wVar5 = v.f4106a;
                    wVar5.s(x0Var.f18384b);
                    if (x0Var.f18384b && wVar5.V == 1) {
                        new z6(fcVar.f6724a, fcVar.f6725b, "检测到您是吉利E02", "由于吉利E02系统使用adb安装应用会出现整车设置app某个功能缺失，所以不建议使用adb安装应用！如果你不在意那几个无关紧要的功能的话，可以使用adb安装", "不使用adb安装", "使用adb安装", new androidx.room.s(x0Var, y0Var, i10, i11)).show();
                        break;
                    }
                }
                break;
            case 7:
                fc fcVar2 = (fc) obj3;
                fcVar2.getClass();
                x9.y0 y0Var2 = (x9.y0) obj;
                x0 x0Var2 = (x0) y0Var2.t(i10);
                if (!x0Var2.f18383a.contains("密码锁")) {
                    x0Var2.f18384b = !x0Var2.f18384b;
                    y0Var2.D(i10, x0Var2);
                    if (!x0Var2.f18383a.contains("返回键")) {
                        if (!x0Var2.f18383a.contains("root模式")) {
                            if (!x0Var2.f18383a.contains("安装成功")) {
                                if (!x0Var2.f18383a.contains("连接成功")) {
                                    if (!x0Var2.f18383a.contains("哪吒")) {
                                        if (!x0Var2.f18383a.contains("领克")) {
                                            if (!x0Var2.f18383a.contains("shell密码错误提醒")) {
                                                if (!x0Var2.f18383a.contains("弹窗显示不完整")) {
                                                    if (!x0Var2.f18383a.contains("不提示设备发现")) {
                                                        if (!x0Var2.f18383a.contains("使用新版adb协议")) {
                                                            if (x0Var2.f18383a.contains("不连接shizuku")) {
                                                                w wVar6 = v.f4106a;
                                                                boolean z13 = x0Var2.f18384b;
                                                                wVar6.f4136p = z13;
                                                                try {
                                                                    wVar6.f4123i.k("NotUseShizuku", Boolean.valueOf(z13));
                                                                } catch (Exception unused6) {
                                                                }
                                                                wVar6.m();
                                                                if (!v.f4106a.f4136p) {
                                                                    StringBuilder sb2 = new StringBuilder("由于调用shizuku需要占用比较多内存，所以不推荐使用！\n");
                                                                    Context context = fcVar2.f6725b;
                                                                    sb2.append(context.getString(com.yunpan.appmanage.R.string.str_gj));
                                                                    sb2.append("本身具有adb功能，如果您设备无法无线adb的话才考虑用shizuku");
                                                                    new z6(fcVar2.f6724a, context, sb2.toString(), "").show();
                                                                    break;
                                                                }
                                                            }
                                                        } else {
                                                            w wVar7 = v.f4106a;
                                                            boolean z14 = x0Var2.f18384b;
                                                            wVar7.f4134o = z14;
                                                            try {
                                                                wVar7.f4123i.k("UseAdbPair", Boolean.valueOf(z14));
                                                            } catch (Exception unused7) {
                                                            }
                                                            wVar7.m();
                                                            break;
                                                        }
                                                    } else {
                                                        w wVar8 = v.f4106a;
                                                        boolean z15 = x0Var2.f18384b;
                                                        wVar8.f4116e0 = z15;
                                                        try {
                                                            wVar8.f4123i.k("NonShowDeviceDiscovery", Boolean.valueOf(z15));
                                                        } catch (Exception unused8) {
                                                        }
                                                        wVar8.m();
                                                        break;
                                                    }
                                                } else {
                                                    w wVar9 = v.f4106a;
                                                    boolean z16 = x0Var2.f18384b;
                                                    wVar9.H = z16;
                                                    try {
                                                        wVar9.f4123i.k("DialogShowNoComplete", Boolean.valueOf(z16));
                                                    } catch (Exception unused9) {
                                                    }
                                                    wVar9.m();
                                                    break;
                                                }
                                            } else {
                                                w wVar10 = v.f4106a;
                                                boolean z17 = x0Var2.f18384b;
                                                wVar10.G = z17;
                                                try {
                                                    wVar10.f4123i.k("ShellPasswordErrorToast", Boolean.valueOf(z17));
                                                } catch (Exception unused10) {
                                                }
                                                wVar10.m();
                                                break;
                                            }
                                        } else {
                                            w wVar11 = v.f4106a;
                                            boolean z18 = x0Var2.f18384b;
                                            wVar11.f4132n = z18;
                                            try {
                                                wVar11.f4123i.k("AutoOpenAdb_lynkco", Boolean.valueOf(z18));
                                            } catch (Exception unused11) {
                                            }
                                            wVar11.m();
                                            break;
                                        }
                                    } else {
                                        w wVar12 = v.f4106a;
                                        boolean z19 = x0Var2.f18384b;
                                        wVar12.f4130m = z19;
                                        try {
                                            wVar12.f4123i.k("NezhaAutoOpenAdb", Boolean.valueOf(z19));
                                        } catch (Exception unused12) {
                                        }
                                        wVar12.m();
                                        if (x0Var2.f18384b && !fcVar2.f7050i.getText().toString().trim().contains("auth ")) {
                                            new z6(fcVar2.f6724a, fcVar2.f6725b, "哪吒车机使用adb shell时需要密码\n\n密码格式：auth #*XXXXXXXX\n", "请按格式正确填写", "明白", "", new j2(6)).show();
                                            break;
                                        }
                                    }
                                } else {
                                    w wVar13 = v.f4106a;
                                    boolean z20 = x0Var2.f18384b;
                                    wVar13.F = z20;
                                    try {
                                        wVar13.f4123i.k("AdbConnectSuccessToast", Boolean.valueOf(z20));
                                    } catch (Exception unused13) {
                                    }
                                    wVar13.m();
                                    break;
                                }
                            } else {
                                w wVar14 = v.f4106a;
                                boolean z21 = x0Var2.f18384b;
                                wVar14.f4148w = z21;
                                try {
                                    wVar14.f4123i.k("InstallSuccessShowDialog", Boolean.valueOf(z21));
                                } catch (Exception unused14) {
                                }
                                wVar14.m();
                                break;
                            }
                        } else {
                            w wVar15 = v.f4106a;
                            boolean z22 = x0Var2.f18384b;
                            wVar15.f4108a0 = z22;
                            try {
                                wVar15.f4123i.k("mDoNotUseRoot", Boolean.valueOf(z22));
                            } catch (Exception unused15) {
                            }
                            wVar15.m();
                            if (x0Var2.f18384b) {
                                fa.j jVar = fa.h.f5683a;
                                if (!jVar.i() && !fa.l.f5712a.isConnected()) {
                                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                    kVar.f4058m = false;
                                    kVar.l = false;
                                    jVar.h(null);
                                    break;
                                }
                            }
                        }
                    } else {
                        w wVar16 = v.f4106a;
                        boolean z23 = x0Var2.f18384b;
                        wVar16.f4146v = z23;
                        try {
                            wVar16.f4123i.k("mReturnKeyNoClose", Boolean.valueOf(z23));
                        } catch (Exception unused16) {
                        }
                        wVar16.m();
                        break;
                    }
                } else {
                    boolean z24 = x0Var2.f18384b;
                    if (!z24) {
                        new ad(fcVar2.f6725b, ((TvRecyclerView) obj2).hasFocus(), true, new v1(x0Var2, y0Var2, i10, i11)).show();
                        break;
                    } else {
                        x0Var2.f18384b = !z24;
                        y0Var2.D(i10, x0Var2);
                        v.f4106a.B("");
                        break;
                    }
                }
                break;
            case 11:
                int i13 = ActivityDisplayStartApp.F;
                ActivityDisplayStartApp activityDisplayStartApp = (ActivityDisplayStartApp) obj3;
                activityDisplayStartApp.getClass();
                new fa(activityDisplayStartApp, activityDisplayStartApp, null, (ArrayList) obj, new v1(activityDisplayStartApp, i10, (ArrayList) obj2, i12)).show();
                break;
            default:
                ActivityPresentation2 activityPresentation2 = (ActivityPresentation2) obj3;
                StackBean stackBean = (StackBean) activityPresentation2.D.t(i10);
                if (stackBean != null && !stackBean.packageName.isEmpty()) {
                    if (!stackBean.packageName.equals(activityPresentation2.A.getPackageName())) {
                        if (!stackBean.packageName.equals(activityPresentation2.F)) {
                            new fa(activityPresentation2, activityPresentation2, null, (ArrayList) obj, new b(activityPresentation2, stackBean, (ArrayList) obj2, 15)).show();
                            break;
                        } else {
                            a0.u("禁止更改默认桌面");
                            break;
                        }
                    } else {
                        a0.u("禁止更改本程序");
                        break;
                    }
                }
                break;
        }
    }
}
