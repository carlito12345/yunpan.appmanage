package d;

import a2.s0;
import android.app.usage.StorageStats;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.IPackageStatsObserver;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Trace;
import android.os.storage.StorageManager;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.PasswordTransformationMethod;
import android.view.ActionMode;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.b0;
import androidx.leanback.transition.FadeAndShortSlide;
import b1.q;
import b1.t;
import ba.k;
import ba.r;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.SignatureBean;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.j;
import fa.d0;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.StringReader;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.math.MathContext;
import java.math.RoundingMode;
import java.nio.file.attribute.FileTime;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import javax.crypto.Mac;
import jg.u;
import jg.z;
import n0.g;
import okhttp3.MediaType;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import org.slf4j.Marker;
import qf.c;
import qh.c0;
import qh.e0;
import qh.h0;
import qh.j0;
import qh.n0;
import qh.o0;
import qh.r0;
import qh.t0;
import s4.h;
import s4.l;
import s4.v;
import u9.d;
import ua.i8;
import v0.f;
import w.b1;
import x4.m;
import x4.n;
import x9.b6;
import x9.w3;
import x9.y;
import z7.o;
import z7.p;
import z7.s;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static long f4193a = 0;

    /* renamed from: b, reason: collision with root package name */
    public static Method f4194b = null;

    /* renamed from: c, reason: collision with root package name */
    public static volatile boolean f4195c = true;

    public static int A(int[] iArr, int[] iArr2, int i10) {
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
                                    case 140:
                                        return (iArr2[32] >> 2) & 3;
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
                                    default:
                                        switch (i10) {
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
                                                    case 228:
                                                        return (iArr2[9] >> 3) & 1;
                                                    case CarSettingID.Recv.MAX_OPENNING_TAILGATE /* 229 */:
                                                        return (iArr2[19] >> 1) & 1;
                                                    case CarSettingID.Recv.FRONT_HATCH_SWITCH /* 230 */:
                                                        return (iArr2[28] >> 4) & 1;
                                                    default:
                                                        switch (i10) {
                                                            case 10000:
                                                                return (iArr2[11] >> 1) & 1;
                                                            case 10001:
                                                                return (iArr2[11] >> 2) & 1;
                                                            case 10002:
                                                                return (iArr2[11] >> 3) & 1;
                                                            default:
                                                                if (i10 == 18) {
                                                                    return (iArr2[3] >> 4) & 1;
                                                                }
                                                                if (i10 == 10024) {
                                                                    return (iArr2[28] >> 5) & 1;
                                                                }
                                                                if (i10 == 10038) {
                                                                    return (iArr2[19] >> 2) & 1;
                                                                }
                                                                if (i10 != 10142) {
                                                                    return 0;
                                                                }
                                                                return iArr[9] & 1;
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
    }

    public static ArrayList B(r rVar) {
        String strL = g.b.l(rVar.f2740b, "/api/fs/list", new StringBuilder());
        System.out.getClass();
        l9.b bVar = new l9.b(strL);
        bVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
        bVar.f11017i.b("Referer", rVar.f2741c);
        StringBuilder sb2 = new StringBuilder("{\"path\":\"");
        sb2.append(rVar.f2750m);
        sb2.append("\",\"password\":\"");
        sb2.append(rVar.f2742d);
        sb2.append("\",\"page\":");
        String strS = android.support.v4.media.session.a.s(sb2, rVar.f2751n, ",\"per_page\":50,\"refresh\":false}");
        MediaType mediaType = MediaType.parse("application/json");
        bVar.f11003n = strS;
        bVar.f11002m = mediaType;
        Response responseA = bVar.a();
        if (!responseA.isSuccessful()) {
            throw new Exception("请求失败");
        }
        ResponseBody responseBodyBody = responseA.body();
        if (responseBodyBody == null) {
            throw new Exception("请求失败");
        }
        String strString = responseBodyBody.string();
        if (!strString.contains("code")) {
            throw new Exception("获取列表失败");
        }
        s sVarG = b0(strString).g();
        if (sVarG.o("code").e() != 200) {
            String strI = sVarG.o("message").i();
            if (strI.contains("password")) {
                strI = "密码错误或无权限";
            }
            throw new Exception(strI);
        }
        ArrayList arrayList = new ArrayList();
        p pVarO = sVarG.o("data").g().o("content");
        pVarO.getClass();
        if (pVarO instanceof z7.r) {
            return arrayList;
        }
        o oVarP = sVarG.o("data").g().p("content");
        for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
            s sVarG2 = oVarP.l(i10).g();
            k kVar = new k();
            kVar.f2714d = sVarG2.o("is_dir").b();
            kVar.f2711a = sVarG2.o("name").i();
            kVar.f2713c = sVarG2.o("size").h();
            String strI2 = sVarG2.o("modified").i();
            kVar.f2712b = strI2;
            if (strI2.contains(".")) {
                String str = kVar.f2712b;
                kVar.f2712b = str.substring(0, str.indexOf("."));
            }
            if (kVar.f2712b.contains(Marker.ANY_NON_NULL_MARKER)) {
                String str2 = kVar.f2712b;
                kVar.f2712b = str2.substring(0, str2.indexOf(Marker.ANY_NON_NULL_MARKER));
            }
            kVar.f2712b = kVar.f2712b.replace("T", " ");
            sVarG2.o("sign").i();
            sVarG2.o("type").e();
            arrayList.add(new b6(kVar));
        }
        if (arrayList.size() >= 50) {
            rVar.f2752o = true;
        } else {
            rVar.f2752o = false;
        }
        return arrayList;
    }

    public static ResponseBody C(r rVar, k kVar) throws Exception {
        String strI;
        String strL = g.b.l(rVar.f2740b, "/api/fs/get", new StringBuilder());
        System.out.getClass();
        String str = kVar.f2711a;
        l9.b bVar = new l9.b(strL);
        bVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
        bVar.f11017i.b("Referer", rVar.f2741c);
        StringBuilder sb2 = new StringBuilder("{\"path\":\"");
        sb2.append(rVar.f2750m);
        sb2.append("/");
        sb2.append(kVar.f2711a);
        sb2.append("\",\"password\":\"");
        String strL2 = g.b.l(rVar.f2742d, "\"}", sb2);
        MediaType mediaType = MediaType.parse("application/json;charset=UTF-8");
        bVar.f11003n = strL2;
        bVar.f11002m = mediaType;
        Response responseA = bVar.a();
        if (!responseA.isSuccessful()) {
            throw new Exception("请求失败");
        }
        ResponseBody responseBodyBody = responseA.body();
        if (responseBodyBody == null) {
            throw new Exception("请求失败");
        }
        String strString = responseBodyBody.string();
        if (!strString.contains("code")) {
            throw new Exception("获取文件信息失败");
        }
        s sVarG = b0(strString).g();
        if (sVarG.o("code").e() != 200) {
            throw new Exception(sVarG.o("message").i());
        }
        try {
            strI = sVarG.o("data").g().o("raw_url").i();
        } catch (Exception unused) {
            strI = "";
        }
        if (p000if.a.c0(strI) && !p000if.a.c0(kVar.f2711a)) {
            throw new Exception("文件不支持下载");
        }
        if (strI.isEmpty()) {
            throw new Exception("文件不支持下载");
        }
        l9.a aVar = new l9.a(strI);
        aVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
        aVar.f11017i.b("Referer", rVar.f2741c);
        Response responseA2 = aVar.a();
        if (!responseA2.isSuccessful()) {
            throw new Exception("请求失败");
        }
        ResponseBody responseBodyBody2 = responseA2.body();
        if (responseBodyBody2 != null) {
            return responseBodyBody2;
        }
        throw new Exception("请求失败");
    }

    public static Drawable D(Context context, Context context2, int i10, Resources.Theme theme) {
        try {
            if (f4195c) {
                return V(context2, i10, theme);
            }
        } catch (Resources.NotFoundException unused) {
        } catch (IllegalStateException e7) {
            if (context.getPackageName().equals(context2.getPackageName())) {
                throw e7;
            }
            return g.e(context2, i10);
        } catch (NoClassDefFoundError unused2) {
            f4195c = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        return o0.o.b(context2.getResources(), i10, theme);
    }

    public static void G(da.g gVar, y yVar) {
        try {
            PackageManager.class.getMethod("getPackageSizeInfo", String.class, IPackageStatsObserver.class).invoke(gVar.getPackageManager(), yVar.f18393a.pack, new com.yunpan.appmanage.util.b(yVar));
        } catch (Exception unused) {
        }
    }

    public static String H() {
        try {
            SignatureBean signatureBeanV = v(AppStart.f3772h.getPackageName());
            return (signatureBeanV == null || signatureBeanV.str_number.isEmpty()) ? "11111111" : signatureBeanV.str_number;
        } catch (Exception e7) {
            e7.printStackTrace();
            return "11111111";
        }
    }

    public static f I(b1 b1Var) {
        int iA;
        int iD;
        TextDirectionHeuristic textDirectionHeuristic;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            return new f(t.c(b1Var));
        }
        TextPaint textPaint = new TextPaint(b1Var.getPaint());
        if (i10 >= 23) {
            iA = 1;
            iD = 1;
        } else {
            iA = 0;
            iD = 0;
        }
        TextDirectionHeuristic textDirectionHeuristic2 = i10 >= 18 ? TextDirectionHeuristics.FIRSTSTRONG_LTR : null;
        if (i10 >= 23) {
            iA = b1.r.a(b1Var);
            iD = b1.r.d(b1Var);
        }
        if (i10 >= 18) {
            if (b1Var.getTransformationMethod() instanceof PasswordTransformationMethod) {
                textDirectionHeuristic = TextDirectionHeuristics.LTR;
            } else if (i10 < 28 || (b1Var.getInputType() & 15) != 3) {
                boolean z = q.b(b1Var) == 1;
                switch (q.c(b1Var)) {
                    case 2:
                        textDirectionHeuristic = TextDirectionHeuristics.ANYRTL_LTR;
                        break;
                    case 3:
                        textDirectionHeuristic = TextDirectionHeuristics.LTR;
                        break;
                    case 4:
                        textDirectionHeuristic = TextDirectionHeuristics.RTL;
                        break;
                    case 5:
                        textDirectionHeuristic = TextDirectionHeuristics.LOCALE;
                        break;
                    case 6:
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                        break;
                    case 7:
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                        break;
                    default:
                        if (!z) {
                            textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                            break;
                        } else {
                            textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                            break;
                        }
                }
            } else {
                byte directionality = Character.getDirectionality(t.b(b1.s.a(q.d(b1Var)))[0].codePointAt(0));
                textDirectionHeuristic = (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
            }
            textDirectionHeuristic2 = textDirectionHeuristic;
        }
        return new f(textPaint, textDirectionHeuristic2, iA, iD);
    }

    public static UUID J(ContextWrapper contextWrapper) {
        UUID uuid = null;
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        Iterator it = ((StorageManager) contextWrapper.getSystemService("storage")).getStorageVolumes().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            String uuid2 = s0.j(it.next()).getUuid();
            if (uuid2 != null) {
                try {
                    uuid = UUID.fromString(uuid2);
                    break;
                } catch (Exception unused) {
                    String strReplace = uuid2.replace("-", "");
                    uuid = strReplace.length() == 32 ? new UUID(new BigInteger(strReplace.substring(0, 16), 16).longValue(), new BigInteger(strReplace.substring(16), 16).longValue()) : StorageManager.UUID_DEFAULT;
                }
            }
        }
        return uuid == null ? StorageManager.UUID_DEFAULT : uuid;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void K() throws InterruptedException {
        boolean z;
        boolean zQ;
        boolean z4 = false;
        int i10 = Build.VERSION.SDK_INT;
        BluetoothAdapter adapter = i10 >= 18 ? b1.o.d(wa.t.f17728a.f17735d.getSystemService("bluetooth")).getAdapter() : BluetoothAdapter.getDefaultAdapter();
        boolean zIsEnabled = adapter.isEnabled();
        fa.b bVar = fa.a.f5646a;
        if (!zIsEnabled) {
            if (i10 >= 33) {
                boolean zQ2 = d.r("cmd bluetooth enable").l0().q();
                if (zQ2 || (zQ2 = d.r("svc bluetooth enable").l0().q()) || !bVar.f()) {
                    z4 = zQ2;
                } else if (bVar.f5651b.exec("cmd bluetooth enable", 2000L).code == 0) {
                    z4 = true;
                }
            }
            if (!z4) {
                adapter.enable();
            }
            a0.w("开 蓝牙");
            return;
        }
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null || !defaultAdapter.isEnabled()) {
            z = false;
        } else {
            int profileConnectionState = defaultAdapter.getProfileConnectionState(2);
            int profileConnectionState2 = defaultAdapter.getProfileConnectionState(1);
            if (profileConnectionState == 2 || profileConnectionState2 == 2) {
                z = true;
            }
        }
        if (z) {
            return;
        }
        a0.w("重启 蓝牙");
        if (i10 < 33) {
            zQ = false;
        } else {
            zQ = d.r("cmd bluetooth disable").l0().q();
            if (!zQ && !(zQ = d.r("svc bluetooth disable").l0().q()) && bVar.f()) {
                if (bVar.f5651b.exec("cmd bluetooth disable", 2000L).code == 0) {
                    zQ = true;
                }
            }
        }
        if (!zQ) {
            adapter.disable();
        }
        Thread.sleep(666L);
        if (i10 >= 33) {
            boolean zQ3 = d.r("cmd bluetooth enable").l0().q();
            if (zQ3 || (zQ3 = d.r("svc bluetooth enable").l0().q()) || !bVar.f()) {
                z4 = zQ3;
            } else if (bVar.f5651b.exec("cmd bluetooth enable", 2000L).code == 0) {
                z4 = true;
            }
        }
        if (z4) {
            return;
        }
        adapter.enable();
    }

    public static void L(AccService accService) throws InterruptedException {
        WifiInfo connectionInfo;
        String ssid;
        WifiManager wifiManager = (WifiManager) accService.getApplicationContext().getSystemService("wifi");
        if (!wifiManager.isWifiEnabled()) {
            wifiManager.setWifiEnabled(true);
            a0.w("开启 wifi");
            return;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) accService.getApplicationContext().getSystemService("connectivity");
        if (Build.VERSION.SDK_INT >= 23) {
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
            if (networkCapabilities != null && networkCapabilities.hasTransport(1)) {
                return;
            }
        } else {
            WifiManager wifiManager2 = (WifiManager) accService.getApplicationContext().getSystemService("wifi");
            if (wifiManager2 != null && (connectionInfo = wifiManager2.getConnectionInfo()) != null && (ssid = connectionInfo.getSSID()) != null && !ssid.equals("<unknown ssid>") && !ssid.equals("0x") && !ssid.equals("null")) {
                return;
            }
        }
        a0.w("重启 wifi");
        wifiManager.setWifiEnabled(false);
        Thread.sleep(666L);
        wifiManager.setWifiEnabled(true);
    }

    public static int N(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return -1;
        }
        if (lastPathSegment.endsWith(".ac3") || lastPathSegment.endsWith(".ec3")) {
            return 0;
        }
        if (lastPathSegment.endsWith(".ac4")) {
            return 1;
        }
        if (lastPathSegment.endsWith(".adts") || lastPathSegment.endsWith(".aac")) {
            return 2;
        }
        if (lastPathSegment.endsWith(".amr")) {
            return 3;
        }
        if (lastPathSegment.endsWith(".flac")) {
            return 4;
        }
        if (lastPathSegment.endsWith(".flv")) {
            return 5;
        }
        if (lastPathSegment.endsWith(".mid") || lastPathSegment.endsWith(".midi") || lastPathSegment.endsWith(".smf")) {
            return 15;
        }
        if (lastPathSegment.startsWith(".mk", lastPathSegment.length() - 4) || lastPathSegment.endsWith(".webm")) {
            return 6;
        }
        if (lastPathSegment.endsWith(".mp3")) {
            return 7;
        }
        if (lastPathSegment.endsWith(".mp4") || lastPathSegment.startsWith(".m4", lastPathSegment.length() - 4) || lastPathSegment.startsWith(".mp4", lastPathSegment.length() - 5) || lastPathSegment.startsWith(".cmf", lastPathSegment.length() - 5)) {
            return 8;
        }
        if (lastPathSegment.startsWith(".og", lastPathSegment.length() - 4) || lastPathSegment.endsWith(".opus")) {
            return 9;
        }
        if (lastPathSegment.endsWith(".ps") || lastPathSegment.endsWith(".mpeg") || lastPathSegment.endsWith(".mpg") || lastPathSegment.endsWith(".m2p")) {
            return 10;
        }
        if (lastPathSegment.endsWith(".ts") || lastPathSegment.startsWith(".ts", lastPathSegment.length() - 4)) {
            return 11;
        }
        if (lastPathSegment.endsWith(".wav") || lastPathSegment.endsWith(".wave")) {
            return 12;
        }
        if (lastPathSegment.endsWith(".vtt") || lastPathSegment.endsWith(".webvtt")) {
            return 13;
        }
        if (lastPathSegment.endsWith(".jpg") || lastPathSegment.endsWith(".jpeg")) {
            return 14;
        }
        if (lastPathSegment.endsWith(".avi")) {
            return 16;
        }
        if (lastPathSegment.endsWith(".png")) {
            return 17;
        }
        if (lastPathSegment.endsWith(".webp")) {
            return 18;
        }
        if (lastPathSegment.endsWith(".bmp") || lastPathSegment.endsWith(".dib")) {
            return 19;
        }
        if (lastPathSegment.endsWith(".heic") || lastPathSegment.endsWith(".heif")) {
            return 20;
        }
        return lastPathSegment.endsWith(".avif") ? 21 : -1;
    }

    public static boolean R() {
        try {
            if (f4194b == null) {
                return Trace.isEnabled();
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        if (Build.VERSION.SDK_INT < 18) {
            return false;
        }
        try {
            if (f4194b == null) {
                f4193a = b1.o.A().getField("TRACE_TAG_APP").getLong(null);
                f4194b = b1.o.A().getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) f4194b.invoke(null, Long.valueOf(f4193a))).booleanValue();
        } catch (Exception e7) {
            if (!(e7 instanceof InvocationTargetException)) {
                return false;
            }
            Throwable cause = e7.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(cause);
        }
    }

    public static boolean S(int i10) {
        int i11;
        if (i10 < -1) {
            return false;
        }
        return i10 == -1 || (i11 = i10 & 255) == 0 || i11 == 255 || (i10 & 65280) == 0;
    }

    public static String T(n nVar, int i10) {
        StringBuilder sb2 = new StringBuilder(20);
        sb2.append("#");
        long jF = nVar instanceof m ? ((m) nVar).f18127a : nVar.f();
        if (i10 == 4) {
            sb2.append(new String(new char[]{Character.forDigit(((int) jF) & 15, 16)}));
        } else if (i10 == 8) {
            sb2.append(c.d0((int) jF));
        } else if (i10 == 16) {
            sb2.append(c.e0((int) jF));
        } else if (i10 == 32) {
            sb2.append(c.f0((int) jF));
        } else {
            if (i10 != 64) {
                throw new RuntimeException("shouldn't happen");
            }
            sb2.append(c.g0(jF));
        }
        return sb2.toString();
    }

    public static String U(n nVar) {
        StringBuilder sb2 = new StringBuilder(100);
        sb2.append('#');
        if (nVar instanceof x4.k) {
            sb2.append("null");
        } else {
            sb2.append(nVar.d());
            sb2.append(' ');
            sb2.append(nVar.a());
        }
        return sb2.toString();
    }

    public static Drawable V(Context context, int i10, Resources.Theme theme) {
        if (theme != null && Build.VERSION.SDK_INT >= 21) {
            u.d dVar = new u.d(context, theme);
            dVar.a(theme.getResources().getConfiguration());
            context = dVar;
        }
        return com.bumptech.glide.d.x(context, i10);
    }

    public static int W(int i10, int i11) {
        if ((i10 & 15) != i10) {
            throw new IllegalArgumentException("low out of range 0..15");
        }
        if ((i11 & 15) == i11) {
            return i10 | (i11 << 4);
        }
        throw new IllegalArgumentException("high out of range 0..15");
    }

    public static Typeface X(Configuration configuration, Typeface typeface) {
        if (Build.VERSION.SDK_INT < 31 || configuration.fontWeightAdjustment == Integer.MAX_VALUE || configuration.fontWeightAdjustment == 0 || typeface == null) {
            return null;
        }
        return Typeface.create(typeface, a9.o.u(configuration.fontWeightAdjustment + typeface.getWeight(), 1, 1000), typeface.isItalic());
    }

    public static short Y(h hVar, int i10) {
        if ((i10 & 255) != i10) {
            throw new IllegalArgumentException("arg out of range 0..255");
        }
        int i11 = hVar.f14307b.f14311a;
        if ((i11 & 255) == i11) {
            return (short) (i11 | (i10 << 8));
        }
        throw new IllegalArgumentException("opcode out of range 0..255");
    }

    public static ph.h Z(String str) {
        qh.c cVar = new qh.c();
        StringReader stringReader = new StringReader(str);
        e0 e0Var = new e0(cVar);
        qh.c cVar2 = e0Var.f13279a;
        cVar2.getClass();
        ph.h hVar = new ph.h();
        cVar.f13236d = hVar;
        hVar.f12716k = e0Var;
        cVar.f13233a = e0Var;
        cVar.f13240h = e0Var.f13281c;
        qh.b bVar = new qh.b(stringReader);
        cVar.f13234b = bVar;
        e0Var.f13280b.getClass();
        bVar.f13205j = null;
        e0Var.f13280b.getClass();
        cVar.f13235c = new t0(cVar);
        cVar.f13237e = new ArrayList(32);
        if (e0Var.f13282d == null) {
            cVar2.getClass();
            e0Var.f13282d = new h0(h0.f13288c);
        }
        cVar.f13241i = e0Var.f13282d;
        o0 o0Var = new o0(cVar);
        cVar.f13242j = o0Var;
        cVar.f13239g = o0Var;
        cVar.f13238f = "";
        cVar.l = c0.f13254a;
        cVar.f13244m = null;
        cVar.f13245n = false;
        cVar.f13246o = null;
        cVar.f13247p = null;
        cVar.f13248q = new ArrayList();
        cVar.r = new ArrayList();
        cVar.f13249s = new ArrayList();
        cVar.f13250t = new n0(cVar);
        cVar.f13251u = true;
        cVar.f13252v = false;
        while (true) {
            if (cVar.f13239g.f13338a == 7) {
                ArrayList arrayList = cVar.f13237e;
                if (arrayList == null) {
                    break;
                }
                if (arrayList.isEmpty()) {
                    cVar.f13237e = null;
                } else {
                    cVar.E();
                }
            } else {
                t0 t0Var = cVar.f13235c;
                while (!t0Var.f13349e) {
                    t0Var.f13347c.d(t0Var, t0Var.f13345a);
                }
                j0 j0Var = t0Var.f13355k;
                boolean zC = j0Var.f13291d.C();
                r0 r0Var = j0Var;
                if (!zC) {
                    t0Var.f13349e = false;
                    r0Var = t0Var.f13348d;
                }
                cVar.f13239g = r0Var;
                cVar.H(r0Var);
                r0Var.g();
            }
        }
        qh.b bVar2 = cVar.f13234b;
        if (bVar2 != null) {
            bVar2.close();
            cVar.f13234b = null;
            cVar.f13235c = null;
            cVar.f13237e = null;
        }
        return cVar.f13236d;
    }

    public static List a(int... iArr) {
        return iArr.length == 0 ? Collections.emptyList() : new x7.b(0, iArr.length, iArr);
    }

    public static p a0(h8.a aVar) {
        int i10 = aVar.f6695p;
        if (i10 == 2) {
            aVar.f6695p = 1;
        }
        try {
            try {
                return b8.h.i(aVar);
            } finally {
                aVar.h0(i10);
            }
        } catch (OutOfMemoryError | StackOverflowError e7) {
            throw new b0(12, "Failed parsing JSON source: " + aVar + " to Json", e7);
        }
    }

    public static p b0(String str) {
        try {
            h8.a aVar = new h8.a(new StringReader(str));
            p pVarA0 = a0(aVar);
            pVarA0.getClass();
            if (!(pVarA0 instanceof z7.r) && aVar.e0() != 10) {
                throw new z7.q("Did not consume the entire document.");
            }
            return pVarA0;
        } catch (h8.c e7) {
            e = e7;
            throw new z7.q(e);
        } catch (IOException e10) {
            throw new z7.q(e10);
        } catch (NumberFormatException e11) {
            e = e11;
            throw new z7.q(e);
        }
    }

    public static String c(l lVar) {
        int iM = ((v) lVar).m();
        int i10 = 0;
        if (iM == ((short) iM)) {
            char[] cArr = new char[5];
            if (iM < 0) {
                cArr[0] = '-';
                iM = -iM;
            } else {
                cArr[0] = '+';
            }
            while (i10 < 4) {
                cArr[4 - i10] = Character.forDigit(iM & 15, 16);
                iM >>= 4;
                i10++;
            }
            return new String(cArr);
        }
        char[] cArr2 = new char[9];
        if (iM < 0) {
            cArr2[0] = '-';
            iM = -iM;
        } else {
            cArr2[0] = '+';
        }
        while (i10 < 8) {
            cArr2[8 - i10] = Character.forDigit(iM & 15, 16);
            iM >>= 4;
            i10++;
        }
        return new String(cArr2);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static SignatureBean c0(PackageInfo packageInfo) throws NoSuchAlgorithmException {
        Signature[] apkContentsSigners;
        if (Build.VERSION.SDK_INT >= 28) {
            apkContentsSigners = packageInfo.signingInfo != null ? packageInfo.signingInfo.getApkContentsSigners() : null;
        } else {
            apkContentsSigners = packageInfo.signatures;
            if (apkContentsSigners == null) {
            }
        }
        if (apkContentsSigners == null || apkContentsSigners.length == 0) {
            return null;
        }
        byte[] byteArray = apkContentsSigners[0].toByteArray();
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        messageDigest.update(byteArray);
        String strF = f(messageDigest.digest());
        MessageDigest messageDigest2 = MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1);
        messageDigest2.update(byteArray);
        String strF2 = f(messageDigest2.digest());
        String str = "";
        try {
            X509Certificate x509Certificate = (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(byteArray));
            if (x509Certificate != null) {
                String lowerCase = x509Certificate.getSerialNumber().toString(16).toLowerCase();
                if (lowerCase.length() >= 8) {
                    str = lowerCase;
                }
            }
        } catch (Exception e7) {
            e7.getMessage();
        }
        SignatureBean signatureBean = new SignatureBean();
        signatureBean.str_number = str;
        signatureBean.str_sha1 = strF2;
        signatureBean.str_md5 = strF;
        return signatureBean;
    }

    public static void d0(int i10, byte[] bArr) {
        bArr[0] = (byte) i10;
        bArr[1] = (byte) (i10 >> 8);
        bArr[2] = (byte) (i10 >> 16);
        bArr[3] = (byte) (i10 >> 24);
        for (int i11 = 4; i11 <= 15; i11++) {
            bArr[i11] = 0;
        }
    }

    public static String e(l lVar) {
        int iE = ((v) lVar).f14409e.e();
        return iE == ((char) iE) ? c.e0(iE) : c.f0(iE);
    }

    public static String f(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bArr) {
            String hexString = Integer.toHexString(b10 & 255);
            if (hexString.length() == 1) {
                sb2.append('0');
            }
            sb2.append(hexString);
        }
        return sb2.toString();
    }

    public static long g(long j10, long j11) {
        long j12 = j10 + j11;
        if (((j10 ^ j11) < 0) || ((j10 ^ j12) >= 0)) {
            return j12;
        }
        throw new ArithmeticException(android.support.v4.media.session.a.t(android.support.v4.media.session.a.w(j10, "overflow: checkedAdd(", ", "), j11, ")"));
    }

    public static String g0(w4.l lVar) {
        int length = lVar.f2559b.length;
        StringBuilder sb2 = new StringBuilder((length * 5) + 2);
        sb2.append('{');
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                sb2.append(", ");
            }
            sb2.append(((w4.k) lVar.d(i10)).f());
        }
        sb2.append('}');
        return sb2.toString();
    }

    public static int h(long j10) {
        int i10 = (int) j10;
        a9.o.j("Out of range: %s", ((long) i10) == j10, j10);
        return i10;
    }

    public static String h0(w4.l lVar) {
        int i10;
        int i11;
        int length = lVar.f2559b.length;
        StringBuilder sb2 = new StringBuilder(30);
        sb2.append("{");
        if (length != 0) {
            if (length != 1) {
                w4.k kVarD = (w4.k) lVar.d(length - 1);
                if (kVarD.c() == 2 && i10 != (i11 = (i10 = kVarD.f17466a) + 1)) {
                    kVarD = w4.k.d(i11, kVarD.f17467b);
                }
                sb2.append(((w4.k) lVar.d(0)).f());
                sb2.append("..");
                sb2.append(kVarD.f());
            } else {
                sb2.append(((w4.k) lVar.d(0)).f());
            }
        }
        sb2.append("}");
        return sb2.toString();
    }

    public static int i0(long j10) {
        if (j10 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j10 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j10;
    }

    public static short j(int i10, int i11) {
        if ((i10 & 255) != i10) {
            throw new IllegalArgumentException("low out of range 0..255");
        }
        if ((i11 & 255) == i11) {
            return (short) (i10 | (i11 << 8));
        }
        throw new IllegalArgumentException("high out of range 0..255");
    }

    public static long j0(long j10, long j11) {
        int iNumberOfLeadingZeros = Long.numberOfLeadingZeros((-1) ^ j11) + Long.numberOfLeadingZeros(j11) + Long.numberOfLeadingZeros(j10 ^ (-1)) + Long.numberOfLeadingZeros(j10);
        if (iNumberOfLeadingZeros > 65) {
            return j10 * j11;
        }
        long j12 = ((j10 ^ j11) >>> 63) + Long.MAX_VALUE;
        if ((iNumberOfLeadingZeros < 64) || ((j10 < 0) & (j11 == Long.MIN_VALUE))) {
            return j12;
        }
        long j13 = j10 * j11;
        return (j10 == 0 || j13 / j10 == j11) ? j13 : j12;
    }

    public static mc.g k0(int i10) {
        return new mc.c(0, new d0(i10, 1)).d(rc.f.f13757b).a(fc.b.a());
    }

    public static void l(ArrayList arrayList, File file, String str, mc.b bVar) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        long j10;
        boolean z = true;
        ArrayList arrayListQ = new i8(16).q(arrayList);
        Iterator it = arrayListQ.iterator();
        long j11 = 0;
        long j12 = 0;
        while (it.hasNext()) {
            w3 w3Var = (w3) it.next();
            if (!w3Var.f18366c) {
                long j13 = w3Var.f18367d;
                if (j13 >= 1) {
                    j12 += j13;
                }
            }
        }
        za.a aVar = new za.a();
        try {
            file.delete();
        } catch (Exception unused) {
        }
        z zVar = str.isEmpty() ? new z(file, null) : new z(file, str.toCharArray());
        try {
            List listAsList = Arrays.asList(new jg.v(u.LZMA2, null));
            LinkedList linkedList = new LinkedList();
            Iterator it2 = listAsList.iterator();
            while (it2.hasNext()) {
                linkedList.addFirst(it2.next());
            }
            zVar.f9993j = linkedList;
            byte[] bArr = new byte[PKIFailureInfo.signerNotTrusted];
            Iterator it3 = arrayListQ.iterator();
            int i10 = 0;
            while (it3.hasNext()) {
                w3 w3Var2 = (w3) it3.next();
                if (w3Var2.f18366c) {
                    jg.n nVar = new jg.n();
                    nVar.f9925a = w3Var2.f18377o;
                    nVar.f9927c = z;
                    Date date = new Date(w3Var2.f18370g);
                    MathContext mathContext = vg.b.f16995a;
                    FileTime fileTimeFromMillis = FileTime.fromMillis(date.getTime());
                    boolean z4 = fileTimeFromMillis != null;
                    nVar.f9930f = z4;
                    if (z4) {
                        nVar.f9933i = fileTimeFromMillis;
                    }
                    zVar.f9985b.add(nVar);
                } else {
                    zVar.f9985b.add(z.A(new File(w3Var2.f18365b), w3Var2.f18377o));
                    FileInputStream fileInputStream = new FileInputStream(w3Var2.f18365b);
                    try {
                        int i11 = fileInputStream.read(bArr);
                        while (i11 != -1) {
                            zVar.L(i11, bArr);
                            long j14 = j11 + i11;
                            i10++;
                            if (i10 > 5) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(j14);
                                sb2.append("/");
                                sb2.append(j12);
                                sb2.append("  ");
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                com.yunpan.appmanage.util.k kVar = j.f4033a;
                                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                double d10 = j14;
                                Double.isNaN(d10);
                                j10 = j14;
                                double d11 = j12;
                                Double.isNaN(d11);
                                sb2.append(decimalFormat2.format((d10 * 100.0d) / d11));
                                sb2.append("%");
                                aVar.f19515c = sb2.toString();
                                bVar.f(aVar);
                                i10 = 0;
                            } else {
                                j10 = j14;
                            }
                            i11 = fileInputStream.read(bArr);
                            j11 = j10;
                        }
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        try {
                            fileInputStream.close();
                            throw th2;
                        } catch (Throwable th3) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                                throw th2;
                            } catch (Exception unused2) {
                                throw th2;
                            }
                        }
                    }
                }
                zVar.r();
                z = true;
            }
            zVar.close();
        } catch (Throwable th4) {
            try {
                zVar.close();
            } catch (Throwable th5) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                } catch (Exception unused3) {
                }
            }
            throw th4;
        }
    }

    public static void l0(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (Build.VERSION.SDK_INT >= 18) {
            q.e(textView, drawable, drawable2, drawable3, drawable4);
            return;
        }
        boolean z = q.b(textView) == 1;
        Drawable drawable5 = z ? drawable3 : drawable;
        if (!z) {
            drawable = drawable3;
        }
        textView.setCompoundDrawables(drawable5, drawable2, drawable, drawable4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v3, types: [java.io.OutputStream, zf.j] */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v23 */
    /* JADX WARN: Type inference failed for: r13v24, types: [int] */
    /* JADX WARN: Type inference failed for: r13v30 */
    /* JADX WARN: Type inference failed for: r13v31 */
    /* JADX WARN: Type inference failed for: r13v32 */
    /* JADX WARN: Type inference failed for: r13v33 */
    /* JADX WARN: Type inference failed for: r13v34 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r24v0, types: [mc.b] */
    public static void m(ArrayList arrayList, File file, String str, mc.b bVar) {
        String str2;
        ?? r13;
        Class<Throwable> cls;
        Throwable th2;
        ?? jVar;
        String str3;
        Class<Throwable> cls2;
        Throwable th3;
        String str4;
        Throwable th4;
        BufferedInputStream bufferedInputStream;
        String str5;
        Class<Throwable> cls3;
        Throwable th5;
        String str6;
        String str7;
        Class<Throwable> cls4;
        Iterator it;
        long j10;
        String str8 = "addSuppressed";
        Class<Throwable> cls5 = Throwable.class;
        String str9 = str == null ? "" : str;
        ArrayList arrayListQ = new i8(16).q(arrayList);
        Iterator it2 = arrayListQ.iterator();
        long j11 = 0;
        long j12 = 0;
        while (it2.hasNext()) {
            w3 w3Var = (w3) it2.next();
            if (!w3Var.f18366c) {
                long j13 = w3Var.f18367d;
                if (j13 >= 1) {
                    j12 += j13;
                }
            }
        }
        za.a aVar = new za.a();
        try {
            file.delete();
        } catch (Exception unused) {
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            if (str9.isEmpty()) {
                try {
                    jVar = new zf.j(fileOutputStream, null);
                } catch (Throwable th6) {
                    th2 = th6;
                    str2 = "addSuppressed";
                    cls = cls5;
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th7) {
                        try {
                            cls.getDeclaredMethod(str2, cls).invoke(th2, th7);
                        } catch (Exception unused2) {
                        }
                    }
                    throw th2;
                }
            } else {
                jVar = new zf.j(fileOutputStream, str9.toCharArray());
            }
            r13 = 524288;
            try {
                try {
                    byte[] bArr = new byte[PKIFailureInfo.signerNotTrusted];
                    Iterator it3 = arrayListQ.iterator();
                    int i10 = 0;
                    while (it3.hasNext()) {
                        w3 w3Var2 = (w3) it3.next();
                        ag.m mVar = new ag.m();
                        mVar.f705a = 2;
                        mVar.f706b = 6;
                        mVar.f707c = !str9.isEmpty();
                        mVar.f711g = w3Var2.f18377o;
                        jVar.A(mVar);
                        if (w3Var2.f18366c) {
                            str6 = str9;
                            str3 = str8;
                            cls2 = cls5;
                            it = it3;
                        } else {
                            try {
                                FileInputStream fileInputStream = new FileInputStream(w3Var2.f18365b);
                                try {
                                    bufferedInputStream = new BufferedInputStream(fileInputStream, PKIFailureInfo.signerNotTrusted);
                                    try {
                                        str6 = str9;
                                        ?? r132 = bufferedInputStream.read(bArr);
                                        while (r132 != -1) {
                                            Iterator it4 = it3;
                                            jVar.write(bArr, 0, r132);
                                            String str10 = str8;
                                            cls3 = cls5;
                                            long j14 = j11 + ((long) r132);
                                            i10++;
                                            if (i10 > 10) {
                                                try {
                                                    StringBuilder sb2 = new StringBuilder();
                                                    sb2.append(j14);
                                                    sb2.append("/");
                                                    sb2.append(j12);
                                                    sb2.append("  ");
                                                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                                    com.yunpan.appmanage.util.k kVar = j.f4033a;
                                                    DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                                    r132 = str10;
                                                    double d10 = j14;
                                                    Double.isNaN(d10);
                                                    j10 = j14;
                                                    double d11 = j12;
                                                    Double.isNaN(d11);
                                                    try {
                                                        sb2.append(decimalFormat2.format((d10 * 100.0d) / d11));
                                                        sb2.append("%");
                                                        aVar.f19515c = sb2.toString();
                                                        bVar.f(aVar);
                                                        i10 = 0;
                                                    } catch (Throwable th8) {
                                                        th = th8;
                                                        str5 = r132;
                                                        th5 = th;
                                                        try {
                                                            bufferedInputStream.close();
                                                            str4 = str5;
                                                            cls2 = cls3;
                                                            throw th5;
                                                        } catch (Throwable th9) {
                                                            try {
                                                                str4 = str5;
                                                                cls2 = cls3;
                                                                try {
                                                                    try {
                                                                        cls2.getDeclaredMethod(str4, cls3).invoke(th5, th9);
                                                                        throw th5;
                                                                    } catch (Exception unused3) {
                                                                        throw th5;
                                                                    }
                                                                } catch (Throwable th10) {
                                                                    th = th10;
                                                                    th4 = th;
                                                                    try {
                                                                        fileInputStream.close();
                                                                        throw th4;
                                                                    } catch (Throwable th11) {
                                                                        try {
                                                                            try {
                                                                                cls2.getDeclaredMethod(str4, cls2).invoke(th4, th11);
                                                                                throw th4;
                                                                            } catch (Exception unused4) {
                                                                                throw th4;
                                                                            }
                                                                        } catch (Throwable th12) {
                                                                            th = th12;
                                                                            th3 = th;
                                                                            str3 = str4;
                                                                            try {
                                                                                jVar.close();
                                                                                throw th3;
                                                                            } catch (Throwable th13) {
                                                                                try {
                                                                                    cls2.getDeclaredMethod(str3, cls2).invoke(th3, th13);
                                                                                    throw th3;
                                                                                } catch (Exception unused5) {
                                                                                    throw th3;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            } catch (Exception unused6) {
                                                                str4 = str5;
                                                                cls2 = cls3;
                                                                throw th5;
                                                            } catch (Throwable th14) {
                                                                th = th14;
                                                                str4 = str5;
                                                                cls2 = cls3;
                                                                th4 = th;
                                                                fileInputStream.close();
                                                                throw th4;
                                                            }
                                                        }
                                                    }
                                                } catch (Throwable th15) {
                                                    th = th15;
                                                    str5 = str10;
                                                    th5 = th;
                                                    bufferedInputStream.close();
                                                    str4 = str5;
                                                    cls2 = cls3;
                                                    throw th5;
                                                }
                                            } else {
                                                r132 = str10;
                                                j10 = j14;
                                            }
                                            it3 = it4;
                                            cls5 = cls3;
                                            j11 = j10;
                                            String str11 = r132;
                                            r132 = bufferedInputStream.read(bArr);
                                            str8 = str11;
                                        }
                                        str7 = str8;
                                        cls4 = cls5;
                                        it = it3;
                                        jVar.flush();
                                    } catch (Throwable th16) {
                                        th = th16;
                                        str5 = str8;
                                        cls3 = cls5;
                                    }
                                } catch (Throwable th17) {
                                    th = th17;
                                    str4 = str8;
                                    cls2 = cls5;
                                }
                                try {
                                    bufferedInputStream.close();
                                    try {
                                        fileInputStream.close();
                                        str3 = str7;
                                        cls2 = cls4;
                                    } catch (Throwable th18) {
                                        th3 = th18;
                                        str3 = str7;
                                        cls2 = cls4;
                                        jVar.close();
                                        throw th3;
                                    }
                                } catch (Throwable th19) {
                                    th4 = th19;
                                    str4 = str7;
                                    cls2 = cls4;
                                    fileInputStream.close();
                                    throw th4;
                                }
                            } catch (Throwable th20) {
                                th = th20;
                                str4 = str8;
                                cls2 = cls5;
                            }
                        }
                        try {
                            jVar.r();
                            it3 = it;
                            str9 = str6;
                            str8 = str3;
                            cls5 = cls2;
                        } catch (Throwable th21) {
                            th = th21;
                            th3 = th;
                            jVar.close();
                            throw th3;
                        }
                    }
                    jVar.close();
                    fileOutputStream.close();
                } catch (Throwable th22) {
                    th = th22;
                    str3 = str8;
                    cls2 = cls5;
                }
            } catch (Throwable th23) {
                th = th23;
                th2 = th;
                cls = r13;
                fileOutputStream.close();
                throw th2;
            }
        } catch (Throwable th24) {
            th = th24;
            str2 = "addSuppressed";
            r13 = cls5;
        }
    }

    public static void m0(TextView textView, int i10) {
        s1.g.k(i10);
        if (Build.VERSION.SDK_INT >= 28) {
            t.d(textView, i10);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i11 = b1.p.a(textView) ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i10 > Math.abs(i11)) {
            textView.setPadding(textView.getPaddingLeft(), i10 + i11, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    public static Drawable n(Drawable drawable, ColorStateList colorStateList, PorterDuff.Mode mode) {
        boolean z = Build.VERSION.SDK_INT < 23;
        if (drawable == null) {
            return null;
        }
        if (colorStateList == null) {
            if (!z) {
                return drawable;
            }
            drawable.mutate();
            return drawable;
        }
        Drawable drawableMutate = com.bumptech.glide.c.n0(drawable).mutate();
        if (mode == null) {
            return drawableMutate;
        }
        com.bumptech.glide.c.g0(drawableMutate, mode);
        return drawableMutate;
    }

    public static void n0(TextView textView, int i10) {
        s1.g.k(i10);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i11 = b1.p.a(textView) ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i10 > Math.abs(i11)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i10 - i11);
        }
    }

    public static boolean o(String str, String str2) {
        ue.d.e(str, "current");
        if (str.equals(str2)) {
            return true;
        }
        if (str.length() != 0) {
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            while (true) {
                if (i10 < str.length()) {
                    char cCharAt = str.charAt(i10);
                    int i13 = i12 + 1;
                    if (i12 == 0 && cCharAt != '(') {
                        break;
                    }
                    if (cCharAt != '(') {
                        if (cCharAt == ')' && i11 - 1 == 0 && i12 != str.length() - 1) {
                            break;
                        }
                    } else {
                        i11++;
                    }
                    i10++;
                    i12 = i13;
                } else if (i11 == 0) {
                    String strSubstring = str.substring(1, str.length() - 1);
                    ue.d.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    int length = strSubstring.length() - 1;
                    int i14 = 0;
                    boolean z = false;
                    while (i14 <= length) {
                        char cCharAt2 = strSubstring.charAt(!z ? i14 : length);
                        boolean z4 = Character.isWhitespace(cCharAt2) || Character.isSpaceChar(cCharAt2);
                        if (z) {
                            if (!z4) {
                                break;
                            }
                            length--;
                        } else if (z4) {
                            i14++;
                        } else {
                            z = true;
                        }
                    }
                    return ue.d.a(strSubstring.subSequence(i14, length + 1).toString(), str2);
                }
            }
        }
        return false;
    }

    public static void o0(TextView textView, int i10) {
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(i10);
        } else {
            textView.setTextAppearance(textView.getContext(), i10);
        }
    }

    public static byte[] p(char[] cArr, int i10, byte[] bArr, boolean z) throws IllegalStateException, wf.a, InvalidKeyException {
        byte[] bArr2 = bArr;
        int i11 = 0;
        int iE = android.support.v4.media.session.a.e(i10);
        int iF = android.support.v4.media.session.a.f(i10);
        int i12 = iE + iF + 2;
        cArr.getClass();
        byte[] bArrB = eg.c.b(cArr, z);
        androidx.room.s sVar = new androidx.room.s(20, (char) 0);
        sVar.o(bArrB);
        int i13 = i12 == 0 ? sVar.f2426b : i12;
        int i14 = sVar.f2426b;
        int i15 = (i13 / i14) + (i13 % i14 > 0 ? 1 : 0);
        int i16 = i13 - ((i15 - 1) * i14);
        byte[] bArr3 = new byte[i15 * i14];
        int i17 = 1;
        int i18 = 0;
        while (i17 <= i15) {
            int i19 = sVar.f2426b;
            byte[] bArr4 = new byte[i19];
            byte[] bArrDoFinal = new byte[bArr2.length + 4];
            int i20 = i15;
            System.arraycopy(bArr2, i11, bArrDoFinal, i11, bArr2.length);
            int length = bArr2.length;
            bArrDoFinal[length] = (byte) (i17 / 16777216);
            bArrDoFinal[length + 1] = (byte) (i17 / 65536);
            bArrDoFinal[length + 2] = (byte) (i17 / 256);
            bArrDoFinal[length + 3] = (byte) i17;
            for (int i21 = 0; i21 < 1000; i21++) {
                if (((ByteArrayOutputStream) sVar.f2428d).size() > 0) {
                    sVar.e(0);
                }
                bArrDoFinal = ((Mac) sVar.f2427c).doFinal(bArrDoFinal);
                for (int i22 = 0; i22 < i19; i22++) {
                    bArr4[i22] = (byte) (bArr4[i22] ^ bArrDoFinal[i22]);
                }
            }
            i11 = 0;
            System.arraycopy(bArr4, 0, bArr3, i18, i19);
            i18 += i14;
            i17++;
            i15 = i20;
            bArr2 = bArr;
        }
        if (i16 < i14) {
            byte[] bArr5 = new byte[i13];
            System.arraycopy(bArr3, i11, bArr5, i11, i13);
            bArr3 = bArr5;
        }
        if (bArr3.length == i12) {
            return bArr3;
        }
        Integer numValueOf = Integer.valueOf(iE);
        Integer numValueOf2 = Integer.valueOf(iF);
        Object[] objArr = new Object[2];
        objArr[i11] = numValueOf;
        objArr[1] = numValueOf2;
        throw new wf.a(String.format("Derived Key invalid for Key Length [%d] MAC Length [%d]", objArr));
    }

    public static void p0(Drawable drawable, int i10) {
        boolean z = i10 != 0;
        if (Build.VERSION.SDK_INT == 21) {
            if (z) {
                drawable.setColorFilter(i10, PorterDuff.Mode.SRC_IN);
                return;
            } else {
                drawable.setColorFilter(null);
                return;
            }
        }
        if (z) {
            com.bumptech.glide.c.e0(drawable, i10);
        } else {
            com.bumptech.glide.c.f0(drawable, null);
        }
    }

    public static long q(long j10, long j11, RoundingMode roundingMode) {
        roundingMode.getClass();
        long j12 = j10 / j11;
        long j13 = j10 - (j11 * j12);
        if (j13 == 0) {
            return j12;
        }
        int i10 = ((int) ((j10 ^ j11) >> 63)) | 1;
        switch (w7.d.f17626a[roundingMode.ordinal()]) {
            case 1:
                p000if.a.l(j13 == 0);
                return j12;
            case 2:
                return j12;
            case 3:
                if (i10 >= 0) {
                    return j12;
                }
                break;
            case 4:
                break;
            case 5:
                if (i10 <= 0) {
                    return j12;
                }
                break;
            case 6:
            case 7:
            case 8:
                long jAbs = Math.abs(j13);
                long jAbs2 = jAbs - (Math.abs(j11) - jAbs);
                if (jAbs2 == 0) {
                    if (roundingMode != RoundingMode.HALF_UP && (roundingMode != RoundingMode.HALF_EVEN || (1 & j12) == 0)) {
                        return j12;
                    }
                } else if (jAbs2 <= 0) {
                    return j12;
                }
                break;
            default:
                throw new AssertionError();
        }
        return j12 + i10;
    }

    public static void r() {
        if (Build.VERSION.SDK_INT >= 18) {
            g4.a.b();
        }
    }

    public static int[] r0(Collection collection) {
        if (collection instanceof x7.b) {
            x7.b bVar = (x7.b) collection;
            return Arrays.copyOfRange(bVar.f18187a, bVar.f18188b, bVar.f18189c);
        }
        Object[] array = collection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            Object obj = array[i10];
            obj.getClass();
            iArr[i10] = ((Number) obj).intValue();
        }
        return iArr;
    }

    public static void s(AccService accService, int i10) throws IllegalAccessException, InterruptedException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        boolean z = false;
        if (i10 == 503) {
            L(accService);
            return;
        }
        if (i10 == 502) {
            ((WifiManager) accService.getApplicationContext().getSystemService("wifi")).setWifiEnabled(!r14.isWifiEnabled());
            a0.w("开/关 wifi");
            return;
        }
        if (i10 == 500) {
            WifiManager wifiManager = (WifiManager) accService.getApplicationContext().getSystemService("wifi");
            if (!wifiManager.isWifiEnabled()) {
                wifiManager.setWifiEnabled(true);
            }
            a0.w("开 wifi");
            return;
        }
        if (i10 == 501) {
            WifiManager wifiManager2 = (WifiManager) accService.getApplicationContext().getSystemService("wifi");
            if (wifiManager2.isWifiEnabled()) {
                wifiManager2.setWifiEnabled(false);
            }
            a0.w("关 wifi");
            return;
        }
        if (i10 == 522) {
            WifiManager wifiManager3 = (WifiManager) accService.getApplicationContext().getSystemService("wifi");
            try {
                if (nh.b.W(accService)) {
                    nh.b.m0(accService, false);
                } else {
                    if (wifiManager3.isWifiEnabled()) {
                        wifiManager3.setWifiEnabled(false);
                    }
                    nh.b.m0(accService, true);
                }
            } catch (Exception unused) {
                if (wifiManager3.isWifiEnabled()) {
                    wifiManager3.setWifiEnabled(false);
                }
                nh.b.m0(accService, true);
            }
            a0.w("开/关 热点");
            return;
        }
        if (i10 == 520) {
            if (!nh.b.W(accService)) {
                nh.b.m0(accService, true);
            }
            a0.w("开 热点");
            return;
        }
        if (i10 == 521) {
            if (nh.b.W(accService)) {
                nh.b.m0(accService, false);
            }
            a0.w("关 热点");
            return;
        }
        if (i10 == 514) {
            L(accService);
            K();
            return;
        }
        if (i10 == 513) {
            K();
            return;
        }
        fa.b bVar = fa.a.f5646a;
        if (i10 == 512) {
            int i11 = Build.VERSION.SDK_INT;
            BluetoothAdapter adapter = i11 >= 18 ? b1.o.d(wa.t.f17728a.f17735d.getSystemService("bluetooth")).getAdapter() : BluetoothAdapter.getDefaultAdapter();
            if (adapter.isEnabled()) {
                if (i11 >= 33) {
                    boolean zQ = d.r("cmd bluetooth disable").l0().q();
                    if (zQ || (zQ = d.r("svc bluetooth disable").l0().q()) || !bVar.f()) {
                        z = zQ;
                    } else if (bVar.f5651b.exec("cmd bluetooth disable", 2000L).code == 0) {
                        z = true;
                    }
                }
                if (!z) {
                    adapter.disable();
                }
                a0.w("关 蓝牙");
                return;
            }
            if (i11 >= 33) {
                boolean zQ2 = d.r("cmd bluetooth enable").l0().q();
                if (zQ2 || (zQ2 = d.r("svc bluetooth enable").l0().q()) || !bVar.f()) {
                    z = zQ2;
                } else if (bVar.f5651b.exec("cmd bluetooth enable", 2000L).code == 0) {
                    z = true;
                }
            }
            if (!z) {
                adapter.enable();
            }
            a0.w("开 蓝牙");
            return;
        }
        if (i10 == 510) {
            int i12 = Build.VERSION.SDK_INT;
            BluetoothAdapter adapter2 = i12 >= 18 ? b1.o.d(wa.t.f17728a.f17735d.getSystemService("bluetooth")).getAdapter() : BluetoothAdapter.getDefaultAdapter();
            if (!adapter2.isEnabled()) {
                if (i12 >= 33 && fa.d.f5659a.f5662a) {
                    boolean zQ3 = d.r("cmd bluetooth enable").l0().q();
                    if (zQ3 || (zQ3 = d.r("svc bluetooth enable").l0().q()) || !bVar.f()) {
                        z = zQ3;
                    } else if (bVar.f5651b.exec("cmd bluetooth enable", 2000L).code == 0) {
                        z = true;
                    }
                }
                if (!z) {
                    adapter2.enable();
                }
            }
            a0.w("开 蓝牙");
            return;
        }
        if (i10 == 511) {
            int i13 = Build.VERSION.SDK_INT;
            BluetoothAdapter adapter3 = i13 >= 18 ? b1.o.d(wa.t.f17728a.f17735d.getSystemService("bluetooth")).getAdapter() : BluetoothAdapter.getDefaultAdapter();
            if (adapter3.isEnabled()) {
                if (i13 >= 33) {
                    boolean zQ4 = d.r("cmd bluetooth disable").l0().q();
                    if (zQ4 || (zQ4 = d.r("svc bluetooth disable").l0().q()) || !bVar.f()) {
                        z = zQ4;
                    } else if (bVar.f5651b.exec("cmd bluetooth disable", 2000L).code == 0) {
                        z = true;
                    }
                }
                if (!z) {
                    adapter3.disable();
                }
            }
            a0.w("关 蓝牙");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x000c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Integer s0(String str) {
        byte b10;
        Long lValueOf;
        byte b11;
        str.getClass();
        if (str.isEmpty()) {
            lValueOf = null;
        } else {
            int i10 = str.charAt(0) == '-' ? 1 : 0;
            if (i10 != str.length()) {
                int i11 = i10 + 1;
                char cCharAt = str.charAt(i10);
                if (cCharAt < 128) {
                    b10 = x7.c.f18190a[cCharAt];
                } else {
                    byte[] bArr = x7.c.f18190a;
                    b10 = -1;
                }
                if (b10 >= 0 && b10 < 10) {
                    long j10 = -b10;
                    long j11 = 10;
                    long j12 = Long.MIN_VALUE / j11;
                    while (true) {
                        if (i11 < str.length()) {
                            int i12 = i11 + 1;
                            char cCharAt2 = str.charAt(i11);
                            if (cCharAt2 < 128) {
                                b11 = x7.c.f18190a[cCharAt2];
                            } else {
                                byte[] bArr2 = x7.c.f18190a;
                                b11 = -1;
                            }
                            if (b11 < 0 || b11 >= 10 || j10 < j12) {
                                break;
                            }
                            long j13 = j10 * j11;
                            long j14 = b11;
                            if (j13 < j14 - Long.MIN_VALUE) {
                                break;
                            }
                            j10 = j13 - j14;
                            i11 = i12;
                        } else if (i10 != 0) {
                            lValueOf = Long.valueOf(j10);
                        } else {
                            if (j10 == Long.MIN_VALUE) {
                                break;
                            }
                            lValueOf = Long.valueOf(-j10);
                        }
                    }
                    lValueOf = null;
                }
            }
        }
        if (lValueOf == null || lValueOf.longValue() != lValueOf.intValue()) {
            return null;
        }
        return Integer.valueOf(lValueOf.intValue());
    }

    public static int t(byte b10, byte b11, byte b12, byte b13) {
        return (b10 << 24) | ((b11 & 255) << 16) | ((b12 & 255) << 8) | (b13 & 255);
    }

    public static boolean t0(int i10) {
        return i10 == (i10 & 255);
    }

    public static long u(long j10, long j11) {
        p000if.a.k(j10, "a");
        p000if.a.k(j11, "b");
        if (j10 == 0) {
            return j11;
        }
        if (j11 == 0) {
            return j10;
        }
        int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(j10);
        long jNumberOfTrailingZeros = j10 >> iNumberOfTrailingZeros;
        int iNumberOfTrailingZeros2 = Long.numberOfTrailingZeros(j11);
        long j12 = j11 >> iNumberOfTrailingZeros2;
        while (jNumberOfTrailingZeros != j12) {
            long j13 = jNumberOfTrailingZeros - j12;
            long j14 = (j13 >> 63) & j13;
            long j15 = (j13 - j14) - j14;
            j12 += j14;
            jNumberOfTrailingZeros = j15 >> Long.numberOfTrailingZeros(j15);
        }
        return jNumberOfTrailingZeros << Math.min(iNumberOfTrailingZeros, iNumberOfTrailingZeros2);
    }

    public static boolean u0(int i10) {
        return i10 == (i10 & 15);
    }

    public static SignatureBean v(String str) {
        try {
            return c0(Build.VERSION.SDK_INT >= 28 ? AppStart.f3772h.f3775c.getPackageInfo(str, 134217728) : AppStart.f3772h.f3775c.getPackageInfo(str, 64));
        } catch (PackageManager.NameNotFoundException e7) {
            e7.getMessage();
            return null;
        } catch (Exception e10) {
            e10.getMessage();
            e10.printStackTrace();
            return null;
        }
    }

    public static boolean v0(int i10) {
        return i10 == (65535 & i10);
    }

    public static void w(da.g gVar, UUID uuid, y yVar) {
        try {
            StorageStats storageStatsQueryStatsForUid = com.hjq.permissions.permission.special.b.f(gVar.getSystemService("storagestats")).queryStatsForUid(uuid, yVar.f18393a.uid);
            int i10 = yVar.f18393a.uid;
            storageStatsQueryStatsForUid.getAppBytes();
            storageStatsQueryStatsForUid.getDataBytes();
            storageStatsQueryStatsForUid.getCacheBytes();
            long appBytes = storageStatsQueryStatsForUid.getAppBytes();
            long dataBytes = storageStatsQueryStatsForUid.getDataBytes();
            long cacheBytes = storageStatsQueryStatsForUid.getCacheBytes();
            yVar.f18395c = appBytes;
            yVar.f18396d = dataBytes;
            yVar.f18397e = cacheBytes;
            yVar.f18394b = appBytes + dataBytes + cacheBytes;
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public static ActionMode.Callback w0(ActionMode.Callback callback) {
        return (!(callback instanceof b1.u) || Build.VERSION.SDK_INT < 26) ? callback : ((b1.u) callback).f2520a;
    }

    public static ColorStateList x(Drawable drawable) {
        if (drawable instanceof ColorDrawable) {
            return ColorStateList.valueOf(((ColorDrawable) drawable).getColor());
        }
        if (Build.VERSION.SDK_INT < 29 || !a2.c.s(drawable)) {
            return null;
        }
        return a2.c.e(drawable).getColorStateList();
    }

    public static PorterDuffColorFilter x0(Drawable drawable, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(drawable.getState(), 0), mode);
    }

    public static Drawable[] y(TextView textView) {
        if (Build.VERSION.SDK_INT >= 18) {
            return q.a(textView);
        }
        boolean z = q.b(textView) == 1;
        Drawable[] compoundDrawables = textView.getCompoundDrawables();
        if (z) {
            Drawable drawable = compoundDrawables[2];
            Drawable drawable2 = compoundDrawables[0];
            compoundDrawables[0] = drawable;
            compoundDrawables[2] = drawable2;
        }
        return compoundDrawables;
    }

    public static ActionMode.Callback y0(ActionMode.Callback callback, TextView textView) {
        int i10 = Build.VERSION.SDK_INT;
        return (i10 < 26 || i10 > 27 || (callback instanceof b1.u) || callback == null) ? callback : new b1.u(callback, textView);
    }

    public static int z(int[] iArr, int[] iArr2, int i10) {
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
                                                    case 228:
                                                        return (iArr2[9] >> 3) & 1;
                                                    case CarSettingID.Recv.MAX_OPENNING_TAILGATE /* 229 */:
                                                        return (iArr2[19] >> 1) & 1;
                                                    default:
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
                                                            case 10013:
                                                                return (iArr2[19] >> 5) & 1;
                                                            default:
                                                                if (i10 == 10089) {
                                                                    return (iArr2[19] >> 7) & 1;
                                                                }
                                                                if (i10 == 10090) {
                                                                    return (iArr2[19] >> 6) & 1;
                                                                }
                                                                if (i10 == 18) {
                                                                    return (iArr2[3] >> 4) & 1;
                                                                }
                                                                if (i10 == 10024) {
                                                                    return (iArr2[28] >> 7) & 1;
                                                                }
                                                                if (i10 == 10028) {
                                                                    return (iArr2[19] >> 4) & 1;
                                                                }
                                                                if (i10 == 10032) {
                                                                    return (iArr2[11] >> 4) & 1;
                                                                }
                                                                if (i10 == 10066) {
                                                                    return (iArr2[29] >> 2) & 1;
                                                                }
                                                                if (i10 == 10069) {
                                                                    return (iArr2[29] >> 1) & 1;
                                                                }
                                                                if (i10 == 10112) {
                                                                    return (iArr[3] >> 1) & 1;
                                                                }
                                                                if (i10 != 10141) {
                                                                    return 0;
                                                                }
                                                                return (iArr2[11] >> 5) & 1;
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
    }

    public float E(FadeAndShortSlide fadeAndShortSlide, ViewGroup viewGroup, View view, int[] iArr) {
        return view.getTranslationX();
    }

    public float F(FadeAndShortSlide fadeAndShortSlide, ViewGroup viewGroup, View view, int[] iArr) {
        return view.getTranslationY();
    }

    public abstract boolean M();

    public abstract String O(l lVar);

    public abstract String P(l lVar);

    public abstract boolean Q(h hVar);

    public abstract int b();

    public boolean d(v vVar) {
        return this instanceof t4.b;
    }

    public abstract void e0(String str);

    public abstract int f0(byte[] bArr, int i10, int i11);

    public abstract int i();

    public BitSet k(h hVar) {
        return new BitSet();
    }

    public abstract int q0();

    public abstract void z0(b5.b bVar, l lVar);
}
