package s1;

import a2.g1;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Path;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.Property;
import android.view.Display;
import android.view.View;
import android.view.ViewParent;
import androidx.recyclerview.widget.o0;
import com.alibaba.sdk.android.oss.ClientConfiguration;
import com.alibaba.sdk.android.oss.OSSClient;
import com.alibaba.sdk.android.oss.common.OSSHeaders;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.alibaba.sdk.android.oss.common.auth.OSSStsTokenCredentialProvider;
import com.alibaba.sdk.android.oss.model.MultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.ObjectMetadata;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.AmStackListBean;
import com.yunpan.appmanage.bean.FileCopyBean;
import com.yunpan.appmanage.bean.ShortcutInfo;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.bean.WpTaskBean;
import com.yunpan.appmanage.carsdk.u;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.f0;
import com.yunpan.appmanage.util.z;
import j$.nio.charset.StandardCharsets;
import j$.util.Base64;
import java.io.File;
import java.io.PrintStream;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;
import org.simpleframework.xml.strategy.Name;
import ua.i6;
import x0.b1;
import x9.b6;
import x9.n5;
import x9.w3;

/* loaded from: classes.dex */
public abstract class g implements b1.k {

    /* renamed from: a, reason: collision with root package name */
    public static AudioManager f13899a;

    public static ResponseBody A(n5 n5Var, ba.g gVar, String str) throws Exception {
        z7.s sVar = new z7.s();
        sVar.m("fileId", gVar.f2690a);
        sVar.m("accessToken", str);
        String strH = H(n5Var, "https://api.guangyapan.com/userres/v1/get_share_download_url", sVar.toString());
        if (!strH.contains("downloadUrl")) {
            throw new Exception("无法获取下载地址");
        }
        String strI = d.b.b0(strH).g().q("data").o("downloadUrl").i();
        int i10 = 0;
        Response response = null;
        ResponseBody responseBodyBody = null;
        while (true) {
            int i11 = i10 + 1;
            if (i11 != 1) {
                if (i11 > 3) {
                    break;
                }
                f0.f4019a.f11674b = HttpUrl.get(f0.a(i10));
            } else {
                f0.f4019a.f11674b = null;
            }
            try {
                l9.a aVar = new l9.a(strI);
                aVar.f11017i.b(RequestParameters.SUBRESOURCE_REFERER, "https://www.guangyapan.com/");
                aVar.f11017i.b("x-client-id", "aMe-8VSlkrbQXpUR");
                aVar.f11017i.b("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0");
                Response responseA = aVar.a();
                responseBodyBody = responseA.body();
                if (responseBodyBody == null) {
                    responseA = null;
                }
                response = responseA;
            } catch (Exception unused) {
                response = null;
            }
            if (response != null) {
                break;
            }
            i10 = i11;
        }
        if (response == null || responseBodyBody == null) {
            throw new Exception("");
        }
        return responseBodyBody;
    }

    public static String B(Context context) {
        ArrayList arrayList = new ArrayList();
        List<ResolveInfo> listQueryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(new Intent("AUTONAVI_STANDARD_BROADCAST_RECV"), 0);
        if (listQueryBroadcastReceivers != null && !listQueryBroadcastReceivers.isEmpty()) {
            Iterator<ResolveInfo> it = listQueryBroadcastReceivers.iterator();
            while (it.hasNext()) {
                String str = it.next().activityInfo.packageName;
                if (!TextUtils.isEmpty(str)) {
                    arrayList.add(str);
                }
            }
        }
        if (!arrayList.isEmpty() && arrayList.size() > 1) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                String str2 = (String) it2.next();
                if (!str2.equals("com.autonavi.amapauto")) {
                    return str2;
                }
            }
        }
        return "com.autonavi.amapauto";
    }

    public static String C(ba.r rVar) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        String strQ = q(Long.toString(System.currentTimeMillis()));
        StringBuilder sb2 = new StringBuilder("https://api.feijipan.com/ws/recommend/list?devType=6&devModel=Chrome&uuid=");
        android.support.v4.media.session.a.C(sb2, rVar.f2745g, "&extra=2&timestamp=", strQ, "&shareId=");
        String strL = g.b.l(rVar.f2744f, "&type=0&offset=1&limit=110&referer=", sb2);
        System.out.getClass();
        return E(strL, rVar.f2741c);
    }

    public static d4.b D(d4.c cVar, SQLiteDatabase sQLiteDatabase) {
        ue.d.e(cVar, "refHolder");
        ue.d.e(sQLiteDatabase, "sqLiteDatabase");
        d4.b bVar = cVar.f4446a;
        if (bVar != null && ue.d.a(bVar.f4445a, sQLiteDatabase)) {
            return bVar;
        }
        d4.b bVar2 = new d4.b(sQLiteDatabase);
        cVar.f4446a = bVar2;
        return bVar2;
    }

    public static String E(String str, String str2) throws Exception {
        l9.a aVar = new l9.a(str);
        aVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
        aVar.f11017i.b("Referer", str2);
        aVar.f11017i.b("accept", "application/json, text/plain, */*");
        aVar.f11017i.b("sec-ch-ua-platform", "\"Windows\"");
        aVar.f11017i.b(OSSHeaders.ORIGIN, "https://share.feijipan.com");
        aVar.f11017i.b("sec-ch-ua", "\"Chromium\";v=\"122\", \"Not(A:Brand\";v=\"24\", \"Google Chrome\";v=\"122\"");
        aVar.f11017i.b("sec-ch-ua-mobile", "?0");
        aVar.f11017i.b("sec-fetch-site", "same-site");
        Response responseA = aVar.a();
        if (!responseA.isSuccessful()) {
            throw new Exception("请求失败");
        }
        ResponseBody responseBodyBody = responseA.body();
        if (responseBodyBody != null) {
            return responseBodyBody.string();
        }
        throw new Exception("请求失败");
    }

    public static String F(n5 n5Var) throws Exception {
        Response responseA;
        ResponseBody responseBodyBody;
        int i10 = 0;
        Response response = null;
        String strString = "";
        while (true) {
            int i11 = i10 + 1;
            if (i11 != 1) {
                if (i11 > 3) {
                    break;
                }
                f0.f4019a.f11674b = HttpUrl.get(f0.a(i10));
            } else {
                f0.f4019a.f11674b = null;
            }
            try {
                l9.a aVar = new l9.a("https://account.guangyapan.com/v1/user/me");
                aVar.f11017i.b("Referer", "https://www.guangyapan.com/");
                aVar.f11017i.b("x-client-id", "aMe-8VSlkrbQXpUR");
                aVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0");
                aVar.f11017i.b("authorization", "Bearer " + n5Var.r);
                responseA = aVar.a();
                responseBodyBody = responseA.body();
            } catch (Exception unused) {
            }
            if (responseBodyBody == null) {
                response = null;
            } else {
                strString = responseBodyBody.string();
                response = responseA;
            }
            if (response != null) {
                break;
            }
            i10 = i11;
        }
        if (response == null || strString.isEmpty()) {
            throw new Exception("");
        }
        return strString;
    }

    public static String G(String str, String str2) throws Exception {
        Response responseA;
        ResponseBody responseBodyBody;
        int i10 = 0;
        Response response = null;
        String strString = "";
        while (true) {
            int i11 = i10 + 1;
            if (i11 != 1) {
                if (i11 > 3) {
                    break;
                }
                f0.f4019a.f11674b = HttpUrl.get(f0.a(i10));
            } else {
                f0.f4019a.f11674b = null;
            }
            try {
                l9.b bVar = new l9.b(str);
                bVar.f11017i.b(RequestParameters.SUBRESOURCE_REFERER, "https://www.guangyapan.com/");
                bVar.f11017i.b("x-client-id", "aMe-8VSlkrbQXpUR");
                bVar.f11017i.b("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0");
                bVar.f11017i.b("content-type", "application/json");
                MediaType mediaType = MediaType.parse("application/json;charset=UTF-8");
                bVar.f11003n = str2;
                bVar.f11002m = mediaType;
                responseA = bVar.a();
                responseBodyBody = responseA.body();
            } catch (Exception unused) {
            }
            if (responseBodyBody == null) {
                response = null;
            } else {
                strString = responseBodyBody.string();
                response = responseA;
            }
            if (response != null) {
                break;
            }
            i10 = i11;
        }
        if (response == null || strString.isEmpty()) {
            throw new Exception("");
        }
        return strString;
    }

    public static String H(n5 n5Var, String str, String str2) throws Exception {
        Response responseA;
        ResponseBody responseBodyBody;
        int i10 = 0;
        Response response = null;
        String strString = "";
        while (true) {
            int i11 = i10 + 1;
            if (i11 != 1) {
                if (i11 > 3) {
                    break;
                }
                f0.f4019a.f11674b = HttpUrl.get(f0.a(i10));
            } else {
                f0.f4019a.f11674b = null;
            }
            try {
                l9.b bVar = new l9.b(str);
                bVar.f11017i.b("Referer", "https://www.guangyapan.com/");
                bVar.f11017i.b("x-client-id", "aMe-8VSlkrbQXpUR");
                bVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0");
                bVar.f11017i.b("authorization", "Bearer " + n5Var.r);
                MediaType mediaType = MediaType.parse("application/json;charset=UTF-8");
                bVar.f11003n = str2;
                bVar.f11002m = mediaType;
                responseA = bVar.a();
                responseBodyBody = responseA.body();
            } catch (Exception unused) {
            }
            if (responseBodyBody == null) {
                response = null;
            } else {
                strString = responseBodyBody.string();
                response = responseA;
            }
            if (response != null) {
                break;
            }
            i10 = i11;
        }
        if (response == null || strString.isEmpty()) {
            throw new Exception("");
        }
        return strString;
    }

    public static String I(String str, String str2) throws Exception {
        l9.b bVar = new l9.b(str);
        bVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
        bVar.f11017i.b("Referer", "https://www.feejii.com/");
        bVar.f11017i.b("upgrade-insecure-requests", "1");
        bVar.f11017i.b("sec-ch-ua-platform", "\"Windows\"");
        bVar.f11017i.b(OSSHeaders.ORIGIN, "https://share.feijipan.com");
        bVar.f11017i.b("sec-ch-ua", "\"Chromium\";v=\"122\", \"Not(A:Brand\";v=\"24\", \"Google Chrome\";v=\"122\"");
        bVar.f11017i.b("sec-ch-ua-mobile", "?0");
        bVar.f11017i.b("sec-fetch-site", "same-site");
        MediaType mediaType = MediaType.parse("application/json");
        bVar.f11003n = str2;
        bVar.f11002m = mediaType;
        Response responseA = bVar.a();
        if (!responseA.isSuccessful()) {
            throw new Exception("请求失败");
        }
        ResponseBody responseBodyBody = responseA.body();
        if (responseBodyBody != null) {
            return responseBodyBody.string();
        }
        throw new Exception("请求失败");
    }

    public static boolean J(int i10, Rect rect, Rect rect2) {
        if (i10 == 17) {
            int i11 = rect.right;
            int i12 = rect2.right;
            return (i11 > i12 || rect.left >= i12) && rect.left > rect2.left;
        }
        if (i10 == 33) {
            int i13 = rect.bottom;
            int i14 = rect2.bottom;
            return (i13 > i14 || rect.top >= i14) && rect.top > rect2.top;
        }
        if (i10 == 66) {
            int i15 = rect.left;
            int i16 = rect2.left;
            return (i15 < i16 || rect.right <= i16) && rect.right < rect2.right;
        }
        if (i10 != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        int i17 = rect.top;
        int i18 = rect2.top;
        return (i17 < i18 || rect.bottom <= i18) && rect.bottom < rect2.bottom;
    }

    public static void K(n5 n5Var) throws Exception {
        String string = UUID.randomUUID().toString();
        String strQ = q(Long.toString(System.currentTimeMillis()));
        StringBuilder sb2 = new StringBuilder("https://api.feejii.com/ws/login?uuid=");
        sb2.append(string);
        sb2.append("&devType=6&devCode=");
        sb2.append(string);
        sb2.append("&devModel=chrome&devVersion=140&appVersion=&timestamp=");
        z7.s sVarG = d.b.b0(I(g.b.l(strQ, "&appToken=&extra=2", sb2), "{\"loginName\":\"" + n5Var.f18294e + "\",\"loginPwd\":\"" + n5Var.f18295f + "\"}")).g();
        if (sVarG.o("code").e() != 200) {
            throw new Exception(sVarG.o("msg").i());
        }
        String strI = sVarG.o("appToken") != null ? sVarG.o("appToken").i() : "";
        if (strI.isEmpty()) {
            strI = sVarG.o("data").g().o("appToken").i();
        }
        if (strI.isEmpty()) {
            throw new Exception("获取Token失败");
        }
        n5Var.l = string;
        n5Var.f18300k = strI;
    }

    public static String L(n5 n5Var) throws Exception {
        try {
            String strG = G("https://account.guangyapan.com/v1/auth/device/code", "{\"scope\":\"user\",\"client_id\":\"aMe-8VSlkrbQXpUR\"}");
            System.out.getClass();
            z7.s sVarG = d.b.b0(strG).g();
            if (!sVarG.f19480a.containsKey("device_code") || sVarG.o("device_code").i().isEmpty()) {
                throw new Exception(sVarG.o("msg").i());
            }
            n5Var.f18304p = sVarG.o("device_code").i();
            n5Var.f18305q = sVarG.o("user_code").i();
            return sVarG.o("verification_uri_complete").i();
        } catch (Exception e7) {
            e7.printStackTrace();
            String message = e7.getMessage();
            if (message == null || message.isEmpty() || message.length() > 20) {
                message = "无法获取二维码";
            }
            throw new Exception(message);
        }
    }

    public static int M(int i10, Rect rect, Rect rect2) {
        int i11;
        int i12;
        if (i10 == 17) {
            i11 = rect.left;
            i12 = rect2.right;
        } else if (i10 == 33) {
            i11 = rect.top;
            i12 = rect2.bottom;
        } else if (i10 == 66) {
            i11 = rect2.left;
            i12 = rect.right;
        } else {
            if (i10 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            i11 = rect2.top;
            i12 = rect.bottom;
        }
        return Math.max(0, i11 - i12);
    }

    public static int N(int i10, Rect rect, Rect rect2) {
        if (i10 != 17) {
            if (i10 != 33) {
                if (i10 != 66) {
                    if (i10 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return Math.abs(((rect.width() / 2) + rect.left) - ((rect2.width() / 2) + rect2.left));
        }
        return Math.abs(((rect.height() / 2) + rect.top) - ((rect2.height() / 2) + rect2.top));
    }

    public static ObjectAnimator O(Object obj, Property property, Path path) {
        return Build.VERSION.SDK_INT >= 21 ? ObjectAnimator.ofObject(obj, (Property<Object, V>) property, (TypeConverter) null, path) : ObjectAnimator.ofFloat(obj, new h4.o(property, path), 0.0f, 1.0f);
    }

    public static void P(ByteBuffer byteBuffer, long j10) {
        byteBuffer.position(com.bumptech.glide.c.r(j10));
    }

    public static long Q(ByteBuffer byteBuffer) {
        return byteBuffer.getInt() & 4294967295L;
    }

    public static int R(ByteBuffer byteBuffer) {
        return byteBuffer.getShort() & HPKE.aead_EXPORT_ONLY;
    }

    public static void T(AccService accService, Intent intent) {
        if (!accService.f3929b.isEmpty()) {
            intent.setPackage(accService.f3929b);
        }
        intent.setFlags(32);
        try {
            try {
                p000if.a.x0(2, accService, intent);
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            AppStart.f3772h.sendBroadcast(intent);
        }
    }

    public static void U(AccService accService, int i10) {
        Intent intent = new Intent();
        intent.setAction("AUTONAVI_STANDARD_BROADCAST_RECV");
        intent.putExtra("KEY_TYPE", i10);
        intent.putExtra("SOURCE_APP", accService.getString(R.string.app_name));
        T(accService, intent);
    }

    public static void V(AccService accService, int i10) {
        Intent intent = new Intent();
        intent.setAction("AUTONAVI_STANDARD_BROADCAST_RECV");
        intent.putExtra("KEY_TYPE", 10048);
        intent.putExtra("EXTRA_DAY_NIGHT_MODE", i10);
        intent.putExtra("SOURCE_APP", accService.getString(R.string.app_name));
        T(accService, intent);
    }

    public static void W(int i10, View view) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationX", 0.0f, 10.0f, 15.0f, 10.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "translationY", 0.0f, 0.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(i10);
        animatorSet.setInterpolator(new o0(3));
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        animatorSet.start();
    }

    public static void X(View view, m7.g gVar) {
        f7.a aVar = gVar.f10920a.f10905b;
        if (aVar == null || !aVar.f5628a) {
            return;
        }
        float fG = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            fG += b1.g((View) parent);
        }
        m7.f fVar = gVar.f10920a;
        if (fVar.l != fG) {
            fVar.l = fG;
            gVar.n();
        }
    }

    public static void Y(View view) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 0.8f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 0.8f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(100);
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        animatorSet.start();
    }

    public static void Z(int i10, View view) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationX", 0.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "translationY", 0.0f, 10.0f, 15.0f, 10.0f, 0.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(i10);
        animatorSet.setInterpolator(new o0(3));
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        animatorSet.start();
    }

    public static ByteBuffer a0(ByteBuffer byteBuffer, int i10) {
        ByteBuffer byteBufferOrder = byteBuffer.slice().order(ByteOrder.LITTLE_ENDIAN);
        ByteBuffer byteBuffer2 = (ByteBuffer) byteBufferOrder.limit(byteBufferOrder.position() + i10);
        byteBuffer.position(byteBuffer.position() + i10);
        return byteBuffer2;
    }

    public static void c(WpPathBean wpPathBean, WpPathBean wpPathBean2, n5 n5Var) throws Exception {
        z7.s sVarG = d.b.b0(H(n5Var, "https://api.guangyapan.com/userres/v1/file/create_dir", "{\"parentId\":\"" + wpPathBean.path + "\",\"dirName\":\"" + wpPathBean2.name + "\"}")).g();
        if (!sVarG.o("msg").i().equals("success")) {
            throw new Exception(sVarG.o("msg").i());
        }
        wpPathBean2.jsonObject = sVarG.q("data");
        wpPathBean2.path = "" + wpPathBean2.jsonObject.o("fileId").h();
        wpPathBean2.name = wpPathBean2.jsonObject.o("fileName").i();
        wpPathBean2.is_dir = true;
        wpPathBean2.time_txt = p000if.a.m0(wpPathBean2.jsonObject.o("utime").h());
    }

    public static void d(WpPathBean wpPathBean, WpPathBean wpPathBean2, n5 n5Var) throws Exception {
        String strQ = q(Long.toString(System.currentTimeMillis()));
        StringBuilder sb2 = new StringBuilder("uuid=");
        sb2.append(n5Var.l);
        sb2.append("&devType=6&devCode=");
        android.support.v4.media.session.a.C(sb2, n5Var.l, "&devModel=chrome&devVersion=140&appVersion=&timestamp=", strQ, "&appToken=");
        z7.s sVarG = d.b.b0(I(da.b.c("https://api.feejii.com/app/file/folder/save?", g.b.l(n5Var.f18300k, "&extra=2", sb2)), "{\"folderId\":" + wpPathBean.path + ",\"folderName\":\"" + wpPathBean2.name + "\",\"folderDesc\":\"\"}")).g();
        if (sVarG.o("code").e() != 200) {
            throw new Exception(sVarG.o("msg").i());
        }
        wpPathBean2.path = "" + sVarG.o("list").f().l(0).g().o(Name.MARK).h();
    }

    public static ArrayList e() throws NumberFormatException {
        String strSubstring;
        int iIndexOf;
        int iIndexOf2;
        ArrayList arrayList = new ArrayList();
        try {
            int i10 = -1;
            int i11 = -1;
            for (String str : u9.d.r("am stack list").l0().k()) {
                int iIndexOf3 = str.indexOf(" displayId=");
                if (iIndexOf3 != -1) {
                    String strSubstring2 = str.substring(iIndexOf3 + 11);
                    int iIndexOf4 = strSubstring2.indexOf(" ");
                    if (iIndexOf4 != -1) {
                        strSubstring2 = strSubstring2.substring(0, iIndexOf4);
                    }
                    try {
                        i10 = Integer.parseInt(strSubstring2.trim());
                    } catch (Exception unused) {
                    }
                    int iIndexOf5 = str.indexOf(" id=");
                    if (iIndexOf5 != -1 && (iIndexOf = (strSubstring = str.substring(iIndexOf5 + 4)).indexOf(" ")) != -1) {
                        try {
                            i11 = Integer.parseInt(strSubstring.substring(0, iIndexOf));
                        } catch (Exception unused2) {
                        }
                    }
                } else if (!str.contains("com.android.systemui") && (iIndexOf2 = str.indexOf("taskId=")) != -1) {
                    AmStackListBean amStackListBean = new AmStackListBean();
                    amStackListBean.displayId = i10;
                    amStackListBean.rootTaskId = i11;
                    String strSubstring3 = str.substring(iIndexOf2 + 7);
                    amStackListBean.taskId = Integer.parseInt(strSubstring3.substring(0, strSubstring3.indexOf(":")));
                    int iIndexOf6 = str.indexOf(" userId=");
                    if (iIndexOf6 != -1) {
                        String strSubstring4 = str.substring(iIndexOf6 + 8);
                        int iIndexOf7 = strSubstring4.indexOf(" ");
                        if (iIndexOf7 != -1) {
                            amStackListBean.userId = Integer.parseInt(strSubstring4.substring(0, iIndexOf7));
                        }
                    }
                    int iIndexOf8 = str.indexOf(": ");
                    if (iIndexOf8 != -1) {
                        String strTrim = str.substring(iIndexOf8 + 2).trim();
                        int iIndexOf9 = strTrim.indexOf(" ");
                        if (iIndexOf9 != -1) {
                            amStackListBean.packageName = strTrim.substring(0, iIndexOf9);
                        } else {
                            amStackListBean.packageName = strTrim;
                        }
                        if (amStackListBean.packageName.contains("/") && amStackListBean.packageName.contains(".")) {
                            String str2 = amStackListBean.packageName;
                            amStackListBean.packageName = str2.substring(0, str2.indexOf("/"));
                            arrayList.add(amStackListBean);
                        }
                    }
                }
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean f(int i10, Rect rect, Rect rect2, Rect rect3) {
        int i11;
        int i12;
        boolean zG = g(i10, rect, rect2);
        if (g(i10, rect, rect3) || !zG) {
            return false;
        }
        if (i10 != 17) {
            if (i10 != 33) {
                if (i10 != 66) {
                    if (i10 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                    if (rect.bottom <= rect3.top) {
                        if (i10 != 17 && i10 != 66) {
                            int iM = M(i10, rect, rect2);
                            if (i10 == 17) {
                                i11 = rect.left;
                                i12 = rect3.left;
                            } else if (i10 == 33) {
                                i11 = rect.top;
                                i12 = rect3.top;
                            } else if (i10 == 66) {
                                i11 = rect3.right;
                                i12 = rect.right;
                            } else {
                                if (i10 != 130) {
                                    throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                                }
                                i11 = rect3.bottom;
                                i12 = rect.bottom;
                            }
                            return iM < Math.max(1, i11 - i12);
                        }
                    }
                } else if (rect.right <= rect3.left) {
                }
            } else if (rect.top >= rect3.bottom) {
            }
        } else if (rect.left >= rect3.right) {
        }
        return true;
    }

    public static final void f0(Object obj) throws Throwable {
        if (obj instanceof ie.c) {
            throw ((ie.c) obj).f8685a;
        }
    }

    public static boolean g(int i10, Rect rect, Rect rect2) {
        if (i10 != 17) {
            if (i10 != 33) {
                if (i10 != 66) {
                    if (i10 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return rect2.right >= rect.left && rect2.left <= rect.right;
        }
        return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
    }

    public static void g0(FileCopyBean fileCopyBean) {
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        String str = fileCopyBean.toDir;
        kVar.getClass();
        if (com.yunpan.appmanage.util.k.i(str)) {
            for (w3 w3Var : fileCopyBean.fromPaths) {
                if (w3Var.f18366c) {
                    com.yunpan.appmanage.util.j.f4033a.f4046f0.submit(new z(new File(fileCopyBean.toDir + w3Var.f18364a)));
                } else {
                    if (a0.g(fileCopyBean.toDir + w3Var.f18364a)) {
                        MyDb.get().lambda$addFile_thread$1(fileCopyBean.toDir + w3Var.f18364a);
                    }
                }
            }
        }
    }

    public static String h(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i10 = 0; i10 < bArr.length; i10++) {
            byte b10 = bArr[i10];
            int i11 = i10 * 2;
            cArr[i11] = "0123456789ABCDEF".charAt((b10 & 255) >>> 4);
            cArr[i11 + 1] = "0123456789ABCDEF".charAt(b10 & 15);
        }
        return new String(cArr);
    }

    public static void h0(WpTaskBean wpTaskBean, u uVar) throws Exception {
        try {
            PrintStream printStream = System.out;
            String str = wpTaskBean.bdPathInfo.f18364a;
            printStream.getClass();
            String str2 = wpTaskBean.wpPathInfo.path;
            z7.s sVar = new z7.s();
            sVar.l("capacity", 2);
            sVar.m("name", wpTaskBean.bdPathInfo.f18364a);
            z7.s sVar2 = new z7.s();
            sVar2.l("fileSize", Long.valueOf(wpTaskBean.bdPathInfo.f18367d));
            w3 w3Var = wpTaskBean.bdPathInfo;
            if (w3Var.f18367d < 1048576) {
                sVar2.m("md5", qf.c.y(w3Var.f18365b));
            }
            sVar.j("res", sVar2);
            sVar.m("parentId", wpTaskBean.wpPathInfo.path);
            z7.s sVarQ = d.b.b0(H(wpTaskBean.userInfo, "https://api.guangyapan.com/userres/v1/get_res_center_token", sVar.toString())).g().q("data");
            ba.h hVarF = a9.o.f(new File(wpTaskBean.bdPathInfo.f18365b));
            z7.s sVar3 = new z7.s();
            sVar3.m("taskId", sVarQ.o("taskId").i());
            sVar3.m("gcid", hVarF.f2696b);
            sVar3.m("cid", hVarF.f2697c);
            if (d.b.b0(H(wpTaskBean.userInfo, "https://api.guangyapan.com/userres/v1/check_can_flash_upload", sVar3.toString())).g().q("data").f19480a.containsKey("canFlashUpload")) {
                z7.s sVar4 = new z7.s();
                sVar4.m("taskId", sVarQ.o("taskId").i());
                H(wpTaskBean.userInfo, "https://api.guangyapan.com/userres/v1/file/get_info_by_task_id", sVar4.toString());
                wpTaskBean.str1 = "上传完成";
                wpTaskBean.upload_state = 0;
                wpTaskBean.str_state = "";
                return;
            }
            z7.s sVarQ2 = sVarQ.q("creds");
            String strI = sVarQ2.o("accessKeyID").i();
            String strI2 = sVarQ2.o("secretAccessKey").i();
            String strI3 = sVarQ2.o("sessionToken").i();
            sVarQ.o("endPoint").i();
            String strI4 = sVarQ.o("bucketName").i();
            String strI5 = sVarQ.o("objectPath").i();
            sVarQ.o("callbackVar").i();
            String strI6 = sVarQ.o("region").i();
            String strI7 = sVarQ.o("taskId").i();
            String strI8 = sVarQ.o("fullEndPoint").i();
            OSSStsTokenCredentialProvider oSSStsTokenCredentialProvider = new OSSStsTokenCredentialProvider(strI, strI2, strI3);
            ClientConfiguration clientConfiguration = new ClientConfiguration();
            clientConfiguration.setConnectionTimeout(60000);
            clientConfiguration.setSocketTimeout(120000);
            clientConfiguration.setMaxErrorRetry(2);
            OSSClient oSSClient = new OSSClient(AppStart.f3772h, strI8, oSSStsTokenCredentialProvider, clientConfiguration);
            oSSClient.setRegion(strI6);
            long j10 = wpTaskBean.bdPathInfo.f18367d;
            int i10 = j10 > 10737418240L ? 8388608 : j10 > 1073741824 ? 4194304 : j10 > 104857600 ? PKIFailureInfo.badSenderNonce : 1048576;
            ObjectMetadata objectMetadata = new ObjectMetadata();
            objectMetadata.setHeader("x-oss-object-acl", "public-read-write");
            MultipartUploadRequest multipartUploadRequest = new MultipartUploadRequest(strI4, strI5, wpTaskBean.bdPathInfo.f18365b, objectMetadata);
            multipartUploadRequest.setPartSize(i10);
            multipartUploadRequest.setProgressCallback(new g1(wpTaskBean, 7, uVar));
            oSSClient.multipartUpload(multipartUploadRequest);
            z7.s sVar5 = new z7.s();
            sVar5.m("taskId", strI7);
            int i11 = 0;
            do {
                Thread.sleep(1000L);
                String strH = H(wpTaskBean.userInfo, "https://api.guangyapan.com/userres/v1/file/get_info_by_task_id", sVar5.toString());
                System.out.getClass();
                if (d.b.b0(strH).g().o("msg").i().toLowerCase().equals("success")) {
                    break;
                } else {
                    i11++;
                }
            } while (i11 < 6);
            wpTaskBean.str1 = "上传完成";
            wpTaskBean.upload_state = 0;
            wpTaskBean.str_state = "";
        } catch (Exception e7) {
            e7.printStackTrace();
            throw e7;
        }
    }

    public static void i0(WpTaskBean wpTaskBean, u uVar) throws Exception {
        String strY = qf.c.y(wpTaskBean.bdPathInfo.f18365b);
        if (strY.isEmpty()) {
            throw new Exception("md5校验出错");
        }
        Date date = new Date();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        int i10 = calendar.get(1);
        int i11 = calendar.get(2) + 1;
        int i12 = calendar.get(5);
        String strQ = q(Long.toString(date.getTime()));
        StringBuilder sb2 = new StringBuilder("uuid=");
        sb2.append(wpTaskBean.userInfo.l);
        sb2.append("&devType=6&devCode=");
        android.support.v4.media.session.a.C(sb2, wpTaskBean.userInfo.l, "&devModel=chrome&devVersion=140&appVersion=&timestamp=", strQ, "&appToken=");
        String strC = da.b.c("https://api.feejii.com/app/vod/getUpToken?", g.b.l(wpTaskBean.userInfo.f18300k, "&extra=2", sb2));
        StringBuilder sbN = g.b.n("storage/files/", i10, "/");
        sbN.append(i11 < 10 ? da.b.a(i11, "0") : Integer.valueOf(i11));
        sbN.append("/");
        sbN.append(i12 < 10 ? da.b.a(i12, "0") : Integer.valueOf(i12));
        sbN.append("/2/");
        sbN.append(wpTaskBean.userInfo.f18303o);
        sbN.append("/");
        sbN.append(date.getTime());
        sbN.append("1.gz");
        String string = sbN.toString();
        long jP = a0.p(new File(wpTaskBean.bdPathInfo.f18365b)) / 1024;
        if (jP < 1) {
            jP = 1;
        }
        PrintStream printStream = System.out;
        String str = wpTaskBean.wpRootPath.path;
        printStream.getClass();
        z7.s sVar = new z7.s();
        sVar.m("fileName", wpTaskBean.bdPathInfo.f18364a);
        sVar.l("fileType", 1);
        sVar.l("userId", Long.valueOf(wpTaskBean.userInfo.f18302n));
        sVar.m("md5", strY);
        sVar.m("pathKey", string);
        sVar.l("fileSize", Long.valueOf(jP));
        sVar.m("folderId", wpTaskBean.wpRootPath.path);
        sVar.m("fileId", "");
        z7.s sVarG = d.b.b0(I(strC, sVar.toString())).g();
        if (sVarG.o("code").e() != 200) {
            throw new Exception(sVarG.o("msg").i());
        }
        z7.p pVarO = sVarG.o("upToken");
        pVarO.getClass();
        if (!(pVarO instanceof z7.s)) {
            wpTaskBean.str1 = "上传完成";
            wpTaskBean.upload_state = 0;
            wpTaskBean.str_state = "";
            return;
        }
        z7.s sVarG2 = sVarG.o("upToken").g();
        String strI = sVarG2.o("accessKeyId").i();
        String strI2 = sVarG2.o("secretAccessKey").i();
        String strI3 = sVarG2.o("sessionToken").i();
        String strC2 = da.b.c("9b5hmmeuqkg00qf/", string);
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        String str2 = jCurrentTimeMillis + ";" + (1800 + jCurrentTimeMillis);
        HashMap map = new HashMap();
        map.put(RequestParameters.SUBRESOURCE_UPLOADS, "");
        map.put(RequestParameters.PREFIX, strC2);
        HashMap map2 = new HashMap();
        map2.put("host", "1500033322.vodpro-upload.com");
        map2.put("x-cos-security-token", strI3);
        String strH = android.support.v4.media.session.b.h(strI, strI2, "GET", "/", map, map2, str2);
        l9.a aVar = new l9.a("https://1500033322.vodpro-upload.com?uploads&prefix=" + URLEncoder.encode(strC2, HTTP.UTF_8));
        aVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
        aVar.f11017i.b("Referer", "https://www.feejii.com/");
        aVar.f11017i.b("x-cos-security-token", strI3);
        aVar.f11017i.b("Authorization", strH);
        aVar.f11017i.b(OSSHeaders.ORIGIN, "https://www.feejii.com");
        Response responseA = aVar.a();
        if (!responseA.isSuccessful()) {
            ResponseBody responseBodyBody = responseA.body();
            if (responseBodyBody != null) {
                responseBodyBody.string();
            }
            Headers headers = responseA.headers();
            for (int i13 = 0; i13 < headers.size(); i13++) {
                PrintStream printStream2 = System.out;
                headers.name(i13);
                headers.value(i13);
                printStream2.getClass();
            }
            throw new Exception("上传失败" + responseA.code());
        }
        ResponseBody responseBodyBody2 = responseA.body();
        if (responseBodyBody2 == null) {
            throw new Exception("请求失败");
        }
        responseBodyBody2.string();
        HashMap map3 = new HashMap();
        map3.put(RequestParameters.SUBRESOURCE_UPLOADS, "");
        HashMap map4 = new HashMap();
        map4.put("host", "1500033322.vodpro-upload.com");
        map4.put("x-cos-security-token", strI3);
        z7.s sVar2 = new z7.s();
        sVar2.m("fileName", wpTaskBean.bdPathInfo.f18364a);
        sVar2.l("fileType", 1);
        sVar2.l("userId", Long.valueOf(wpTaskBean.userInfo.f18302n));
        sVar2.m("md5", strY);
        sVar2.m("pathKey", string);
        sVar2.l("fileSize", Long.valueOf(a0.p(new File(wpTaskBean.bdPathInfo.f18365b)) / 1024));
        sVar2.m("folderId", wpTaskBean.wpRootPath.path);
        sVar2.m("fileId", "");
        z7.s sVar3 = new z7.s();
        sVar3.m("callbackMode", "HTTP_ASYNC");
        sVar3.m("callbackBody", sVar2.toString());
        String strEncodeToString = Base64.getEncoder().encodeToString(sVar3.toString().getBytes(HTTP.UTF_8));
        map4.put("x-amz-meta-callback", strEncodeToString);
        String strH2 = android.support.v4.media.session.b.h(strI, strI2, "POST", da.b.c("/", strC2), map3, map4, str2);
        l9.b bVar = new l9.b("https://1500033322.vodpro-upload.com/" + strC2 + "?uploads");
        bVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
        bVar.f11017i.b("Referer", "https://www.feejii.com/");
        bVar.f11017i.b("x-cos-security-token", strI3);
        bVar.f11017i.b("x-amz-meta-callback", strEncodeToString);
        bVar.f11017i.b("Authorization", strH2);
        bVar.f11017i.b(OSSHeaders.ORIGIN, "https://share.feijipan.com");
        Response responseA2 = bVar.a();
        if (!responseA2.isSuccessful()) {
            throw new Exception("请求失败");
        }
        ResponseBody responseBodyBody3 = responseA2.body();
        if (responseBodyBody3 == null) {
            throw new Exception("请求失败");
        }
        String strString = responseBodyBody3.string();
        if (!strString.contains("<UploadId>")) {
            throw new Exception("请求失败");
        }
        String strN = p000if.a.N(strString, "<UploadId>", "</UploadId>", false);
        String strK = ta.q.k("https://1500033322.vodpro-upload.com/", strC2, "?partNumber=1&uploadId=", strN);
        HashMap map5 = new HashMap();
        map5.put(RequestParameters.PART_NUMBER, "1");
        map5.put(RequestParameters.UPLOAD_ID, strN);
        HashMap map6 = new HashMap();
        map6.put("host", "1500033322.vodpro-upload.com");
        map6.put("x-cos-security-token", strI3);
        String strH3 = android.support.v4.media.session.b.h(strI, strI2, "PUT", da.b.c("/", strC2), map5, map6, str2);
        l9.c cVar = new l9.c(strK);
        cVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
        cVar.f11017i.b("Referer", "https://www.feejii.com/");
        cVar.f11017i.b("x-cos-security-token", strI3);
        cVar.f11017i.b("Authorization", strH3);
        cVar.f11017i.b(OSSHeaders.ORIGIN, "https://share.feijipan.com");
        File file = new File(wpTaskBean.bdPathInfo.f18365b);
        cVar.f11004p = file;
        String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(file.getName().replace("#", ""));
        cVar.f11002m = contentTypeFor == null ? k9.c.f10211d : MediaType.parse(contentTypeFor);
        Response responseA3 = cVar.a();
        if (!responseA3.isSuccessful()) {
            throw new Exception("请求失败");
        }
        if (responseA3.body() == null) {
            throw new Exception("请求失败");
        }
        try {
            wpTaskBean.upload_state = -1;
            l9.c cVar2 = new l9.c(strK);
            cVar2.f11012d = wpTaskBean;
            cVar2.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
            cVar2.f11017i.b("Referer", "https://www.feejii.com/");
            cVar2.f11017i.b("x-cos-security-token", strI3);
            cVar2.f11017i.b("Authorization", strH3);
            cVar2.f11017i.b(OSSHeaders.ORIGIN, "https://share.feijipan.com");
            File file2 = new File(wpTaskBean.bdPathInfo.f18365b);
            cVar2.f11004p = file2;
            String contentTypeFor2 = URLConnection.getFileNameMap().getContentTypeFor(file2.getName().replace("#", ""));
            cVar2.f11002m = contentTypeFor2 == null ? k9.c.f10211d : MediaType.parse(contentTypeFor2);
            cVar2.b(new ba.p(wpTaskBean, uVar, 1));
            while (true) {
                if (wpTaskBean.upload_state != -1) {
                    break;
                }
                if (wpTaskBean.isTask_stop) {
                    b9.b.b(f0.f4020b, wpTaskBean);
                    break;
                }
                Thread.sleep(100L);
            }
            if (wpTaskBean.isTask_stop) {
                throw new Exception("已主动停止");
            }
            if (wpTaskBean.upload_state != 0) {
                throw new Exception("失败：上传出错3");
            }
            wpTaskBean.str_ETag = wpTaskBean.str_ETag.replace("\"", "&quot;");
            Thread.sleep(666L);
            String str3 = "https://1500033322.vodpro-upload.com/" + strC2 + "?uploadId=" + strN;
            String str4 = "<CompleteMultipartUpload><Part><PartNumber>1</PartNumber><ETag>" + wpTaskBean.str_ETag + "</ETag></Part></CompleteMultipartUpload>";
            HashMap map7 = new HashMap();
            map7.put(RequestParameters.UPLOAD_ID, strN);
            HashMap map8 = new HashMap();
            map8.put("host", "1500033322.vodpro-upload.com");
            map8.put("x-cos-security-token", strI3);
            String strH4 = android.support.v4.media.session.b.h(strI, strI2, "POST", "/" + strC2, map7, map8, str2);
            l9.b bVar2 = new l9.b(str3);
            bVar2.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
            bVar2.f11017i.b("Referer", "https://www.feejii.com/");
            bVar2.f11017i.b("x-cos-security-token", strI3);
            bVar2.f11017i.b("Authorization", strH4);
            bVar2.f11017i.b(OSSHeaders.ORIGIN, "https://share.feijipan.com");
            bVar2.f11003n = str4;
            bVar2.f11002m = k9.c.f10210c;
            Response responseA4 = bVar2.a();
            if (!responseA4.isSuccessful()) {
                throw new Exception("请求失败");
            }
            ResponseBody responseBodyBody4 = responseA4.body();
            if (responseBodyBody4 == null) {
                throw new Exception("请求失败");
            }
            responseBodyBody4.string();
            System.out.getClass();
            Thread.sleep(1000L);
            if (d.b.b0(E("https://api.feijipan.com/ws/vod/results?" + ("uuid=" + wpTaskBean.userInfo.l + "&devType=6&devCode=" + wpTaskBean.userInfo.l + "&devModel=chrome&devVersion=122&appVersion=&timestamp=" + q(Long.toString(date.getTime())) + "&appToken=" + wpTaskBean.userInfo.f18300k + "&extra=2") + "&token=" + URLEncoder.encode(string, HTTP.UTF_8), "https://www.feijipan.com/")).g().o("code").e() != 200) {
                wpTaskBean.str1 = "未知";
                wpTaskBean.upload_state = 0;
            } else {
                wpTaskBean.str1 = "上传完成";
                wpTaskBean.str_state = "";
                wpTaskBean.upload_state = 0;
            }
        } catch (Exception unused) {
            throw new Exception("失败：上传出错1");
        }
    }

    public static void j(String str, boolean z) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void j0(n5 n5Var) throws Exception {
        String string = UUID.randomUUID().toString();
        if (n5Var.l.isEmpty()) {
            n5Var.l = string;
        } else {
            string = n5Var.l;
        }
        String strE = E("https://api.feejii.com/app/user/info/map?" + string + "&devType=6&devCode=" + string + "&devModel=chrome&devVersion=140&appVersion=&timestamp=" + q(Long.toString(System.currentTimeMillis())) + "&appToken=" + n5Var.f18300k + "&extra=2", "https://www.feejii.com/");
        System.out.getClass();
        z7.s sVarG = d.b.b0(strE).g();
        if (sVarG.o("code").e() != 200) {
            throw new Exception(sVarG.o("msg").i());
        }
        n5Var.f18302n = sVarG.o("map").g().o("userId").h() + "";
        n5Var.f18303o = sVarG.o("map").g().o("account").i();
    }

    public static void k(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException();
        }
    }

    public static boolean k0(n5 n5Var) {
        try {
            z7.s sVarG = d.b.b0(F(n5Var)).g();
            if (!sVarG.f19480a.containsKey("phone_number")) {
                return false;
            }
            n5Var.f18294e = sVarG.o("phone_number").i();
            return true;
        } catch (Exception e7) {
            e7.printStackTrace();
            return false;
        }
    }

    public static void l(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static boolean m(char c7) {
        return (1424 <= c7 && c7 <= 2303) || c7 == 8206 || c7 == 8207 || (8234 <= c7 && c7 <= 8238) || ((8294 <= c7 && c7 <= 8297) || ((55296 <= c7 && c7 <= 57343) || ((64285 <= c7 && c7 <= 65023) || (65136 <= c7 && c7 <= 65278))));
    }

    public static androidx.emoji2.text.s n(Context context) {
        ProviderInfo providerInfoA;
        kf.b bVar;
        ApplicationInfo applicationInfo;
        int i10 = Build.VERSION.SDK_INT;
        gf.g eVar = i10 >= 28 ? new androidx.emoji2.text.e() : i10 >= 19 ? new androidx.emoji2.text.d() : new gf.g(3);
        PackageManager packageManager = context.getPackageManager();
        l(packageManager, "Package manager required to locate emoji font provider");
        Iterator it = eVar.D(packageManager, new Intent("androidx.content.action.LOAD_EMOJI_FONT")).iterator();
        while (true) {
            if (!it.hasNext()) {
                providerInfoA = null;
                break;
            }
            providerInfoA = eVar.A((ResolveInfo) it.next());
            if (providerInfoA != null && (applicationInfo = providerInfoA.applicationInfo) != null && (applicationInfo.flags & 1) == 1) {
                break;
            }
        }
        if (providerInfoA == null) {
            bVar = null;
        } else {
            try {
                String str = providerInfoA.authority;
                String str2 = providerInfoA.packageName;
                Signature[] signatureArrB = eVar.B(packageManager, str2);
                ArrayList arrayList = new ArrayList();
                for (Signature signature : signatureArrB) {
                    arrayList.add(signature.toByteArray());
                }
                bVar = new kf.b(str, str2, "emojicompat-emoji-font", Collections.singletonList(arrayList));
            } catch (PackageManager.NameNotFoundException e7) {
                Log.wtf("emoji2.text.DefaultEmojiConfig", e7);
            }
        }
        if (bVar == null) {
            return null;
        }
        return new androidx.emoji2.text.s(new androidx.emoji2.text.r(context, bVar));
    }

    public static qf.c o(int i10) {
        return i10 != 0 ? i10 != 1 ? new m7.i() : new m7.d() : new m7.i();
    }

    public static boolean p(Context context) {
        Display.HdrCapabilities hdrCapabilities;
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        Display display = displayManager != null ? displayManager.getDisplay(0) : null;
        if (display == null || !display.isHdr() || (hdrCapabilities = display.getHdrCapabilities()) == null) {
            return false;
        }
        for (int i10 : hdrCapabilities.getSupportedHdrTypes()) {
            if (i10 == 1) {
                return true;
            }
        }
        return false;
    }

    public static String q(String str) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        try {
            byte[] bArrDecode = Base64.getDecoder().decode("YbQHZqK/PdQql2+7ATcPQHREAxt0Hn0Ob9v317QirZM=");
            SecretKeySpec secretKeySpecT = t("AES/ECB/PKCS5Padding");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(2, secretKeySpecT);
            String str2 = new String(cipher.doFinal(bArrDecode), StandardCharsets.UTF_8);
            Cipher cipher2 = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher2.init(1, t(str2));
            return h(cipher2.doFinal(str.getBytes(Charset.forName(HTTP.UTF_8))));
        } catch (Exception e7) {
            throw new RuntimeException(g.b.z(e7, new StringBuilder("加密失败: ")));
        }
    }

    public static boolean r(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static void s(AccService accService, int i10) {
        if (i10 == 68) {
            U(accService, 10028);
            return;
        }
        if (i10 == 65) {
            U(accService, 10031);
            return;
        }
        if (i10 == 63) {
            V(accService, 0);
            return;
        }
        if (i10 == 61) {
            V(accService, 1);
            return;
        }
        if (i10 == 62) {
            V(accService, 2);
            return;
        }
        if (i10 == 69) {
            if (wa.s.c().f17711g == 0) {
                wa.s sVarC = wa.s.c();
                int i11 = Calendar.getInstance().get(11);
                sVarC.f17711g = (i11 < 6 || i11 >= 18) ? 2 : 1;
            } else if (wa.s.c().f17711g == 1) {
                wa.s.c().f17711g++;
            } else {
                wa.s.c().f17711g--;
            }
            V(accService, wa.s.c().f17711g);
            return;
        }
        if (i10 == 64) {
            int i12 = accService.getResources().getConfiguration().uiMode & 48;
            if (i12 == 32) {
                i = 2;
            } else if (i12 != 16) {
                return;
            }
            V(accService, i);
            return;
        }
        if (i10 == 66) {
            U(accService, 10034);
        } else if (i10 == 67) {
            System.out.getClass();
            U(accService, 10021);
        }
    }

    public static SecretKeySpec t(String str) {
        if (str.length() > 16) {
            str = str.substring(0, 16);
        } else if (str.length() < 16) {
            str = zg.b.b(str, Matrix.MATRIX_TYPE_RANDOM_LT);
        }
        return new SecretKeySpec(str.getBytes(), "AES");
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ArrayList u(String str) throws Throwable {
        SQLiteDatabase sQLiteDatabaseOpenDatabase;
        Iterator it;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Cursor cursorQuery = null;
        try {
            sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase("/data/data/" + str + "/databases/launcher.db", null, 1);
            try {
                try {
                    cursorQuery = sQLiteDatabaseOpenDatabase.query("favorites", new String[]{"title", "intent", "iconType", "iconPackage", "iconResource"}, "itemType = ?", new String[]{"1"}, null, null, null);
                    while (cursorQuery.moveToNext()) {
                        int columnIndex = cursorQuery.getColumnIndex("title");
                        int columnIndex2 = cursorQuery.getColumnIndex("intent");
                        String string = columnIndex >= 0 ? cursorQuery.getString(columnIndex) : "";
                        String string2 = columnIndex2 >= 0 ? cursorQuery.getString(columnIndex2) : "";
                        if (string2 != null && !string2.isEmpty()) {
                            try {
                                arrayList2.add(new ShortcutInfo(string, Intent.parseUri(string2, 0)));
                            } catch (Exception e7) {
                                e7.printStackTrace();
                            }
                        }
                    }
                    cursorQuery.close();
                } catch (Exception e10) {
                    e = e10;
                    e.printStackTrace();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    if (sQLiteDatabaseOpenDatabase != null) {
                        sQLiteDatabaseOpenDatabase.close();
                    }
                    it = arrayList2.iterator();
                    while (it.hasNext()) {
                    }
                    return arrayList;
                }
            } catch (Throwable th2) {
                th = th2;
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                if (sQLiteDatabaseOpenDatabase != null) {
                    sQLiteDatabaseOpenDatabase.close();
                }
                throw th;
            }
        } catch (Exception e11) {
            e = e11;
            sQLiteDatabaseOpenDatabase = null;
        } catch (Throwable th3) {
            th = th3;
            sQLiteDatabaseOpenDatabase = null;
            if (cursorQuery != null) {
            }
            if (sQLiteDatabaseOpenDatabase != null) {
            }
            throw th;
        }
        sQLiteDatabaseOpenDatabase.close();
        it = arrayList2.iterator();
        while (it.hasNext()) {
            ShortcutInfo shortcutInfo = (ShortcutInfo) it.next();
            if (shortcutInfo.getIntent() != null && shortcutInfo.getIntent().getComponent() != null && str.equals(shortcutInfo.getIntent().getComponent().getPackageName())) {
                arrayList.add(shortcutInfo);
            }
        }
        return arrayList;
    }

    public static synchronized AudioManager v(Context context) {
        try {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                f13899a = null;
            }
            AudioManager audioManager = f13899a;
            if (audioManager != null) {
                return audioManager;
            }
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper != null && looperMyLooper != Looper.getMainLooper()) {
                u1.e eVar = new u1.e();
                u1.a.h().execute(new f(applicationContext, 0, eVar));
                eVar.b();
                AudioManager audioManager2 = f13899a;
                audioManager2.getClass();
                return audioManager2;
            }
            AudioManager audioManager3 = (AudioManager) applicationContext.getSystemService("audio");
            f13899a = audioManager3;
            audioManager3.getClass();
            return audioManager3;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public static int w(int[] iArr, int[] iArr2, int i10) {
        if (iArr.length < 9 || iArr2.length < 38) {
            return 0;
        }
        switch (i10) {
            case 0:
                return iArr2[0] & 3;
            case 1:
                return iArr2[1];
            case 2:
                return iArr2[2] & 1;
            case 3:
                return (iArr2[2] >> 1) & 1;
            case 4:
                return (iArr2[2] >> 2) & 1;
            case 5:
                return (iArr2[2] >> 3) & 1;
            case 6:
                return (iArr2[2] >> 4) & 1;
            case 7:
                return (iArr2[2] >> 5) & 1;
            default:
                if (i10 == 9) {
                    return (iArr2[2] >> 6) & 1;
                }
                if (i10 == 10) {
                    return (iArr2[2] >> 7) & 1;
                }
                switch (i10) {
                    case 12:
                        return iArr2[3] & 1;
                    case 13:
                        return (iArr2[3] >> 1) & 1;
                    case 14:
                        return (iArr2[3] >> 2) & 1;
                    case 15:
                        return (iArr2[3] >> 3) & 1;
                    default:
                        switch (i10) {
                            case 26:
                                return (iArr2[3] >> 5) & 1;
                            case 27:
                                return iArr2[7] & 15;
                            case 28:
                                return (iArr2[7] >> 4) & 7;
                            case 29:
                                return (iArr2[7] >> 7) & 1;
                            case 30:
                                return iArr2[8] & 1;
                            case 31:
                                return (iArr2[8] >> 4) & 1;
                            case 32:
                                return (iArr2[8] >> 5) & 1;
                            case 33:
                                return (iArr2[8] >> 6) & 1;
                            case 34:
                                return (iArr2[8] >> 7) & 1;
                            case 35:
                                return iArr2[9] & 1;
                            case 36:
                                return (iArr2[9] >> 1) & 1;
                            case 37:
                                return (iArr2[9] >> 2) & 1;
                            case 38:
                                return iArr2[10] & 1;
                            case 39:
                                return (iArr2[10] >> 1) & 1;
                            case 40:
                                return (iArr2[10] >> 2) & 1;
                            case 41:
                                return (iArr2[10] >> 3) & 1;
                            case 42:
                                return (iArr2[10] >> 4) & 1;
                            case 43:
                                return (iArr2[10] >> 5) & 1;
                            case 44:
                                return (iArr2[10] >> 6) & 1;
                            case 45:
                                return (iArr2[10] >> 7) & 1;
                            case 46:
                                return iArr2[11] & 1;
                            case 47:
                                return iArr2[12] & 7;
                            case 48:
                                return (iArr2[12] >> 3) & 7;
                            case 49:
                                return (iArr2[12] >> 6) & 1;
                            case 50:
                                return (iArr2[13] >> 4) & 3;
                            case 51:
                                return (iArr2[13] >> 6) & 3;
                            case 52:
                                return iArr2[14] & 3;
                            case 53:
                                return (iArr2[14] >> 2) & 3;
                            case 54:
                                return (iArr2[14] >> 4) & 1;
                            case 55:
                                return (iArr2[14] >> 5) & 1;
                            case 56:
                                return (iArr2[14] >> 6) & 1;
                            case 57:
                                return (iArr2[14] >> 7) & 1;
                            case 58:
                                return iArr2[15] & 1;
                            case 59:
                                return (iArr2[15] >> 1) & 1;
                            case 60:
                                return (iArr2[15] >> 2) & 1;
                            case 61:
                                return (iArr2[15] >> 3) & 1;
                            case 62:
                                return (iArr2[15] >> 4) & 1;
                            case 63:
                                return (iArr2[15] >> 5) & 1;
                            case 64:
                                return (iArr2[15] >> 6) & 1;
                            case 65:
                                return (iArr2[15] >> 7) & 1;
                            case 66:
                                return iArr2[16] & 3;
                            case 67:
                                return (iArr2[16] >> 2) & 1;
                            case 68:
                                return (iArr2[16] >> 3) & 1;
                            case 69:
                                return (iArr2[16] >> 4) & 1;
                            case 70:
                                return (iArr2[16] >> 5) & 1;
                            case 71:
                                return (iArr2[16] >> 6) & 1;
                            case 72:
                                return (iArr2[16] >> 7) & 1;
                            case 73:
                                return iArr2[17] & 3;
                            case 74:
                                return (iArr2[17] >> 2) & 1;
                            case 75:
                                return (iArr2[17] >> 3) & 1;
                            case 76:
                                return (iArr2[17] >> 4) & 1;
                            case 77:
                                return (iArr2[17] >> 5) & 1;
                            case 78:
                                return (iArr2[17] >> 6) & 1;
                            case 79:
                                return (iArr2[17] >> 7) & 1;
                            case 80:
                                return iArr2[18] & 1;
                            case 81:
                                return (iArr2[18] >> 1) & 1;
                            case 82:
                                return (iArr2[18] >> 2) & 1;
                            case 83:
                                return (iArr2[18] >> 3) & 1;
                            case CarSettingID.Send.HVAC_SEASONS_KEY /* 84 */:
                                return (iArr2[18] >> 4) & 1;
                            case 85:
                                return (iArr2[18] >> 5) & 1;
                            case 86:
                                return (iArr2[18] >> 6) & 1;
                            case 87:
                                return (iArr2[18] >> 7) & 1;
                            case 88:
                                return iArr2[21] & 1;
                            case 89:
                                return (iArr2[21] >> 1) & 1;
                            case 90:
                                return (iArr2[21] >> 2) & 1;
                            case 91:
                                return (iArr2[21] >> 3) & 1;
                            case 92:
                                return (iArr2[21] >> 4) & 1;
                            case 93:
                                return (iArr2[21] >> 5) & 1;
                            case 94:
                                return (iArr2[21] >> 6) & 1;
                            case 95:
                                return (iArr2[21] >> 7) & 1;
                            case 96:
                                return iArr2[23] & 1;
                            case 97:
                                return (iArr2[23] >> 1) & 1;
                            case 98:
                                return (iArr2[23] >> 2) & 1;
                            case 99:
                                return (iArr2[23] >> 3) & 1;
                            case 100:
                                return (iArr2[23] >> 4) & 1;
                            case 101:
                                return (iArr2[23] >> 5) & 1;
                            default:
                                switch (i10) {
                                    case 103:
                                        return (iArr2[23] >> 7) & 1;
                                    case 104:
                                        return iArr2[24] & 1;
                                    case 105:
                                        return (iArr2[24] >> 1) & 1;
                                    case 106:
                                        return (iArr2[24] >> 2) & 1;
                                    case 107:
                                        return (iArr2[24] >> 3) & 1;
                                    case 108:
                                        return (iArr2[24] >> 4) & 1;
                                    case 109:
                                        return (iArr2[24] >> 5) & 1;
                                    case 110:
                                        return (iArr2[24] >> 6) & 3;
                                    case 111:
                                        return iArr2[25] & 1;
                                    case 112:
                                        return (iArr2[25] >> 1) & 1;
                                    case 113:
                                        return (iArr2[25] >> 2) & 1;
                                    case 114:
                                        return (iArr2[25] >> 3) & 1;
                                    case 115:
                                        return (iArr2[25] >> 4) & 1;
                                    case 116:
                                        return (iArr2[25] >> 5) & 1;
                                    case 117:
                                        return (iArr2[25] >> 6) & 1;
                                    case 118:
                                        return (iArr2[25] >> 7) & 1;
                                    case 119:
                                        return iArr2[26] & 1;
                                    case 120:
                                        return (iArr2[26] >> 1) & 1;
                                    case 121:
                                        return (iArr2[26] >> 2) & 1;
                                    case 122:
                                        return (iArr2[26] >> 3) & 1;
                                    case 123:
                                        return (iArr2[26] >> 4) & 1;
                                    case 124:
                                        return (iArr2[26] >> 5) & 1;
                                    case 125:
                                        return (iArr2[26] >> 6) & 1;
                                    case 126:
                                        return (iArr2[26] >> 7) & 1;
                                    case 127:
                                        return iArr2[30] & 1;
                                    case 128:
                                        return (iArr2[30] >> 1) & 1;
                                    case 129:
                                        return (iArr2[30] >> 2) & 1;
                                    case 130:
                                        return (iArr2[30] >> 3) & 3;
                                    case 131:
                                        return (iArr2[30] >> 5) & 3;
                                    case 132:
                                        return (iArr2[30] >> 7) & 1;
                                    case 133:
                                        return iArr2[31] & 1;
                                    case 134:
                                        return (iArr2[31] >> 1) & 3;
                                    case 135:
                                        return (iArr2[31] >> 3) & 1;
                                    case 136:
                                        return (iArr2[31] >> 4) & 1;
                                    case 137:
                                        return (iArr2[31] >> 5) & 1;
                                    case 138:
                                        return (iArr2[31] >> 6) & 3;
                                    case 139:
                                        return iArr2[32] & 3;
                                    default:
                                        switch (i10) {
                                            case 141:
                                                return (iArr2[32] >> 4) & 3;
                                            case 142:
                                                return (iArr2[32] >> 6) & 1;
                                            case 143:
                                                return (iArr2[32] >> 7) & 1;
                                            case 144:
                                                return iArr2[33] & 3;
                                            case 145:
                                                return (iArr2[33] >> 2) & 3;
                                            case 146:
                                                return (iArr2[33] >> 4) & 3;
                                            case 147:
                                                return (iArr2[33] >> 6) & 1;
                                            case 148:
                                                return (iArr2[33] >> 7) & 1;
                                            case 149:
                                                return iArr2[34] & 1;
                                            case 150:
                                                return (iArr2[3] >> 6) & 1;
                                            default:
                                                switch (i10) {
                                                    case 200:
                                                        return iArr[0] & 15;
                                                    case CarSettingID.Recv.IGM_INPUT_OVER_VOLT /* 201 */:
                                                        return iArr[1] & 1;
                                                    case CarSettingID.Recv.IGM_OVER_TEMP /* 202 */:
                                                        return (iArr[1] >> 1) & 1;
                                                    case CarSettingID.Recv.IGM_OUTPUT_OPEN_LODE /* 203 */:
                                                        return (iArr[1] >> 2) & 1;
                                                    case CarSettingID.Recv.IGM_OUTPUT_OVER_CUR /* 204 */:
                                                        return iArr[2] & 3;
                                                    case 205:
                                                        return (iArr[2] >> 2) & 1;
                                                    case CarSettingID.Recv.IGM_OUTPUT_SCB /* 206 */:
                                                        return (iArr[2] >> 3) & 1;
                                                    case CarSettingID.Recv.IFC_TLR_AVAIL /* 207 */:
                                                        return (iArr[2] >> 4) & 1;
                                                    case CarSettingID.Recv.IFC_TLR_ST /* 208 */:
                                                        return (iArr[2] >> 5) & 1;
                                                    case CarSettingID.Recv.IFC_TLR_ACOUSTIC_WARN /* 209 */:
                                                        return (iArr[2] >> 6) & 3;
                                                    case CarSettingID.Recv.IFC_SGW_AVAIL /* 210 */:
                                                        return iArr[4] & 1;
                                                    case 211:
                                                        return (iArr[4] >> 1) & 7;
                                                    case CarSettingID.Recv.IFC_SGW_ACOUSTIC_WARN /* 212 */:
                                                        return (iArr[4] >> 4) & 15;
                                                    case CarSettingID.Recv.IFC_TCP_AVAIL /* 213 */:
                                                        return iArr[5] & 7;
                                                    case CarSettingID.Recv.IFC_TCP_ST /* 214 */:
                                                        return (iArr[5] >> 3) & 7;
                                                    case CarSettingID.Recv.IFC_TSR_AVAIL /* 215 */:
                                                        return (iArr[5] >> 6) & 1;
                                                    case CarSettingID.Recv.IFC_HMA_AVAIL /* 216 */:
                                                        return (iArr[6] >> 2) & 3;
                                                    case 217:
                                                        return (iArr[6] >> 4) & 3;
                                                    case 218:
                                                        return (iArr[6] >> 6) & 3;
                                                    case 219:
                                                        return iArr[7] & 15;
                                                    case CarSettingID.Recv.IFC_TCPSESSIONID /* 220 */:
                                                        return (iArr[7] >> 4) & 3;
                                                    case CarSettingID.Recv.FLDCM_MIRROR_FOLD_UNFOLD_ST /* 221 */:
                                                        return (iArr[7] >> 6) & 3;
                                                    case CarSettingID.Recv.FRDCM_MIRROR_FOLD_UNFOLD_ST /* 222 */:
                                                        return iArr[3] & 1;
                                                    case CarSettingID.Recv.PAA_DVR_TRIGGER /* 223 */:
                                                        return iArr2[27] & 7;
                                                    case 224:
                                                        return (iArr2[27] >> 3) & 31;
                                                    case 225:
                                                        return iArr2[19] & 1;
                                                    case 226:
                                                        return (iArr[1] >> 3) & 1;
                                                    case CarSettingID.Recv.IPB_CST_STATUS /* 227 */:
                                                        return iArr2[28] & 15;
                                                    default:
                                                        if (i10 == 229) {
                                                            return (iArr2[19] >> 1) & 1;
                                                        }
                                                        if (i10 == 230) {
                                                            return (iArr2[28] >> 4) & 1;
                                                        }
                                                        switch (i10) {
                                                            case 10000:
                                                                return (iArr2[11] >> 1) & 1;
                                                            case 10001:
                                                                return (iArr2[11] >> 2) & 1;
                                                            case 10002:
                                                                return (iArr2[11] >> 3) & 1;
                                                            case 10003:
                                                                return (iArr2[13] >> 1) & 3;
                                                            case 10004:
                                                                return (iArr2[13] >> 3) & 1;
                                                            case 10005:
                                                                return (iArr2[19] >> 2) & 1;
                                                            case 10006:
                                                                return (iArr2[19] >> 3) & 1;
                                                            case 10007:
                                                                return (iArr2[28] >> 5) & 1;
                                                            case 10008:
                                                                return (iArr2[28] >> 6) & 1;
                                                            case 10009:
                                                                return (iArr2[32] >> 2) & 3;
                                                            case 10010:
                                                                return (iArr2[34] >> 1) & 3;
                                                            case 10011:
                                                                return (iArr2[34] >> 3) & 1;
                                                            case 10012:
                                                                return (iArr2[34] >> 4) & 1;
                                                            default:
                                                                if (i10 == 10089) {
                                                                    return (iArr2[29] >> 3) & 1;
                                                                }
                                                                if (i10 == 10090) {
                                                                    return (iArr2[29] >> 4) & 1;
                                                                }
                                                                switch (i10) {
                                                                    case 10123:
                                                                        return iArr2[22] & 1;
                                                                    case 10124:
                                                                        return (iArr2[22] >> 1) & 1;
                                                                    case 10125:
                                                                        return (iArr2[22] >> 2) & 1;
                                                                    default:
                                                                        if (i10 == 18) {
                                                                            return (iArr2[3] >> 4) & 1;
                                                                        }
                                                                        if (i10 == 10024) {
                                                                            return (iArr2[28] >> 7) & 1;
                                                                        }
                                                                        if (i10 == 10028) {
                                                                            return (iArr2[19] >> 4) & 1;
                                                                        }
                                                                        if (i10 == 10069) {
                                                                            return (iArr2[29] >> 1) & 1;
                                                                        }
                                                                        if (i10 == 10071) {
                                                                            return iArr2[29] & 1;
                                                                        }
                                                                        if (i10 != 10097) {
                                                                            return 0;
                                                                        }
                                                                        return (iArr2[19] >> 5) & 3;
                                                                }
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
    }

    public static ArrayList x(ba.r rVar) {
        if (rVar.f2746h.isEmpty()) {
            z7.s sVar = new z7.s();
            sVar.m("shareId", rVar.f2744f);
            z7.s sVarG = d.b.b0(G("https://api.guangyapan.com/userres/v1/get_share_access_token", sVar.toString())).g();
            if (sVarG.f19480a.containsKey("code")) {
                if (sVarG.o("code").e() != 209 || rVar.f2742d.isEmpty()) {
                    throw new Exception(sVarG.o("msg").i());
                }
                rVar.f2743e = true;
                sVar.m("code", rVar.f2742d);
                sVarG = d.b.b0(G("https://api.guangyapan.com/userres/v1/get_share_access_token", sVar.toString())).g();
                if (sVarG.f19480a.containsKey("code")) {
                    throw new Exception(sVarG.o("msg").i());
                }
            }
            rVar.f2746h = sVarG.q("data").o("accessToken").i();
        }
        z7.s sVar2 = new z7.s();
        sVar2.l("pageSize", 100);
        sVar2.m("accessToken", rVar.f2746h);
        sVar2.l("orderBy", 0);
        sVar2.l("sortType", 0);
        sVar2.m("parentId", rVar.f2750m);
        int i10 = rVar.f2751n;
        if (i10 > 1) {
            sVar2.l("cursor", Integer.valueOf((i10 - 1) * 100));
        }
        z7.s sVarG2 = d.b.b0(G("https://api.guangyapan.com/userres/v1/get_share_page_files_list", sVar2.toString())).g();
        if (!sVarG2.o("msg").i().equals("success")) {
            throw new Exception(sVarG2.o("msg").i());
        }
        if (!sVarG2.q("data").f19480a.containsKey("list")) {
            rVar.f2752o = false;
            return new ArrayList();
        }
        z7.o oVarP = sVarG2.q("data").p("list");
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < oVarP.f19478a.size(); i11++) {
            arrayList.add(new b6(new ba.g(oVarP.l(i11).g())));
        }
        if (arrayList.size() >= 100) {
            rVar.f2752o = true;
        } else {
            rVar.f2752o = false;
        }
        return arrayList;
    }

    public static ArrayList y(ba.r rVar) {
        if (rVar.f2750m.isEmpty()) {
            z7.s sVarG = d.b.b0(C(rVar)).g();
            if (sVarG.o("code").e() != 200) {
                throw new Exception(sVarG.o("msg").i());
            }
            z7.o oVarF = sVarG.o("list").f();
            if (oVarF.f19478a.isEmpty()) {
                throw new Exception("获取目录失败");
            }
            ArrayList arrayList = new ArrayList();
            z7.p pVarO = oVarF.l(0).g().o("folderIds");
            pVarO.getClass();
            if (pVarO instanceof z7.r) {
                z7.o oVarF2 = oVarF.l(0).g().o("fileList").f();
                for (int i10 = 0; i10 < oVarF2.f19478a.size(); i10++) {
                    arrayList.add(new b6(new ba.s(oVarF2.l(i10).g())));
                }
            } else {
                rVar.f2750m = android.support.v4.media.session.a.v(oVarF, 0, "folderIds");
            }
            if (!arrayList.isEmpty()) {
                return arrayList;
            }
        }
        String strQ = q(Long.toString(System.currentTimeMillis()));
        StringBuilder sb2 = new StringBuilder("https://api.feijipan.com/ws/share/list?devType=6&devModel=Chrome&uuid=");
        android.support.v4.media.session.a.C(sb2, rVar.f2745g, "&extra=2&timestamp=", strQ, "&shareId=");
        sb2.append(rVar.f2744f);
        sb2.append("&folderId=");
        sb2.append(rVar.f2750m);
        sb2.append("&offset=");
        String strE = E(android.support.v4.media.session.a.s(sb2, rVar.f2751n, "&limit=110&referer="), rVar.f2741c);
        if (!strE.contains("code")) {
            throw new Exception("请求失败");
        }
        z7.s sVarG2 = d.b.b0(strE).g();
        if (sVarG2.o("code").e() != 200) {
            throw new Exception(sVarG2.o("msg").i());
        }
        z7.o oVarF3 = sVarG2.o("list").f();
        ArrayList arrayList2 = new ArrayList();
        for (int i11 = 0; i11 < oVarF3.f19478a.size(); i11++) {
            arrayList2.add(new b6(new ba.s(oVarF3.l(i11).g())));
        }
        if (arrayList2.size() >= 110) {
            rVar.f2752o = true;
        } else {
            rVar.f2752o = false;
        }
        return arrayList2;
    }

    public static ResponseBody z(String str, String str2, String str3, long j10, long j11) throws Exception {
        String string = Long.toString(System.currentTimeMillis());
        String strQ = q(string);
        String strQ2 = q(j10 + "|" + j11);
        String strQ3 = q(j10 + "|" + string);
        StringBuilder sb2 = new StringBuilder("https://api.feijipan.com/ws/file/redirect?downloadId=");
        sb2.append(strQ2);
        sb2.append("&enable=1&devType=6&uuid=");
        sb2.append(str3);
        sb2.append("&timestamp=");
        android.support.v4.media.session.a.C(sb2, strQ, "&auth=", strQ3, "&shareId=");
        sb2.append(str2);
        String string2 = sb2.toString();
        System.out.getClass();
        l9.a aVar = new l9.a(string2);
        aVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
        aVar.f11017i.b("Referer", str);
        aVar.f11017i.b("upgrade-insecure-requests", "1");
        aVar.f11017i.b("sec-ch-ua-platform", "\"Windows\"");
        aVar.f11017i.b(OSSHeaders.ORIGIN, "https://share.feijipan.com");
        aVar.f11017i.b("sec-ch-ua", "\"Chromium\";v=\"122\", \"Not(A:Brand\";v=\"24\", \"Google Chrome\";v=\"122\"");
        aVar.f11017i.b("sec-ch-ua-mobile", "?0");
        aVar.f11017i.b("sec-fetch-site", "same-site");
        Response responseA = aVar.a();
        if (!responseA.isSuccessful()) {
            throw new Exception("请求失败");
        }
        ResponseBody responseBodyBody = responseA.body();
        if (responseBodyBody != null) {
            return responseBodyBody;
        }
        throw new Exception("请求失败");
    }

    public abstract void b0();

    public abstract void c0();

    public abstract void d0(androidx.media3.exoplayer.video.a aVar, i6 i6Var);

    public void e0(i6 i6Var) {
        d0(v9.k.f16715b, i6Var);
    }

    public boolean i() {
        return false;
    }

    public void S() {
    }
}
