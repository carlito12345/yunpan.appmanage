package com.bumptech.glide;

import android.R;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Color;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.InsetDrawable;
import android.media.session.MediaController;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import androidx.core.content.FileProvider;
import ba.r;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.bean.FtpCopyProgressBean;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.bean.WpTaskBean;
import com.yunpan.appmanage.carsdk.u;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.f0;
import com.yunpan.appmanage.util.v;
import com.yunpan.appmanage.util.w;
import h4.b0;
import ha.jd;
import j$.util.Iterator$EL;
import j$.util.function.Consumer$CC;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.function.Consumer;
import java.util.regex.Pattern;
import javax.xml.parsers.ParserConfigurationException;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.simpleframework.xml.strategy.Name;
import org.simpleframework.xml.stream.InputNode;
import org.slf4j.Marker;
import org.w3c.dom.DOMException;
import org.w3c.dom.Element;
import ta.q;
import x9.b6;
import x9.n5;
import z7.s;

/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static b0 f3287a;

    /* renamed from: b, reason: collision with root package name */
    public static Field f3288b;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f3289c;

    /* renamed from: d, reason: collision with root package name */
    public static Method f3290d;

    /* renamed from: e, reason: collision with root package name */
    public static boolean f3291e;

    /* renamed from: f, reason: collision with root package name */
    public static Method f3292f;

    /* renamed from: g, reason: collision with root package name */
    public static boolean f3293g;

    /* renamed from: h, reason: collision with root package name */
    public static Method f3294h;

    /* renamed from: i, reason: collision with root package name */
    public static boolean f3295i;

    /* renamed from: j, reason: collision with root package name */
    public static Field f3296j;

    /* renamed from: k, reason: collision with root package name */
    public static boolean f3297k;

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
                            default:
                                switch (i10) {
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
                                                                switch (i10) {
                                                                    case 10005:
                                                                        return (iArr2[19] >> 2) & 1;
                                                                    case 10006:
                                                                        return (iArr2[19] >> 3) & 1;
                                                                    case 10007:
                                                                        return (iArr2[28] >> 5) & 1;
                                                                    case 10008:
                                                                        return (iArr2[28] >> 6) & 1;
                                                                    default:
                                                                        if (i10 == 10089) {
                                                                            return (iArr2[29] >> 3) & 1;
                                                                        }
                                                                        if (i10 == 10090) {
                                                                            return (iArr2[29] >> 4) & 1;
                                                                        }
                                                                        if (i10 == 10102) {
                                                                            return (iArr2[35] >> 3) & 1;
                                                                        }
                                                                        if (i10 == 10103) {
                                                                            return (iArr2[6] >> 2) & 3;
                                                                        }
                                                                        switch (i10) {
                                                                            case 10109:
                                                                                return (iArr2[22] >> 4) & 1;
                                                                            case 10110:
                                                                                return (iArr2[22] >> 5) & 1;
                                                                            case 10111:
                                                                                return (iArr2[22] >> 3) & 1;
                                                                            default:
                                                                                switch (i10) {
                                                                                    case 10122:
                                                                                        return (iArr2[29] >> 6) & 1;
                                                                                    case 10123:
                                                                                        return iArr2[22] & 1;
                                                                                    case 10124:
                                                                                        return (iArr2[22] >> 1) & 1;
                                                                                    case 10125:
                                                                                        return (iArr2[22] >> 2) & 1;
                                                                                    default:
                                                                                        switch (i10) {
                                                                                            case 10129:
                                                                                                return iArr2[35] & 1;
                                                                                            case 10130:
                                                                                                return (iArr2[35] >> 1) & 1;
                                                                                            case 10131:
                                                                                                return (iArr2[35] >> 2) & 1;
                                                                                            case 10132:
                                                                                                return (iArr2[22] >> 6) & 1;
                                                                                            case 10133:
                                                                                                return (iArr2[22] >> 7) & 1;
                                                                                            default:
                                                                                                if (i10 == 10136) {
                                                                                                    return (iArr2[20] >> 1) & 1;
                                                                                                }
                                                                                                if (i10 == 10137) {
                                                                                                    return (iArr2[37] >> 2) & 1;
                                                                                                }
                                                                                                switch (i10) {
                                                                                                    case 18:
                                                                                                        return (iArr2[3] >> 4) & 1;
                                                                                                    case CarSettingID.Recv.TAILGATE_STATUS /* 232 */:
                                                                                                        return (iArr2[29] >> 7) & 1;
                                                                                                    case 10024:
                                                                                                        return (iArr2[28] >> 7) & 1;
                                                                                                    case 10028:
                                                                                                        return (iArr2[19] >> 4) & 1;
                                                                                                    case 10066:
                                                                                                        return (iArr2[29] >> 2) & 1;
                                                                                                    case 10069:
                                                                                                        return (iArr2[29] >> 1) & 1;
                                                                                                    case 10071:
                                                                                                        return iArr2[29] & 1;
                                                                                                    case 10092:
                                                                                                        return iArr2[20] & 1;
                                                                                                    case 10095:
                                                                                                        break;
                                                                                                    case 10097:
                                                                                                        return (iArr2[19] >> 5) & 3;
                                                                                                    case 10113:
                                                                                                        return iArr2[37] & 3;
                                                                                                    default:
                                                                                                        return 0;
                                                                                                }
                                                                                            case 10134:
                                                                                                return 1;
                                                                                        }
                                                                                }
                                                                        }
                                                                }
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
    }

    public static float B(EdgeEffect edgeEffect) {
        if (Build.VERSION.SDK_INT >= 31) {
            return b1.e.b(edgeEffect);
        }
        return 0.0f;
    }

    public static Drawable C(Context context, TypedArray typedArray, int i10) {
        int resourceId;
        Drawable drawableX;
        return (!typedArray.hasValue(i10) || (resourceId = typedArray.getResourceId(i10, 0)) == 0 || (drawableX = d.x(context, resourceId)) == null) ? typedArray.getDrawable(i10) : drawableX;
    }

    public static String D(String str, String str2, String str3, String str4, boolean z) throws NumberFormatException {
        Response responseA;
        ResponseBody responseBodyBody;
        int i10 = 0;
        do {
            i10++;
            if (z) {
                l9.b bVar = new l9.b(str);
                bVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
                bVar.f11017i.b("Referer", str2.isEmpty() ? str : str2);
                bVar.f11017i.b("Cookie", str4.isEmpty() ? "codelen=1; pc_ad1=1" : str4);
                bVar.f11017i.b("Accept-Language", "zh-CN,zh;q=0.9,en;q=0.8");
                MediaType mediaType = MediaType.parse("application/x-www-form-urlencoded");
                bVar.f11003n = str3;
                bVar.f11002m = mediaType;
                responseA = bVar.a();
            } else {
                l9.a aVar = new l9.a(str);
                aVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
                aVar.f11017i.b("Cookie", str4.isEmpty() ? "codelen=1; pc_ad1=1" : str4);
                aVar.f11017i.b("Referer", str2.isEmpty() ? str : str2);
                responseA = aVar.a();
            }
            if (responseA.isSuccessful() && (responseBodyBody = responseA.body()) != null) {
                String strString = responseBodyBody.string();
                if (!strString.isEmpty()) {
                    if (!strString.startsWith("<html><script>") || !strString.contains("acw_sc__v2")) {
                        return strString;
                    }
                    str4 = N(strString);
                }
            }
        } while (i10 < 2);
        return "";
    }

    public static fh.c E(long j10, String str, n5 n5Var) throws Exception {
        dh.e eVarP = P(n5Var);
        if (eVarP == null) {
            throw new Exception("FTP连接失败");
        }
        long j11 = 0;
        sh.c cVar = sh.c.f14573c;
        long j12 = j11 / 1000;
        int i10 = (int) (j11 % 1000);
        if (i10 < 0) {
            i10 += 1000;
            j12--;
        }
        eVarP.f4654u = sh.c.a(i10 * 1000000, j12);
        if (j10 > 0 && j10 >= 0) {
            eVarP.A = j10;
        }
        return eVarP.x(str);
    }

    public static int F(Drawable drawable) throws NoSuchMethodException, SecurityException {
        if (Build.VERSION.SDK_INT >= 23) {
            return q0.c.a(drawable);
        }
        if (!f3295i) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("getLayoutDirection", null);
                f3294h = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            f3295i = true;
        }
        Method method = f3294h;
        if (method == null) {
            return 0;
        }
        try {
            return ((Integer) method.invoke(drawable, null)).intValue();
        } catch (Exception unused2) {
            f3294h = null;
            return 0;
        }
    }

    public static long G(double d10) {
        a9.o.i("not a normal value", J(d10));
        int exponent = Math.getExponent(d10);
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d10) & 4503599627370495L;
        return exponent == -1023 ? jDoubleToRawLongBits << 1 : jDoubleToRawLongBits | 4503599627370496L;
    }

    public static final void H(short[] sArr) {
        Arrays.fill(sArr, (short) 1024);
    }

    public static void I(Context context, String str) {
        Uri uriFromFile;
        File file = new File(str);
        if (a0.f(file)) {
            if (Build.VERSION.SDK_INT >= 26 && !context.getPackageManager().canRequestPackageInstalls()) {
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                if (com.yunpan.appmanage.util.j.f4033a.f4055k) {
                    v.f4106a.y(0);
                    ma.h.f11033a.c(str, new jd(16));
                    return;
                }
                Intent intent = new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + context.getPackageName()));
                intent.addFlags(268435456);
                if (intent.resolveActivity(context.getPackageManager()) != null) {
                    try {
                        context.startActivity(intent);
                    } catch (Exception unused) {
                        Toaster.show((CharSequence) "请允许管家安装应用的权限");
                    }
                }
            }
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.addFlags(268435456);
            if (Build.VERSION.SDK_INT >= 24) {
                uriFromFile = FileProvider.c(context, context.getPackageName() + ".fileprovider", file);
                intent2.addFlags(1);
                intent2.addFlags(2);
                intent2.addFlags(64);
                intent2.addFlags(128);
            } else {
                uriFromFile = Uri.fromFile(file);
            }
            intent2.setDataAndType(uriFromFile, "application/vnd.android.package-archive");
            w wVar = v.f4106a;
            int i10 = wVar.f4112c0;
            if (i10 == 2) {
                String str2 = wVar.f4114d0;
                if (str2.contains("/")) {
                    intent2.setComponent(new ComponentName(str2.substring(0, str2.indexOf("/")), str2.substring(str2.lastIndexOf("/") + 1)));
                }
            } else if (i10 != 3) {
                intent2.setComponent(new ComponentName("com.android.packageinstaller", "com.android.packageinstaller.InstallStart"));
            }
            try {
                context.startActivity(intent2);
            } catch (Exception unused2) {
                try {
                    intent2.setComponent(null);
                    context.startActivity(intent2);
                } catch (Exception e7) {
                    e7.printStackTrace();
                    a0.t("失败：可能没有安装器");
                }
            }
        }
    }

    public static boolean J(double d10) {
        return Math.getExponent(d10) <= 1023;
    }

    public static boolean K(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }

    public static boolean L(int i10) {
        return i10 >= 200 && i10 < 300;
    }

    public static boolean M(int i10) {
        return i10 >= 100 && i10 < 200;
    }

    public static String N(String str) throws NumberFormatException {
        try {
            String[] strArr = new String[40];
            String strN = p000if.a.N(str, "arg1='", "'", false);
            String[] strArrSplit = "15, 35, 29, 24, 33, 16, 1, 38, 10, 9, 19, 31, 40, 27, 22, 23, 25, 13, 6, 11, 39, 18, 20, 8, 14, 21, 32, 26, 2, 30, 7, 4, 17, 5, 3, 28, 34, 37, 12, 36".split(",");
            int i10 = 0;
            for (int i11 = 0; i11 < strN.length(); i11++) {
                for (int i12 = 0; i12 < strArrSplit.length; i12++) {
                    if (Integer.valueOf(strArrSplit[i12].trim()).intValue() == i11 + 1) {
                        i10 = i12;
                    }
                }
                if (i10 != -1 && i10 < 40) {
                    strArr[i10] = strN.substring(i11, i11 + 1);
                    i10 = -1;
                }
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append((CharSequence) strArr[0]);
            for (int i13 = 1; i13 < 40; i13++) {
                sb2.append((CharSequence) "");
                sb2.append((CharSequence) strArr[i13]);
            }
            String string = sb2.toString();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("codelen=1; pc_ad1=1; acw_sc__v2=");
            for (int i14 = 1; i14 < string.length() && i14 < 40; i14 += 2) {
                int i15 = i14 - 1;
                int i16 = i14 + 1;
                String lowerCase = string.substring(i15, i16).trim().toLowerCase();
                String lowerCase2 = "3000176000856006061501533003690027800375".substring(i15, i16).trim().toLowerCase();
                if (lowerCase.isEmpty() || lowerCase2.isEmpty()) {
                    break;
                }
                StringBuilder sb4 = new StringBuilder(Integer.toHexString(Integer.parseInt(lowerCase2, 16) ^ Integer.parseInt(lowerCase, 16)));
                while (sb4.length() < 2) {
                    sb4.insert(0, '0');
                }
                sb3.append(sb4.toString());
            }
            return sb3.toString();
        } catch (Exception e7) {
            e7.printStackTrace();
            return "";
        }
    }

    public static void O(AccService accService, String str) {
        String[] strArr;
        String str2;
        String string = Settings.Global.getString(accService.getContentResolver(), "policy_control");
        if (string == null || string.equals("null")) {
            string = "";
        }
        String str3 = "immersive.full=";
        try {
            if (string.isEmpty()) {
                Settings.Global.putString(accService.getContentResolver(), "policy_control", da.b.c("immersive.full=", str));
            } else if (string.contains(":")) {
                HashSet hashSet = new HashSet();
                HashSet hashSet2 = new HashSet();
                HashSet hashSet3 = new HashSet();
                String[] strArrSplit = string.split(":");
                int length = strArrSplit.length;
                int i10 = 0;
                while (i10 < length) {
                    int i11 = length;
                    String str4 = strArrSplit[i10];
                    if (str4.startsWith(str3)) {
                        strArr = strArrSplit;
                        String[] strArrSplit2 = str4.substring(15).split(",");
                        int length2 = strArrSplit2.length;
                        str2 = str3;
                        int i12 = 0;
                        while (i12 < length2) {
                            int i13 = length2;
                            String str5 = strArrSplit2[i12];
                            if (!str5.isEmpty()) {
                                hashSet.add(str5);
                            }
                            i12++;
                            length2 = i13;
                        }
                    } else {
                        strArr = strArrSplit;
                        str2 = str3;
                        if (str4.startsWith("immersive.status=")) {
                            String[] strArrSplit3 = str4.substring(17).split(",");
                            int length3 = strArrSplit3.length;
                            int i14 = 0;
                            while (i14 < length3) {
                                int i15 = length3;
                                String str6 = strArrSplit3[i14];
                                if (!str6.isEmpty()) {
                                    hashSet2.add(str6);
                                }
                                i14++;
                                length3 = i15;
                            }
                        } else if (str4.startsWith("immersive.navigation=")) {
                            String[] strArrSplit4 = str4.substring(21).split(",");
                            int length4 = strArrSplit4.length;
                            int i16 = 0;
                            while (i16 < length4) {
                                int i17 = length4;
                                String str7 = strArrSplit4[i16];
                                if (!str7.isEmpty()) {
                                    hashSet3.add(str7);
                                }
                                i16++;
                                length4 = i17;
                            }
                        }
                    }
                    i10++;
                    length = i11;
                    strArrSplit = strArr;
                    str3 = str2;
                }
                if (hashSet3.contains(Marker.ANY_MARKER) || hashSet2.contains("apps")) {
                    if (hashSet3.contains(str)) {
                        hashSet3.remove(str);
                    }
                    if (hashSet3.contains("-" + str)) {
                        hashSet3.remove("-" + str);
                    } else {
                        hashSet3.add("-" + str);
                    }
                    if (hashSet3.contains("-" + str)) {
                        if (hashSet2.contains(Marker.ANY_MARKER) || hashSet2.contains("apps")) {
                            hashSet2.add("-" + str);
                        } else if (hashSet2.contains(str)) {
                            hashSet2.remove(str);
                        }
                    } else if (hashSet2.contains(Marker.ANY_MARKER) || hashSet2.contains("apps")) {
                        if (hashSet2.contains("-" + str)) {
                            hashSet2.remove("-" + str);
                        }
                    } else if (!hashSet2.contains(str)) {
                        hashSet2.add(str);
                    }
                } else {
                    if (hashSet3.contains("-" + str)) {
                        hashSet3.remove("-" + str);
                    }
                    if (hashSet3.contains(str)) {
                        hashSet3.remove(str);
                        if (hashSet2.contains(Marker.ANY_MARKER) || hashSet2.contains("apps")) {
                            hashSet2.add("-" + str);
                        } else if (hashSet2.contains(str)) {
                            hashSet2.remove(str);
                        }
                    } else {
                        hashSet3.add(str);
                        if (hashSet2.contains(Marker.ANY_MARKER) || hashSet2.contains("apps")) {
                            if (hashSet2.contains("-" + str)) {
                                hashSet2.remove("-" + str);
                            }
                        } else if (hashSet2.contains(str)) {
                            hashSet2.remove(str);
                        }
                    }
                }
                final StringBuffer stringBuffer = new StringBuffer();
                if (!hashSet2.isEmpty()) {
                    stringBuffer.append("immersive.status=");
                    final int i18 = 0;
                    Iterator$EL.forEachRemaining(hashSet2.iterator(), new Consumer() { // from class: com.yunpan.appmanage.util.g0
                        @Override // java.util.function.Consumer
                        /* renamed from: accept */
                        public final void q(Object obj) {
                            String str8 = (String) obj;
                            switch (i18) {
                                case 0:
                                    stringBuffer.append(str8 + ",");
                                    break;
                                case 1:
                                    stringBuffer.append(str8 + ",");
                                    break;
                                case 2:
                                    stringBuffer.append(str8 + ",");
                                    break;
                                case 3:
                                    stringBuffer.append(str8 + ",");
                                    break;
                                case 4:
                                    stringBuffer.append(str8 + ",");
                                    break;
                                case 5:
                                    stringBuffer.append(str8 + ",");
                                    break;
                                default:
                                    stringBuffer.append(str8 + ",");
                                    break;
                            }
                        }

                        public final /* synthetic */ Consumer andThen(Consumer consumer) {
                            int i19 = i18;
                            return Consumer$CC.$default$andThen(this, consumer);
                        }
                    });
                }
                if (!hashSet3.isEmpty()) {
                    if (stringBuffer.length() > 0) {
                        stringBuffer.append(":immersive.navigation=");
                    } else {
                        stringBuffer.append("immersive.navigation=");
                    }
                    final int i19 = 1;
                    Iterator$EL.forEachRemaining(hashSet3.iterator(), new Consumer() { // from class: com.yunpan.appmanage.util.g0
                        @Override // java.util.function.Consumer
                        /* renamed from: accept */
                        public final void q(Object obj) {
                            String str8 = (String) obj;
                            switch (i19) {
                                case 0:
                                    stringBuffer.append(str8 + ",");
                                    break;
                                case 1:
                                    stringBuffer.append(str8 + ",");
                                    break;
                                case 2:
                                    stringBuffer.append(str8 + ",");
                                    break;
                                case 3:
                                    stringBuffer.append(str8 + ",");
                                    break;
                                case 4:
                                    stringBuffer.append(str8 + ",");
                                    break;
                                case 5:
                                    stringBuffer.append(str8 + ",");
                                    break;
                                default:
                                    stringBuffer.append(str8 + ",");
                                    break;
                            }
                        }

                        public final /* synthetic */ Consumer andThen(Consumer consumer) {
                            int i192 = i19;
                            return Consumer$CC.$default$andThen(this, consumer);
                        }
                    });
                }
                Settings.Global.putString(accService.getContentResolver(), "policy_control", stringBuffer.toString());
            } else if (string.startsWith("immersive.full=")) {
                HashSet hashSet4 = new HashSet();
                for (String str8 : string.substring(15).split(",")) {
                    if (!str8.isEmpty()) {
                        hashSet4.add(str8);
                    }
                }
                if (hashSet4.contains("apps") || hashSet4.contains(Marker.ANY_MARKER)) {
                    if (hashSet4.contains(str)) {
                        hashSet4.remove(str);
                    }
                    if (hashSet4.contains("-" + str)) {
                        hashSet4.remove("-" + str);
                    } else {
                        hashSet4.add("-" + str);
                    }
                } else {
                    if (hashSet4.contains("-" + str)) {
                        hashSet4.remove("-" + str);
                    }
                    if (hashSet4.contains(str)) {
                        hashSet4.remove(str);
                    } else {
                        hashSet4.add(str);
                    }
                }
                final StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("immersive.full=");
                Iterator it = hashSet4.iterator();
                final int i20 = 2;
                Iterator$EL.forEachRemaining(it, new Consumer() { // from class: com.yunpan.appmanage.util.g0
                    @Override // java.util.function.Consumer
                    /* renamed from: accept */
                    public final void q(Object obj) {
                        String str82 = (String) obj;
                        switch (i20) {
                            case 0:
                                stringBuffer2.append(str82 + ",");
                                break;
                            case 1:
                                stringBuffer2.append(str82 + ",");
                                break;
                            case 2:
                                stringBuffer2.append(str82 + ",");
                                break;
                            case 3:
                                stringBuffer2.append(str82 + ",");
                                break;
                            case 4:
                                stringBuffer2.append(str82 + ",");
                                break;
                            case 5:
                                stringBuffer2.append(str82 + ",");
                                break;
                            default:
                                stringBuffer2.append(str82 + ",");
                                break;
                        }
                    }

                    public final /* synthetic */ Consumer andThen(Consumer consumer) {
                        int i192 = i20;
                        return Consumer$CC.$default$andThen(this, consumer);
                    }
                });
                Settings.Global.putString(accService.getContentResolver(), "policy_control", stringBuffer2.toString());
            } else if (string.startsWith("immersive.status=")) {
                HashSet hashSet5 = new HashSet();
                for (String str9 : string.substring(17).split(",")) {
                    if (!str9.isEmpty()) {
                        hashSet5.add(str9);
                    }
                }
                if (hashSet5.contains("apps") || hashSet5.contains(Marker.ANY_MARKER)) {
                    if (hashSet5.contains(str)) {
                        hashSet5.remove(str);
                    }
                    if (hashSet5.contains("-" + str)) {
                        hashSet5.remove("-" + str);
                    } else {
                        hashSet5.add("-" + str);
                    }
                    final StringBuffer stringBuffer3 = new StringBuffer();
                    stringBuffer3.append("immersive.status=");
                    final int i21 = 3;
                    Iterator$EL.forEachRemaining(hashSet5.iterator(), new Consumer() { // from class: com.yunpan.appmanage.util.g0
                        @Override // java.util.function.Consumer
                        /* renamed from: accept */
                        public final void q(Object obj) {
                            String str82 = (String) obj;
                            switch (i21) {
                                case 0:
                                    stringBuffer3.append(str82 + ",");
                                    break;
                                case 1:
                                    stringBuffer3.append(str82 + ",");
                                    break;
                                case 2:
                                    stringBuffer3.append(str82 + ",");
                                    break;
                                case 3:
                                    stringBuffer3.append(str82 + ",");
                                    break;
                                case 4:
                                    stringBuffer3.append(str82 + ",");
                                    break;
                                case 5:
                                    stringBuffer3.append(str82 + ",");
                                    break;
                                default:
                                    stringBuffer3.append(str82 + ",");
                                    break;
                            }
                        }

                        public final /* synthetic */ Consumer andThen(Consumer consumer) {
                            int i192 = i21;
                            return Consumer$CC.$default$andThen(this, consumer);
                        }
                    });
                    if (!hashSet5.contains("-" + str)) {
                        stringBuffer3.append(":immersive.navigation=" + str);
                    }
                    Settings.Global.putString(accService.getContentResolver(), "policy_control", stringBuffer3.toString());
                } else {
                    if (hashSet5.contains("-" + str)) {
                        hashSet5.remove("-" + str);
                    }
                    if (hashSet5.contains(str)) {
                        hashSet5.remove(str);
                    } else {
                        hashSet5.add(str);
                    }
                    final StringBuffer stringBuffer4 = new StringBuffer();
                    stringBuffer4.append("immersive.status=");
                    final int i22 = 4;
                    Iterator$EL.forEachRemaining(hashSet5.iterator(), new Consumer() { // from class: com.yunpan.appmanage.util.g0
                        @Override // java.util.function.Consumer
                        /* renamed from: accept */
                        public final void q(Object obj) {
                            String str82 = (String) obj;
                            switch (i22) {
                                case 0:
                                    stringBuffer4.append(str82 + ",");
                                    break;
                                case 1:
                                    stringBuffer4.append(str82 + ",");
                                    break;
                                case 2:
                                    stringBuffer4.append(str82 + ",");
                                    break;
                                case 3:
                                    stringBuffer4.append(str82 + ",");
                                    break;
                                case 4:
                                    stringBuffer4.append(str82 + ",");
                                    break;
                                case 5:
                                    stringBuffer4.append(str82 + ",");
                                    break;
                                default:
                                    stringBuffer4.append(str82 + ",");
                                    break;
                            }
                        }

                        public final /* synthetic */ Consumer andThen(Consumer consumer) {
                            int i192 = i22;
                            return Consumer$CC.$default$andThen(this, consumer);
                        }
                    });
                    if (hashSet5.contains(str)) {
                        stringBuffer4.append(":immersive.navigation=" + str);
                    }
                    Settings.Global.putString(accService.getContentResolver(), "policy_control", stringBuffer4.toString());
                }
            } else {
                if (!string.startsWith("immersive.navigation=")) {
                    try {
                        Settings.Global.putString(accService.getContentResolver(), "policy_control", da.b.c("immersive.full=", str));
                        return;
                    } catch (Exception unused) {
                        return;
                    }
                }
                HashSet hashSet6 = new HashSet();
                for (String str10 : string.substring(21).split(",")) {
                    if (!str10.isEmpty()) {
                        hashSet6.add(str10);
                    }
                }
                if (hashSet6.contains("apps") || hashSet6.contains(Marker.ANY_MARKER)) {
                    if (hashSet6.contains(str)) {
                        hashSet6.remove(str);
                    }
                    if (hashSet6.contains("-" + str)) {
                        hashSet6.remove("-" + str);
                    } else {
                        hashSet6.add("-" + str);
                    }
                    final StringBuffer stringBuffer5 = new StringBuffer();
                    stringBuffer5.append("immersive.navigation=");
                    final int i23 = 5;
                    Iterator$EL.forEachRemaining(hashSet6.iterator(), new Consumer() { // from class: com.yunpan.appmanage.util.g0
                        @Override // java.util.function.Consumer
                        /* renamed from: accept */
                        public final void q(Object obj) {
                            String str82 = (String) obj;
                            switch (i23) {
                                case 0:
                                    stringBuffer5.append(str82 + ",");
                                    break;
                                case 1:
                                    stringBuffer5.append(str82 + ",");
                                    break;
                                case 2:
                                    stringBuffer5.append(str82 + ",");
                                    break;
                                case 3:
                                    stringBuffer5.append(str82 + ",");
                                    break;
                                case 4:
                                    stringBuffer5.append(str82 + ",");
                                    break;
                                case 5:
                                    stringBuffer5.append(str82 + ",");
                                    break;
                                default:
                                    stringBuffer5.append(str82 + ",");
                                    break;
                            }
                        }

                        public final /* synthetic */ Consumer andThen(Consumer consumer) {
                            int i192 = i23;
                            return Consumer$CC.$default$andThen(this, consumer);
                        }
                    });
                    if (!hashSet6.contains("-" + str)) {
                        stringBuffer5.append(":immersive.status=" + str);
                    }
                    Settings.Global.putString(accService.getContentResolver(), "policy_control", stringBuffer5.toString());
                } else {
                    if (hashSet6.contains("-" + str)) {
                        hashSet6.remove("-" + str);
                    }
                    if (hashSet6.contains(str)) {
                        hashSet6.remove(str);
                    } else {
                        hashSet6.add(str);
                    }
                    final StringBuffer stringBuffer6 = new StringBuffer();
                    stringBuffer6.append("immersive.navigation=");
                    final int i24 = 6;
                    Iterator$EL.forEachRemaining(hashSet6.iterator(), new Consumer() { // from class: com.yunpan.appmanage.util.g0
                        @Override // java.util.function.Consumer
                        /* renamed from: accept */
                        public final void q(Object obj) {
                            String str82 = (String) obj;
                            switch (i24) {
                                case 0:
                                    stringBuffer6.append(str82 + ",");
                                    break;
                                case 1:
                                    stringBuffer6.append(str82 + ",");
                                    break;
                                case 2:
                                    stringBuffer6.append(str82 + ",");
                                    break;
                                case 3:
                                    stringBuffer6.append(str82 + ",");
                                    break;
                                case 4:
                                    stringBuffer6.append(str82 + ",");
                                    break;
                                case 5:
                                    stringBuffer6.append(str82 + ",");
                                    break;
                                default:
                                    stringBuffer6.append(str82 + ",");
                                    break;
                            }
                        }

                        public final /* synthetic */ Consumer andThen(Consumer consumer) {
                            int i192 = i24;
                            return Consumer$CC.$default$andThen(this, consumer);
                        }
                    });
                    if (hashSet6.contains(str)) {
                        stringBuffer6.append(":immersive.status=" + str);
                    }
                    Settings.Global.putString(accService.getContentResolver(), "policy_control", stringBuffer6.toString());
                }
            }
        } catch (Exception unused2) {
        }
    }

    public static dh.e P(n5 n5Var) throws Exception {
        dh.e eVar = new dh.e();
        eVar.f3251a = 20000;
        eVar.f3256f = 16000;
        try {
            if (n5Var.f18312y.isEmpty()) {
                n5Var.f18312y = HTTP.UTF_8;
            }
            if (n5Var.f18312y.startsWith("自动")) {
                eVar.G = true;
            } else {
                eVar.f4648n = n5Var.f18312y;
            }
            eVar.c(n5Var.f18292c, n5Var.f18293d);
        } catch (Exception unused) {
        }
        if (!(zg.b.a(n5Var.f18294e) ? eVar.t("Anonymous", "") : eVar.t(n5Var.f18294e, n5Var.f18295f))) {
            throw new Exception("账号或密码错误");
        }
        eVar.y();
        if (L(eVar.f4645j)) {
            if (n5Var.z) {
                eVar.f4653t = 2;
                eVar.f4656w = null;
                eVar.f4655v = -1;
            } else {
                eVar.f4653t = 0;
                eVar.f4656w = null;
                eVar.f4655v = -1;
            }
            return eVar;
        }
        return null;
    }

    public static float Q(EdgeEffect edgeEffect, float f10, float f11) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 31) {
            return b1.e.c(edgeEffect, f10, f11);
        }
        if (i10 >= 21) {
            b1.d.a(edgeEffect, f10, f11);
        } else {
            edgeEffect.onPull(f10);
        }
        return f10;
    }

    public static ArrayList R(r rVar) throws Exception {
        ResponseBody responseBodyBody;
        int i10 = 0;
        String strString = "";
        do {
            if (i10 != 0) {
                if (i10 > 3) {
                    break;
                }
                f0.f4019a.f11674b = HttpUrl.get(f0.a(i10));
            } else {
                f0.f4019a.f11674b = null;
            }
            i10++;
            l9.a aVar = new l9.a(rVar.f2741c);
            aVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
            aVar.f11017i.b("Referer", rVar.f2741c);
            if (!rVar.f2747i.isEmpty()) {
                aVar.g("Cookie", rVar.f2747i);
            }
            Response responseA = aVar.a();
            if (responseA.isSuccessful() && (responseBodyBody = responseA.body()) != null) {
                strString = responseBodyBody.string();
                System.out.getClass();
                if (strString.contains("acw_sc__v2") && strString.contains("<html><script>")) {
                    rVar.f2747i = N(strString);
                    strString = "";
                }
            }
        } while (strString.isEmpty());
        if (strString.isEmpty()) {
            throw new Exception("打开失败");
        }
        if (!strString.contains(">文件大小：</span>") && !strString.contains("acw_sc__v2") && !strString.contains("<iframe") && !strString.contains("/filemoreajax.php") && !strString.contains("/ajaxm.php?") && !strString.contains("woozooo.com")) {
            throw new Exception((strString.contains("\"message\":\"分享页面不存在\"") || strString.contains("系统升级维护中")) ? "分享页面不存在" : "分享地址不存在 或 不支持的网盘");
        }
        rVar.f2739a = 2;
        return T(rVar, strString);
    }

    public static void S(r rVar, String str) {
        String strSubstring;
        String strReplace = Pattern.compile("/\\*\\*(.*?)\\*/", 32).matcher(Pattern.compile("/\\*(.*?)\\*/", 32).matcher(Pattern.compile("(?<!:)//.*").matcher(p000if.a.N(Pattern.compile("<!--(.*?)-->", 32).matcher(str).replaceAll(""), "<script type=\"text/javascript\">", "</script>", false)).replaceAll("")).replaceAll("")).replaceAll("").replace(" ", "");
        int iIndexOf = strReplace.indexOf("type=\"text/javascript\">");
        if (iIndexOf != -1) {
            strReplace = strReplace.substring(iIndexOf);
        }
        if (strReplace.contains("functionfile(){")) {
            strSubstring = strReplace.substring(strReplace.indexOf("functionfile(){"));
        } else if (strReplace.contains("functiondown_p(){")) {
            strSubstring = strReplace.substring(strReplace.indexOf("functiondown_p(){"));
        } else {
            strReplace.contains("/ajaxm.php");
            strSubstring = strReplace;
        }
        String strN = p000if.a.N(strSubstring, "vardomain1='", "'", false);
        p000if.a.N(strSubstring, "vardomain2='", "'", false);
        String strN2 = p000if.a.N(strSubstring, "$.ajax(", "},", false);
        String strN3 = p000if.a.N(strN2, "url:'", "'", false);
        rVar.f2749k = strN3;
        if (strN3.isEmpty()) {
            rVar.f2749k = p000if.a.N(strN2, "url:", ",", false);
        }
        System.out.getClass();
        if (!rVar.f2749k.contains("/") && !strN.isEmpty()) {
            rVar.f2749k = strN;
        }
        if (!rVar.f2749k.startsWith("http")) {
            rVar.f2749k = rVar.f2740b + rVar.f2749k;
        }
        String[] strArrSplit = strN2.substring(strN2.indexOf("data:{") + 6).split(",");
        String strK = "";
        for (int i10 = 0; i10 < strArrSplit.length; i10++) {
            String strN4 = p000if.a.N(strArrSplit[i10], "'", "'", false);
            String str2 = strArrSplit[i10];
            String strTrim = str2.substring(str2.indexOf(":") + 1).trim();
            if (strTrim.contains("'")) {
                strTrim = strTrim.replace("'", "");
            } else if (strN4.equals("pwd") || strN4.equals("p")) {
                strTrim = rVar.f2742d;
            } else if (strN4.equals("pg")) {
                strTrim = "1";
            } else if (!strTrim.matches("[0-9]+")) {
                String strA = g.b.A("var", strTrim, "=");
                int iIndexOf2 = strReplace.indexOf(strA);
                String str3 = "";
                while (iIndexOf2 != -1) {
                    int length = strA.length() + iIndexOf2;
                    String strSubstring2 = strReplace.substring(length, strReplace.indexOf(";", length));
                    int iIndexOf3 = strReplace.indexOf(strA, strSubstring2.length() + length + 1);
                    str3 = strSubstring2;
                    iIndexOf2 = iIndexOf3;
                }
                strTrim = str3.replace("'", "");
            }
            strK = strK.isEmpty() ? g.b.k(strN4, "=", strTrim) : strK + "&" + strN4 + "=" + strTrim;
        }
        rVar.l = strK;
    }

    public static ArrayList T(r rVar, String str) throws Exception {
        String strI;
        String strD = str;
        ArrayList arrayList = new ArrayList();
        if (strD.contains("/filemoreajax.php")) {
            if (strD.contains("document.getElementById('pwd').value") && rVar.f2742d.isEmpty()) {
                throw new Exception("需要提取码");
            }
            ArrayList<String> arrayListO = p000if.a.O(strD, "<div class=\"mbx mbxfolder\"><a href=\"", "<div class=\"folderdown\">");
            if (arrayListO.isEmpty()) {
                arrayListO = p000if.a.O(strD, "<div class=\"pc-folderlink\"><a href=\"", "</div");
            }
            for (String str2 : arrayListO) {
                ba.i iVar = new ba.i(0);
                int iIndexOf = str2.indexOf("\"");
                if (iIndexOf != -1) {
                    iVar.f2703f = rVar.f2740b + str2.substring(0, iIndexOf);
                    int iIndexOf2 = str2.indexOf("<div class=\"filename\">");
                    if (iIndexOf2 == -1) {
                        iVar.f2698a = p000if.a.N(str2, ">", "<", false);
                    } else {
                        int i10 = iIndexOf2 + 22;
                        int iIndexOf3 = str2.indexOf("<", i10);
                        if (iIndexOf3 != -1) {
                            iVar.f2698a = str2.substring(i10, iIndexOf3);
                        }
                    }
                    arrayList.add(new b6(iVar));
                }
            }
            S(rVar, str);
            if (rVar.l.isEmpty()) {
                throw new Exception("解析数据出错");
            }
            String strD2 = D(rVar.f2749k, rVar.f2741c, rVar.l, rVar.f2747i, true);
            String strI2 = "获取列表出错";
            if (!strD2.contains("\"zt\"")) {
                throw new Exception("获取列表出错");
            }
            s sVarG = d.b.b0(strD2).g();
            int iE = sVarG.o("zt").e();
            if (iE != 1) {
                if (iE == 2) {
                    rVar.f2752o = false;
                    return arrayList;
                }
                if (iE == 3) {
                    strI2 = "提取码错误";
                } else if (iE == 4) {
                    strI2 = "刷新太快，稍后再试";
                } else {
                    try {
                        strI2 = sVarG.o("info").i();
                    } catch (Exception unused) {
                    }
                }
                throw new Exception(strI2);
            }
            z7.o oVarF = sVarG.o("text").f();
            int size = oVarF.f19478a.size();
            for (int i11 = 0; i11 < size; i11++) {
                ba.i iVar2 = new ba.i(0);
                iVar2.f2698a = android.support.v4.media.session.a.v(oVarF, i11, "name_all");
                iVar2.f2700c = android.support.v4.media.session.a.v(oVarF, i11, "time");
                iVar2.f2699b = android.support.v4.media.session.a.v(oVarF, i11, "size");
                iVar2.f2701d = rVar.f2740b + "/" + oVarF.l(i11).g().o(Name.MARK).i();
                arrayList.add(new b6(iVar2));
            }
            rVar.f2752o = false;
            if (size >= 50) {
                rVar.f2752o = true;
            }
            return arrayList;
        }
        String string = "";
        if (!strD.contains("<iframe") && !strD.contains("/ajaxm.php") && !strD.contains("/ajaxfile.php")) {
            if (!strD.contains(" id=\"downurl\">")) {
                if (strD.contains("<div>系统升级维护中</div>")) {
                    throw new Exception("链接不存在");
                }
                if (strD.contains("文件取消分享")) {
                    throw new Exception("来晚啦！文件取消分享了！");
                }
                throw new Exception("获取文件出错");
            }
            ba.i iVar3 = new ba.i(0);
            iVar3.f2702e = rVar.f2741c;
            iVar3.f2699b = p000if.a.N(strD, "id=\"downurl\">下载(", ")", false).trim();
            iVar3.f2698a = p000if.a.N(strD, "<div class=\"md\">", "</", false).trim();
            String strN = p000if.a.N(strD, "<div class=\"mh\"><a href=\"", "\" id=\"downurl\">", false);
            System.out.getClass();
            String strD3 = D(g.b.l(rVar.f2740b, strN, new StringBuilder()), rVar.f2741c, "", rVar.f2747i, false);
            if (!strD3.contains("submit.href")) {
                throw new Exception("获取文件出错");
            }
            String strReplace = strD3.replace(" ", "");
            for (String str3 : p000if.a.N(strReplace, "submit.href=", SignParameters.NEW_LINE, false).split("\\+")) {
                StringBuilder sbM = g.b.m(string);
                sbM.append(p000if.a.N(strReplace, g.b.A("var", str3, "='"), "'", false));
                string = sbM.toString();
            }
            System.out.getClass();
            iVar3.f2701d = string;
            arrayList.add(new b6(iVar3));
            return arrayList;
        }
        ba.i iVar4 = new ba.i(0);
        iVar4.f2702e = rVar.f2741c;
        String strN2 = p000if.a.N(strD, "n_filesize\">大小：", "</div>", false);
        iVar4.f2699b = strN2;
        if (strN2.isEmpty()) {
            iVar4.f2699b = p000if.a.N(strD, ">文件大小：</div><div class=\"fileinforight\">", "</div>", false);
        }
        if (((String) iVar4.f2699b).isEmpty()) {
            iVar4.f2699b = p000if.a.N(strD, ">文件大小：</span>", "<", false);
        }
        if (!strD.contains("document.getElementById('pwd').value")) {
            if (!strD.contains("<iframe")) {
                throw new Exception("获取文件出错");
            }
            String strReplace2 = Pattern.compile("/\\*\\*(.*?)\\*/", 32).matcher(Pattern.compile("/\\*(.*?)\\*/", 32).matcher(Pattern.compile("(?<!:)//.*").matcher(Pattern.compile("<!--(.*?)-->", 32).matcher(strD).replaceAll("")).replaceAll("")).replaceAll("")).replaceAll("").replace(" ", "");
            String strN3 = p000if.a.N(p000if.a.N(strReplace2, "<iframe", "</iframe>", false), "src=\"", "\"", false);
            if (strN3.isEmpty()) {
                throw new Exception("获取文件出错");
            }
            iVar4.f2701d = g.b.l(rVar.f2740b, strN3, new StringBuilder());
            if (strReplace2.contains(">文件大小：</span>")) {
                iVar4.f2698a = p000if.a.N(strReplace2, "<title>", "</title>", false);
            } else if (strReplace2.contains("id=\"filenajax\">")) {
                iVar4.f2698a = p000if.a.N(strReplace2, "id=\"filenajax\">", "</div>", false);
            } else if (strReplace2.contains("<span>")) {
                iVar4.f2698a = p000if.a.N(strReplace2, "<span>", "</span>", false);
            }
            System.out.getClass();
            try {
                strD = D((String) iVar4.f2701d, rVar.f2741c, "", rVar.f2747i, false);
            } catch (Exception unused2) {
                throw new Exception("解析下载出错");
            }
        } else if (rVar.f2742d.isEmpty()) {
            throw new Exception("需要提取码");
        }
        S(rVar, strD);
        String strD4 = D(rVar.f2749k, rVar.f2741c, rVar.l, rVar.f2747i, true);
        if (!strD4.contains("\"zt\"")) {
            throw new Exception("获取文件出错");
        }
        s sVarG2 = d.b.b0(strD4).g();
        if (sVarG2.o("zt").e() != 1) {
            try {
                strI = sVarG2.o("inf").i();
            } catch (Exception unused3) {
                strI = "获取文件出错";
            }
            throw new Exception(strI);
        }
        if (((String) iVar4.f2698a).isEmpty()) {
            try {
                iVar4.f2698a = sVarG2.o("inf").i();
            } catch (Exception unused4) {
            }
        }
        iVar4.f2701d = sVarG2.o("dom").i() + "/file/" + sVarG2.o("url").i();
        arrayList.add(new b6(iVar4));
        return arrayList;
    }

    public static Element W(InputNode inputNode) throws DOMException {
        String reference = inputNode.getReference();
        String name = inputNode.getName();
        String prefix = inputNode.getPrefix();
        if (name == null) {
            throw new IllegalArgumentException("Local part not allowed to be null");
        }
        if (reference == null) {
            reference = "";
        }
        if (prefix == null) {
            prefix = "";
        }
        try {
            Element elementCreateElementNS = t9.b.f14852b.newDocumentBuilder().newDocument().createElementNS(reference, prefix + ":" + name);
            elementCreateElementNS.setTextContent(inputNode.getValue());
            return elementCreateElementNS;
        } catch (ParserConfigurationException e7) {
            throw new RuntimeException(e7.getMessage(), e7);
        }
    }

    public static ArrayList X(n5 n5Var, WpPathBean wpPathBean) throws Exception {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (wpPathBean.path.isEmpty()) {
            wpPathBean.path = "/";
        }
        System.out.getClass();
        if (!n5Var.f18311x.p(wpPathBean.path)) {
            throw new Exception("无权访问");
        }
        dh.g[] gVarArrS = n5Var.f18311x.s(null);
        if (gVarArrS == null) {
            return null;
        }
        if (gVarArrS.length == 1 && wpPathBean.path.equals("/") && gVarArrS[0].f4664a != 0) {
            String str = "/" + gVarArrS[0].f4667d;
            wpPathBean.path = str;
            n5Var.f18311x.p(str);
            gVarArrS = n5Var.f18311x.s(null);
            if (gVarArrS == null) {
                return null;
            }
        }
        for (dh.g gVar : gVarArrS) {
            WpPathBean wpPathBean2 = new WpPathBean();
            String str2 = gVar.f4667d;
            wpPathBean2.name = str2;
            if (!str2.equals(".") && !wpPathBean2.name.equals("..")) {
                wpPathBean2.path = wpPathBean.path + wpPathBean2.name;
                Calendar calendar = gVar.f4668e;
                wpPathBean2.time_txt = calendar.get(1) + "/" + (calendar.get(2) + 1) + "/" + calendar.get(5) + " " + calendar.get(11) + ":" + calendar.get(12);
                boolean z = gVar.f4664a == 0;
                wpPathBean2.is_dir = !z;
                if (z) {
                    long j10 = gVar.f4665b;
                    wpPathBean2.size_long = j10;
                    wpPathBean2.size_txt = p000if.a.D0(j10);
                    arrayList2.add(wpPathBean2);
                } else {
                    wpPathBean2.path = g.b.l(wpPathBean2.path, "/", new StringBuilder());
                    arrayList.add(wpPathBean2);
                }
            }
        }
        Collections.sort(arrayList, new a2.m(23));
        Collections.sort(arrayList2, new a2.m(24));
        if (!arrayList2.isEmpty()) {
            arrayList.addAll(arrayList2);
        }
        return arrayList;
    }

    public static int Y(j3.f fVar, int i10, int i11, int i12) {
        a9.o.k(Math.max(Math.max(i10, i11), i12) <= 31);
        int i13 = (1 << i10) - 1;
        int i14 = (1 << i11) - 1;
        d.g(d.g(i13, i14), 1 << i12);
        if (fVar.b() < i10) {
            return -1;
        }
        int iG = fVar.g(i10);
        if (iG != i13) {
            return iG;
        }
        if (fVar.b() < i11) {
            return -1;
        }
        int iG2 = fVar.g(i11);
        int i15 = iG + iG2;
        if (iG2 != i14) {
            return i15;
        }
        if (fVar.b() < i12) {
            return -1;
        }
        return i15 + fVar.g(i12);
    }

    public static final void Z(int i10, int i11, Object[] objArr) {
        ue.d.e(objArr, "<this>");
        while (i10 < i11) {
            objArr[i10] = null;
            i10++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    public static boolean a(WpPathBean wpPathBean, String str, n5 n5Var) throws Exception {
        fh.c cVarX;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        FileOutputStream fileOutputStream3;
        BufferedOutputStream bufferedOutputStream;
        dh.e eVarP = P(n5Var);
        if (eVarP == null) {
            return false;
        }
        BufferedInputStream bufferedInputStream = null;
        try {
            cVarX = eVarP.x(wpPathBean.path);
        } catch (Exception unused) {
            cVarX = null;
            fileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            cVarX = null;
            fileOutputStream = null;
        }
        try {
            fileOutputStream = new FileOutputStream(str);
            try {
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(cVarX);
                try {
                    bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                    try {
                        byte[] bArr = new byte[1048576];
                        while (true) {
                            int i10 = bufferedInputStream2.read(bArr);
                            if (i10 == -1) {
                                break;
                            }
                            bufferedOutputStream.write(bArr, 0, i10);
                            bufferedOutputStream.flush();
                        }
                        q4.a.e(bufferedInputStream2);
                        q4.a.e(bufferedOutputStream);
                        q4.a.e(fileOutputStream);
                        q4.a.e(cVarX);
                        try {
                            eVarP.h();
                        } catch (Exception unused2) {
                        }
                        l(eVarP);
                        return true;
                    } catch (Exception unused3) {
                        bufferedInputStream = bufferedInputStream2;
                        fileOutputStream3 = bufferedOutputStream;
                        q4.a.e(bufferedInputStream);
                        q4.a.e(fileOutputStream3);
                        q4.a.e(fileOutputStream);
                        q4.a.e(cVarX);
                        try {
                            eVarP.h();
                        } catch (Exception unused4) {
                        }
                        l(eVarP);
                        return false;
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedInputStream = bufferedInputStream2;
                        fileOutputStream2 = bufferedOutputStream;
                        q4.a.e(bufferedInputStream);
                        q4.a.e(fileOutputStream2);
                        q4.a.e(fileOutputStream);
                        q4.a.e(cVarX);
                        try {
                            eVarP.h();
                        } catch (Exception unused5) {
                        }
                        l(eVarP);
                        throw th;
                    }
                } catch (Exception unused6) {
                    bufferedOutputStream = 0;
                } catch (Throwable th4) {
                    th = th4;
                    bufferedOutputStream = 0;
                }
            } catch (Exception unused7) {
                fileOutputStream3 = null;
            } catch (Throwable th5) {
                th = th5;
                fileOutputStream2 = null;
            }
        } catch (Exception unused8) {
            fileOutputStream = null;
            fileOutputStream3 = fileOutputStream;
            q4.a.e(bufferedInputStream);
            q4.a.e(fileOutputStream3);
            q4.a.e(fileOutputStream);
            q4.a.e(cVarX);
            eVarP.h();
            l(eVarP);
            return false;
        } catch (Throwable th6) {
            th = th6;
            fileOutputStream = null;
            fileOutputStream2 = fileOutputStream;
            q4.a.e(bufferedInputStream);
            q4.a.e(fileOutputStream2);
            q4.a.e(fileOutputStream);
            q4.a.e(cVarX);
            eVarP.h();
            l(eVarP);
            throw th;
        }
    }

    public static void a0(Drawable drawable, boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            q0.a.e(drawable, z);
        }
    }

    public static final boolean b(Object[] objArr, int i10, int i11, List list) {
        if (i11 != list.size()) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            if (!ue.d.a(objArr[i10 + i12], list.get(i12))) {
                return false;
            }
        }
        return true;
    }

    public static void b0(Drawable drawable, float f10, float f11) {
        if (Build.VERSION.SDK_INT >= 21) {
            q0.b.e(drawable, f10, f11);
        }
    }

    public static final String c(Object[] objArr, int i10, int i11, je.e eVar) {
        StringBuilder sb2 = new StringBuilder((i11 * 3) + 2);
        sb2.append("[");
        for (int i12 = 0; i12 < i11; i12++) {
            if (i12 > 0) {
                sb2.append(", ");
            }
            Object obj = objArr[i10 + i12];
            if (obj == eVar) {
                sb2.append("(this Collection)");
            } else {
                sb2.append(obj);
            }
        }
        sb2.append("]");
        String string = sb2.toString();
        ue.d.d(string, "toString(...)");
        return string;
    }

    public static void c0(Drawable drawable, int i10, int i11, int i12, int i13) {
        if (Build.VERSION.SDK_INT >= 21) {
            q0.b.f(drawable, i10, i11, i12, i13);
        }
    }

    public static WpPathBean d(WpPathBean wpPathBean, String str, n5 n5Var) {
        try {
            String str2 = wpPathBean.path + str + "/";
            n5Var.f18311x.u(str2);
            if (n5Var.f18311x.p(str2)) {
                WpPathBean wpPathBean2 = new WpPathBean(str, str2);
                wpPathBean2.is_dir = true;
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                wpPathBean2.time_txt = com.yunpan.appmanage.util.j.f4033a.f4038b0.format(new Date());
                return wpPathBean2;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static boolean d0(Drawable drawable, int i10) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 23) {
            return q0.c.b(drawable, i10);
        }
        if (!f3293g) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("setLayoutDirection", Integer.TYPE);
                f3292f = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            f3293g = true;
        }
        Method method = f3292f;
        if (method != null) {
            try {
                method.invoke(drawable, Integer.valueOf(i10));
                return true;
            } catch (Exception unused2) {
                f3292f = null;
            }
        }
        return false;
    }

    public static void e(int i10, Intent intent, AccService accService) throws InterruptedException {
        wa.e eVar = new wa.e(i10, intent, accService);
        accService.bindService(intent, eVar, 1);
        Thread.sleep(888L);
        accService.unbindService(eVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void e0(Drawable drawable, int i10) {
        if (Build.VERSION.SDK_INT >= 21) {
            q0.b.g(drawable, i10);
        } else if (drawable instanceof q0.h) {
            ((q0.h) drawable).setTint(i10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void f0(Drawable drawable, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            q0.b.h(drawable, colorStateList);
        } else if (drawable instanceof q0.h) {
            ((q0.h) drawable).setTintList(colorStateList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void g0(Drawable drawable, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            q0.b.i(drawable, mode);
        } else if (drawable instanceof q0.h) {
            ((q0.h) drawable).setTintMode(mode);
        }
    }

    public static void h0(j3.f fVar) {
        fVar.o(3);
        fVar.o(8);
        boolean zF = fVar.f();
        boolean zF2 = fVar.f();
        if (zF) {
            fVar.o(5);
        }
        if (zF2) {
            fVar.o(6);
        }
    }

    public static void i(int i10, View view) {
        view.setClickable(false);
        new Handler().postDelayed(new androidx.activity.h(7, view), i10);
    }

    public static void i0(j3.f fVar) {
        int iG;
        int iG2 = fVar.g(2);
        if (iG2 == 0) {
            fVar.o(6);
            return;
        }
        int iY = Y(fVar, 5, 8, 16) + 1;
        if (iG2 == 1) {
            fVar.o(iY * 7);
            return;
        }
        if (iG2 == 2) {
            boolean zF = fVar.f();
            int i10 = zF ? 1 : 5;
            int i11 = zF ? 7 : 5;
            int i12 = zF ? 8 : 6;
            int i13 = 0;
            while (i13 < iY) {
                if (fVar.f()) {
                    fVar.o(7);
                    iG = 0;
                } else {
                    if (fVar.g(2) == 3 && fVar.g(i11) * i10 != 0) {
                        fVar.n();
                    }
                    iG = fVar.g(i12) * i10;
                    if (iG != 0 && iG != 180) {
                        fVar.n();
                    }
                    fVar.n();
                }
                if (iG != 0 && iG != 180 && fVar.f()) {
                    i13++;
                }
                i13++;
            }
        }
    }

    public static void j(View view) {
        i(500, view);
    }

    public static int j0(Context context, int i10) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(R.style.Animation.Activity, new int[]{i10});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void k(Drawable drawable) {
        DrawableContainer.DrawableContainerState drawableContainerState;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 23) {
            drawable.clearColorFilter();
            return;
        }
        if (i10 < 21) {
            drawable.clearColorFilter();
            return;
        }
        drawable.clearColorFilter();
        if (drawable instanceof InsetDrawable) {
            k(q0.a.c((InsetDrawable) drawable));
            return;
        }
        if (drawable instanceof q0.i) {
            k(((q0.j) ((q0.i) drawable)).f12923f);
            return;
        }
        if (!(drawable instanceof DrawableContainer) || (drawableContainerState = (DrawableContainer.DrawableContainerState) ((DrawableContainer) drawable).getConstantState()) == null) {
            return;
        }
        int childCount = drawableContainerState.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            Drawable drawableB = q0.a.b(drawableContainerState, i11);
            if (drawableB != null) {
                k(drawableB);
            }
        }
    }

    public static String k0(int i10) {
        Integer numValueOf = Integer.valueOf(Color.red(i10));
        Integer numValueOf2 = Integer.valueOf(Color.green(i10));
        Integer numValueOf3 = Integer.valueOf(Color.blue(i10));
        double dAlpha = Color.alpha(i10);
        Double.isNaN(dAlpha);
        Object[] objArr = {numValueOf, numValueOf2, numValueOf3, Double.valueOf(dAlpha / 255.0d)};
        String str = u1.f0.f15206a;
        return String.format(Locale.US, "rgba(%d,%d,%d,%.3f)", objArr);
    }

    public static void l(dh.e eVar) {
        if (eVar != null) {
            try {
                eVar.d();
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
    }

    public static int l0(int i10) {
        int i11 = i10 >> 7;
        int i12 = 0;
        while (i11 != 0) {
            i11 >>= 7;
            i12++;
        }
        return i12 + 1;
    }

    public static String m(n5 n5Var) throws Exception {
        dh.e eVar = n5Var.f18311x;
        if (eVar != null) {
            try {
                eVar.k(1);
                n5Var.f18311x.d();
            } catch (Exception unused) {
            }
            n5Var.f18311x = null;
        }
        dh.e eVar2 = new dh.e();
        eVar2.f3251a = 30000;
        eVar2.f3256f = 16000;
        try {
            if (n5Var.f18312y.isEmpty()) {
                n5Var.f18312y = HTTP.UTF_8;
            }
            if (n5Var.f18312y.startsWith("自动")) {
                eVar2.G = true;
            } else {
                eVar2.f4648n = n5Var.f18312y;
            }
            eVar2.c(n5Var.f18292c, n5Var.f18293d);
            if (!(zg.b.a(n5Var.f18294e) ? eVar2.t("Anonymous", "") : eVar2.t(n5Var.f18294e, n5Var.f18295f))) {
                throw new Exception("账号或密码错误");
            }
            eVar2.y();
            if (!L(eVar2.f4645j)) {
                return "连接失败";
            }
            if (n5Var.z) {
                eVar2.f4653t = 2;
                eVar2.f4656w = null;
                eVar2.f4655v = -1;
            } else {
                eVar2.f4653t = 0;
                eVar2.f4656w = null;
                eVar2.f4655v = -1;
            }
            n5Var.f18311x = eVar2;
            return "";
        } catch (Exception e7) {
            e7.printStackTrace();
            System.out.getClass();
            l(eVar2);
            String strZ = g.b.z(e7, new StringBuilder(""));
            return strZ.isEmpty() ? "连接失败" : strZ;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12, types: [java.io.BufferedOutputStream, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    public static void m0(WpTaskBean wpTaskBean, u uVar) throws Throwable {
        dh.e eVarP;
        fh.d dVarZ;
        ?? bufferedOutputStream;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        Object obj;
        BufferedInputStream bufferedInputStream = null;
        try {
            fileInputStream2 = new FileInputStream(wpTaskBean.bdPathInfo.f18365b);
            try {
                eVarP = P(wpTaskBean.userInfo);
            } catch (Exception unused) {
                fileInputStream = fileInputStream2;
                eVarP = null;
                dVarZ = null;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = fileInputStream2;
                eVarP = null;
                dVarZ = null;
            }
        } catch (Exception unused2) {
            eVarP = null;
            dVarZ = null;
            bufferedOutputStream = 0;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            eVarP = null;
            dVarZ = null;
            bufferedOutputStream = 0;
            fileInputStream = null;
        }
        if (eVarP == null) {
            try {
                wpTaskBean.str_state = "";
                wpTaskBean.str1 = "创建FTP连接失败";
                q4.a.e(fileInputStream2);
                try {
                    eVarP.h();
                } catch (Exception unused3) {
                }
                l(eVarP);
                return;
            } catch (Exception unused4) {
                dVarZ = null;
                obj = null;
                fileInputStream = fileInputStream2;
                bufferedOutputStream = obj;
                try {
                    wpTaskBean.str_state = "";
                    wpTaskBean.str1 = "上传失败";
                    q4.a.e(bufferedInputStream);
                    q4.a.e(bufferedOutputStream);
                    q4.a.e(dVarZ);
                    q4.a.e(fileInputStream);
                    try {
                        eVarP.h();
                    } catch (Exception unused5) {
                    }
                    l(eVarP);
                } catch (Throwable th4) {
                    th = th4;
                    q4.a.e(bufferedInputStream);
                    q4.a.e(bufferedOutputStream);
                    q4.a.e(dVarZ);
                    q4.a.e(fileInputStream);
                    try {
                        eVarP.h();
                    } catch (Exception unused6) {
                    }
                    l(eVarP);
                    throw th;
                }
            } catch (Throwable th5) {
                th = th5;
                dVarZ = null;
                bufferedOutputStream = 0;
                fileInputStream = fileInputStream2;
                q4.a.e(bufferedInputStream);
                q4.a.e(bufferedOutputStream);
                q4.a.e(dVarZ);
                q4.a.e(fileInputStream);
                eVarP.h();
                l(eVarP);
                throw th;
            }
        }
        try {
            dVarZ = eVarP.z(wpTaskBean.wpPathInfo.path + wpTaskBean.bdPathInfo.f18364a);
        } catch (Exception unused7) {
            fileInputStream = fileInputStream2;
            dVarZ = null;
            bufferedOutputStream = dVarZ;
            wpTaskBean.str_state = "";
            wpTaskBean.str1 = "上传失败";
            q4.a.e(bufferedInputStream);
            q4.a.e(bufferedOutputStream);
            q4.a.e(dVarZ);
            q4.a.e(fileInputStream);
            eVarP.h();
            l(eVarP);
        } catch (Throwable th6) {
            th = th6;
            fileInputStream = fileInputStream2;
            dVarZ = null;
            bufferedOutputStream = dVarZ;
            q4.a.e(bufferedInputStream);
            q4.a.e(bufferedOutputStream);
            q4.a.e(dVarZ);
            q4.a.e(fileInputStream);
            eVarP.h();
            l(eVarP);
            throw th;
        }
        if (dVarZ == null) {
            try {
                wpTaskBean.str_state = "";
                wpTaskBean.str1 = "打开远程流失败";
                q4.a.e(dVarZ);
                q4.a.e(fileInputStream2);
                try {
                    eVarP.h();
                } catch (Exception unused8) {
                }
                l(eVarP);
                return;
            } catch (Exception unused9) {
                obj = null;
                fileInputStream = fileInputStream2;
                bufferedOutputStream = obj;
                wpTaskBean.str_state = "";
                wpTaskBean.str1 = "上传失败";
                q4.a.e(bufferedInputStream);
                q4.a.e(bufferedOutputStream);
                q4.a.e(dVarZ);
                q4.a.e(fileInputStream);
                eVarP.h();
                l(eVarP);
            } catch (Throwable th7) {
                th = th7;
                bufferedOutputStream = 0;
                fileInputStream = fileInputStream2;
                q4.a.e(bufferedInputStream);
                q4.a.e(bufferedOutputStream);
                q4.a.e(dVarZ);
                q4.a.e(fileInputStream);
                eVarP.h();
                l(eVarP);
                throw th;
            }
        }
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(fileInputStream2);
            try {
                bufferedOutputStream = new BufferedOutputStream(dVarZ);
                try {
                    byte[] bArr = new byte[PKIFailureInfo.signerNotTrusted];
                    long j10 = wpTaskBean.bdPathInfo.f18367d;
                    int i10 = 0;
                    long j11 = 0;
                    int i11 = 0;
                    while (true) {
                        int i12 = bufferedInputStream2.read(bArr);
                        if (i12 == -1) {
                            fileInputStream = fileInputStream2;
                            break;
                        }
                        bufferedOutputStream.write(bArr, i10, i12);
                        bufferedOutputStream.flush();
                        long j12 = j11 + i12;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("上传中：");
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                        byte[] bArr2 = bArr;
                        fileInputStream = fileInputStream2;
                        double d10 = j12;
                        Double.isNaN(d10);
                        double d11 = j10;
                        Double.isNaN(d11);
                        try {
                            sb2.append(decimalFormat2.format((d10 * 100.0d) / d11));
                            sb2.append("%");
                            wpTaskBean.str1 = sb2.toString();
                            i11++;
                            if (i11 > 2) {
                                Message messageObtain = Message.obtain();
                                messageObtain.what = 10;
                                messageObtain.obj = wpTaskBean;
                                uVar.sendMessage(messageObtain);
                                i11 = 0;
                            }
                            if (wpTaskBean.isTask_stop) {
                                break;
                            }
                            fileInputStream2 = fileInputStream;
                            bArr = bArr2;
                            j11 = j12;
                            i10 = 0;
                        } catch (Exception unused10) {
                            bufferedInputStream = bufferedInputStream2;
                            bufferedOutputStream = bufferedOutputStream;
                            wpTaskBean.str_state = "";
                            wpTaskBean.str1 = "上传失败";
                            q4.a.e(bufferedInputStream);
                            q4.a.e(bufferedOutputStream);
                            q4.a.e(dVarZ);
                            q4.a.e(fileInputStream);
                            eVarP.h();
                            l(eVarP);
                        } catch (Throwable th8) {
                            th = th8;
                            bufferedInputStream = bufferedInputStream2;
                            q4.a.e(bufferedInputStream);
                            q4.a.e(bufferedOutputStream);
                            q4.a.e(dVarZ);
                            q4.a.e(fileInputStream);
                            eVarP.h();
                            l(eVarP);
                            throw th;
                        }
                    }
                    if (wpTaskBean.isTask_stop) {
                        wpTaskBean.str_state = "";
                        wpTaskBean.str1 = "主动停止任务";
                    } else {
                        wpTaskBean.str_state = "";
                        wpTaskBean.str1 = "上传完成";
                    }
                    q4.a.e(bufferedInputStream2);
                    q4.a.e(bufferedOutputStream);
                    q4.a.e(dVarZ);
                    q4.a.e(fileInputStream);
                } catch (Exception unused11) {
                    fileInputStream = fileInputStream2;
                } catch (Throwable th9) {
                    th = th9;
                    fileInputStream = fileInputStream2;
                }
            } catch (Exception unused12) {
                fileInputStream = fileInputStream2;
                bufferedOutputStream = 0;
            } catch (Throwable th10) {
                th = th10;
                fileInputStream = fileInputStream2;
                bufferedOutputStream = 0;
            }
        } catch (Exception unused13) {
            fileInputStream = fileInputStream2;
            bufferedOutputStream = 0;
        } catch (Throwable th11) {
            th = th11;
            fileInputStream = fileInputStream2;
            bufferedOutputStream = 0;
        }
        eVarP.h();
        l(eVarP);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v12, types: [dh.c, dh.e] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [dh.c, dh.e] */
    /* JADX WARN: Type inference failed for: r3v6, types: [dh.c] */
    /* JADX WARN: Type inference failed for: r3v8, types: [dh.e] */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12, types: [java.io.BufferedOutputStream, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.yunpan.appmanage.bean.FtpCopyProgressBean] */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v28 */
    /* JADX WARN: Type inference failed for: r9v29 */
    /* JADX WARN: Type inference failed for: r9v6, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public static String n(FtpCopyProgressBean ftpCopyProgressBean, String str, String str2) throws Throwable {
        fh.c cVarX;
        fh.d dVarZ;
        dh.e eVarP;
        ?? P;
        fh.d dVar;
        fh.d dVar2;
        ?? bufferedOutputStream;
        String str3;
        BufferedInputStream bufferedInputStream = null;
        try {
            try {
                eVarP = P(ftpCopyProgressBean.userInfo);
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            cVarX = null;
            dVarZ = null;
            eVarP = null;
            P = null;
        } catch (Throwable th2) {
            th = th2;
            cVarX = null;
            dVarZ = null;
            eVarP = null;
            P = null;
        }
        if (eVarP == null) {
            try {
                try {
                    throw null;
                } catch (Exception unused3) {
                    eVarP.h();
                    l(eVarP);
                    return "新建FTP连接失败";
                }
            } catch (Exception unused4) {
                l(eVarP);
                return "新建FTP连接失败";
            }
        }
        try {
            P = P(ftpCopyProgressBean.userInfo);
        } catch (Exception unused5) {
            cVarX = null;
            dVarZ = null;
            P = null;
            dVar2 = P;
            String str4 = "复制失败";
            q4.a.e(bufferedInputStream);
            q4.a.e(dVar2);
            q4.a.e(dVarZ);
            q4.a.e(cVarX);
            try {
                P.h();
            } catch (Exception unused6) {
            }
            eVarP.h();
            ftpCopyProgressBean = str4;
            l(P);
            l(eVarP);
            return ftpCopyProgressBean;
        } catch (Throwable th3) {
            th = th3;
            cVarX = null;
            dVarZ = null;
            P = null;
            dVar = P;
            q4.a.e(bufferedInputStream);
            q4.a.e(dVar);
            q4.a.e(dVarZ);
            q4.a.e(cVarX);
            try {
                P.h();
            } catch (Exception unused7) {
            }
            try {
                eVarP.h();
            } catch (Exception unused8) {
            }
            l(P);
            l(eVarP);
            throw th;
        }
        if (P == null) {
            try {
                P.h();
            } catch (Exception unused9) {
            }
            try {
                eVarP.h();
            } catch (Exception unused10) {
            }
            l(P);
            l(eVarP);
            return "新建FTP连接失败";
        }
        try {
            cVarX = eVarP.x(str);
        } catch (Exception unused11) {
            cVarX = null;
            dVarZ = null;
        } catch (Throwable th4) {
            th = th4;
            cVarX = null;
            dVarZ = null;
        }
        if (cVarX == null) {
            String str5 = "打开inputStream失败";
            q4.a.e(cVarX);
            P.h();
            ftpCopyProgressBean = str5;
        } else {
            try {
                dVarZ = P.z(str2);
            } catch (Exception unused12) {
                dVarZ = null;
                dVar2 = dVarZ;
                String str42 = "复制失败";
                q4.a.e(bufferedInputStream);
                q4.a.e(dVar2);
                q4.a.e(dVarZ);
                q4.a.e(cVarX);
                P.h();
                eVarP.h();
                ftpCopyProgressBean = str42;
                l(P);
                l(eVarP);
                return ftpCopyProgressBean;
            } catch (Throwable th5) {
                th = th5;
                dVarZ = null;
                dVar = dVarZ;
                q4.a.e(bufferedInputStream);
                q4.a.e(dVar);
                q4.a.e(dVarZ);
                q4.a.e(cVarX);
                P.h();
                eVarP.h();
                l(P);
                l(eVarP);
                throw th;
            }
            if (dVarZ != null) {
                try {
                    BufferedInputStream bufferedInputStream2 = new BufferedInputStream(cVarX);
                    try {
                        bufferedOutputStream = new BufferedOutputStream(dVarZ);
                        try {
                            byte[] bArr = new byte[PKIFailureInfo.signerNotTrusted];
                            while (true) {
                                int i10 = bufferedInputStream2.read(bArr);
                                if (i10 == -1) {
                                    str3 = "";
                                    break;
                                }
                                bufferedOutputStream.write(bArr, 0, i10);
                                bufferedOutputStream.flush();
                                ftpCopyProgressBean.size_success.getAndAdd(i10);
                                if (ftpCopyProgressBean.isStop) {
                                    str3 = "主动停止任务";
                                    break;
                                }
                            }
                            q4.a.e(bufferedInputStream2);
                            q4.a.e(bufferedOutputStream);
                            q4.a.e(dVarZ);
                            q4.a.e(cVarX);
                            try {
                                P.h();
                            } catch (Exception unused13) {
                            }
                            eVarP.h();
                            ftpCopyProgressBean = str3;
                        } catch (Exception unused14) {
                            bufferedInputStream = bufferedInputStream2;
                            dVar2 = bufferedOutputStream;
                            String str422 = "复制失败";
                            q4.a.e(bufferedInputStream);
                            q4.a.e(dVar2);
                            q4.a.e(dVarZ);
                            q4.a.e(cVarX);
                            P.h();
                            eVarP.h();
                            ftpCopyProgressBean = str422;
                            l(P);
                            l(eVarP);
                            return ftpCopyProgressBean;
                        } catch (Throwable th6) {
                            th = th6;
                            bufferedInputStream = bufferedInputStream2;
                            dVar = bufferedOutputStream;
                            q4.a.e(bufferedInputStream);
                            q4.a.e(dVar);
                            q4.a.e(dVarZ);
                            q4.a.e(cVarX);
                            P.h();
                            eVarP.h();
                            l(P);
                            l(eVarP);
                            throw th;
                        }
                    } catch (Exception unused15) {
                        bufferedOutputStream = 0;
                    } catch (Throwable th7) {
                        th = th7;
                        bufferedOutputStream = 0;
                    }
                } catch (Exception unused16) {
                    dVar2 = null;
                } catch (Throwable th8) {
                    th = th8;
                    dVar = null;
                }
                l(P);
                l(eVarP);
                return ftpCopyProgressBean;
            }
            String str6 = "打开outputStream失败";
            q4.a.e(dVarZ);
            q4.a.e(cVarX);
            P.h();
            ftpCopyProgressBean = str6;
        }
        try {
            eVarP.h();
        } catch (Exception unused17) {
        }
        l(P);
        l(eVarP);
        return ftpCopyProgressBean;
    }

    public static Drawable n0(Drawable drawable) {
        int i10 = Build.VERSION.SDK_INT;
        return i10 >= 23 ? drawable : i10 >= 21 ? !(drawable instanceof q0.h) ? new q0.k(drawable) : drawable : !(drawable instanceof q0.h) ? new q0.j(drawable) : drawable;
    }

    public static Interpolator o(float f10, float f11, float f12, float f13) {
        if (Build.VERSION.SDK_INT >= 21) {
            return z0.a.b(f10, f11, f12, f13);
        }
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f10, f11, f12, f13, 1.0f, 1.0f);
        return new i4.i(path);
    }

    public static boolean p(n5 n5Var, String str) {
        String string;
        dh.g[] gVarArrS = n5Var.f18311x.s(str);
        if (gVarArrS == null && gVarArrS.length == 0 && !L(n5Var.f18311x.l("RMD", str))) {
            return false;
        }
        for (dh.g gVar : gVarArrS) {
            if (str.endsWith("/")) {
                string = g.b.l(gVar.f4667d, "/", g.b.m(str));
            } else {
                StringBuilder sbB = d0.f.b(str, "/");
                sbB.append(gVar.f4667d);
                string = sbB.toString();
            }
            if (gVar.a()) {
                if (!p(n5Var, string)) {
                    return false;
                }
            } else if (!L(n5Var.f18311x.l("DELE", string))) {
                return false;
            }
        }
        return L(n5Var.f18311x.l("RMD", str));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00ac  */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String q(FtpCopyProgressBean ftpCopyProgressBean, String str, String str2) throws Throwable {
        fh.c cVarX;
        dh.e eVarP;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        FileOutputStream fileOutputStream3;
        BufferedOutputStream bufferedOutputStream;
        String str3;
        BufferedInputStream bufferedInputStream = null;
        try {
            try {
                eVarP = P(ftpCopyProgressBean.userInfo);
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            cVarX = null;
            eVarP = null;
            fileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            cVarX = null;
            eVarP = null;
            fileOutputStream = null;
        }
        if (eVarP == null) {
            try {
                eVarP.h();
            } catch (Exception unused3) {
            }
            l(eVarP);
            return "新建FTP连接失败";
        }
        try {
            cVarX = eVarP.x(str);
        } catch (Exception unused4) {
            cVarX = null;
            fileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            cVarX = null;
            fileOutputStream = null;
        }
        if (cVarX == null) {
            q4.a.e(cVarX);
            try {
                eVarP.h();
            } catch (Exception unused5) {
            }
            l(eVarP);
            return "打开inputStream失败";
        }
        try {
            fileOutputStream = new FileOutputStream(str2);
            try {
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(cVarX);
                try {
                    bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                    try {
                        byte[] bArr = new byte[PKIFailureInfo.signerNotTrusted];
                        while (true) {
                            int i10 = bufferedInputStream2.read(bArr);
                            if (i10 == -1) {
                                str3 = "";
                                break;
                            }
                            bufferedOutputStream.write(bArr, 0, i10);
                            bufferedOutputStream.flush();
                            ftpCopyProgressBean.size_success.getAndAdd(i10);
                            if (ftpCopyProgressBean.isStop) {
                                str3 = "主动停止任务";
                                break;
                            }
                        }
                        q4.a.e(bufferedInputStream2);
                        q4.a.e(bufferedOutputStream);
                        q4.a.e(fileOutputStream);
                        q4.a.e(cVarX);
                        eVarP.h();
                        ftpCopyProgressBean = str3;
                    } catch (Exception unused6) {
                        bufferedInputStream = bufferedInputStream2;
                        fileOutputStream3 = bufferedOutputStream;
                        String str4 = "下载失败";
                        q4.a.e(bufferedInputStream);
                        q4.a.e(fileOutputStream3);
                        q4.a.e(fileOutputStream);
                        q4.a.e(cVarX);
                        eVarP.h();
                        ftpCopyProgressBean = str4;
                        l(eVarP);
                        if (new File(str2).exists()) {
                        }
                        return ftpCopyProgressBean;
                    } catch (Throwable th4) {
                        th = th4;
                        bufferedInputStream = bufferedInputStream2;
                        fileOutputStream2 = bufferedOutputStream;
                        q4.a.e(bufferedInputStream);
                        q4.a.e(fileOutputStream2);
                        q4.a.e(fileOutputStream);
                        q4.a.e(cVarX);
                        try {
                            eVarP.h();
                        } catch (Exception unused7) {
                        }
                        l(eVarP);
                        throw th;
                    }
                } catch (Exception unused8) {
                    bufferedOutputStream = 0;
                } catch (Throwable th5) {
                    th = th5;
                    bufferedOutputStream = 0;
                }
            } catch (Exception unused9) {
                fileOutputStream3 = null;
            } catch (Throwable th6) {
                th = th6;
                fileOutputStream2 = null;
            }
        } catch (Exception unused10) {
            fileOutputStream = null;
            fileOutputStream3 = fileOutputStream;
            String str42 = "下载失败";
            q4.a.e(bufferedInputStream);
            q4.a.e(fileOutputStream3);
            q4.a.e(fileOutputStream);
            q4.a.e(cVarX);
            eVarP.h();
            ftpCopyProgressBean = str42;
            l(eVarP);
            if (new File(str2).exists()) {
            }
            return ftpCopyProgressBean;
        } catch (Throwable th7) {
            th = th7;
            fileOutputStream = null;
            fileOutputStream2 = fileOutputStream;
            q4.a.e(bufferedInputStream);
            q4.a.e(fileOutputStream2);
            q4.a.e(fileOutputStream);
            q4.a.e(cVarX);
            eVarP.h();
            l(eVarP);
            throw th;
        }
        l(eVarP);
        if (new File(str2).exists()) {
            MyDb.get().lambda$addFile_thread$1(str2);
        }
        return ftpCopyProgressBean;
    }

    public static int r(long j10) {
        if (j10 < 0 || j10 > 2147483647L) {
            throw new ArithmeticException("unsigned integer overflow");
        }
        return (int) j10;
    }

    public static void s(AccService accService, int i10) throws InterruptedException {
        if (i10 == 8002) {
            Intent intent = new Intent("com.tencent.qqmusiccar.third.api.QQMusicApiService");
            intent.setComponent(new ComponentName("com.tencent.qqmusiccar", "com.tencent.qqmusiccar.third.api.QQMusicApiService"));
            e(i10, intent, accService);
            return;
        }
        if (i10 == 8010) {
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("qqmusiccar://qqmusic.com/?action=1"));
            intent2.setComponent(new ComponentName("com.tencent.qqmusiccar", "com.tencent.qqmusiccar.app.reciver.BroadcastReceiverCenterForThird"));
            accService.sendBroadcast(intent2);
            return;
        }
        if (i10 == 8005) {
            Intent intent3 = new Intent();
            intent3.setComponent(new ComponentName("cn.kuwo.kwmusiccar", "cn.kuwo.service.MainService"));
            intent3.putExtra("isAutoPlay", true);
            p000if.a.x0(3, accService, intent3);
            return;
        }
        if (i10 == 8007) {
            Intent intent4 = new Intent("cn.kuwo.service.MainService");
            intent4.setComponent(new ComponentName("cn.kuwo.autolite", "cn.kuwo.service.MainService"));
            intent4.putExtra("isAutoPlay", true);
            intent4.putExtra("autoPlayType", 1);
            p000if.a.x0(3, accService, intent4);
            return;
        }
        if (i10 == 8004) {
            Intent intent5 = new Intent("android.intent.action.AutoSdkAIDLRemoteService");
            intent5.setComponent(new ComponentName("com.kugou.android.auto", "com.kugou.auto.proxy.AutoSdkAIDLRemoteService"));
            e(i10, intent5, accService);
            return;
        }
        if (i10 != 8006) {
            if (i10 == 8000) {
                Intent intent6 = new Intent("com.autonavi.amapauto.protocolService");
                intent6.setComponent(new ComponentName(s1.g.B(accService), "com.autonavi.amapauto.protocol.service.ProtocolService"));
                e(i10, intent6, accService);
                return;
            }
            return;
        }
        Intent intent7 = new Intent("com.huawei.intelligencehap.media.slient.launch");
        intent7.setComponent(new ComponentName("com.netease.cloudmusic.iot", "com.netease.cloudmusic.service.PlayService"));
        intent7.putExtra("FROM_START_FOREGROUND", true);
        intent7.putExtra("trigger_play", false);
        p000if.a.x0(3, accService, intent7);
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                Thread.sleep(555L);
                long jCurrentTimeMillis = System.currentTimeMillis();
                do {
                    Thread.sleep(200L);
                    wa.s.c().f17710f.c();
                    if (wa.s.c().f17706b != null && !wa.s.c().f17706b.isEmpty()) {
                        Iterator it = wa.s.c().f17706b.iterator();
                        while (it.hasNext()) {
                            MediaController mediaControllerE = t0.e.e(it.next());
                            if (mediaControllerE.getPackageName().trim().equals("com.netease.cloudmusic.iot")) {
                                if (mediaControllerE.getPlaybackState() != null && mediaControllerE.getPlaybackState().getState() == 3) {
                                    return;
                                }
                                mediaControllerE.getTransportControls().play();
                                PrintStream printStream = System.out;
                                mediaControllerE.getPackageName();
                                printStream.getClass();
                                return;
                            }
                        }
                    }
                } while (System.currentTimeMillis() - jCurrentTimeMillis < 2020);
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public static boolean t(FtpCopyProgressBean ftpCopyProgressBean, WpPathBean wpPathBean) {
        dh.g[] gVarArrS;
        try {
            if (ftpCopyProgressBean.isStop) {
                return false;
            }
            String str = ftpCopyProgressBean.rootDirPath_form.length() == 1 ? ftpCopyProgressBean.rootDirPath_to + wpPathBean.path : ftpCopyProgressBean.rootDirPath_to + wpPathBean.path.substring(ftpCopyProgressBean.rootDirPath_form.length());
            System.out.getClass();
            new File(str).mkdir();
            if (new File(str).exists()) {
                MyDb.get().lambda$addFile_thread$1(str);
            }
            if (!ftpCopyProgressBean.userInfo.f18311x.p(wpPathBean.path) || (gVarArrS = ftpCopyProgressBean.userInfo.f18311x.s(null)) == null) {
                return false;
            }
            for (dh.g gVar : gVarArrS) {
                WpPathBean wpPathBean2 = new WpPathBean(gVar.f4667d, (wpPathBean.path + "/" + gVar.f4667d).replace("//", "/"));
                if (gVar.a()) {
                    wpPathBean2.path += "/";
                    if (!t(ftpCopyProgressBean, wpPathBean2)) {
                        return false;
                    }
                } else {
                    wpPathBean2.size_long = gVar.f4665b;
                    ftpCopyProgressBean.filePaths.add(wpPathBean2);
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean u(FtpCopyProgressBean ftpCopyProgressBean, WpPathBean wpPathBean) {
        dh.g[] gVarArrS;
        try {
            if (ftpCopyProgressBean.isStop) {
                return false;
            }
            ftpCopyProgressBean.userInfo.f18311x.u(ftpCopyProgressBean.rootDirPath_form.length() == 1 ? ftpCopyProgressBean.rootDirPath_to + wpPathBean.path : (ftpCopyProgressBean.rootDirPath_to + "/" + wpPathBean.path.substring(ftpCopyProgressBean.rootDirPath_form.length())).replace("//", "/"));
            if (!ftpCopyProgressBean.userInfo.f18311x.p(wpPathBean.path) || (gVarArrS = ftpCopyProgressBean.userInfo.f18311x.s(null)) == null) {
                return false;
            }
            for (dh.g gVar : gVarArrS) {
                WpPathBean wpPathBean2 = new WpPathBean(gVar.f4667d, (wpPathBean.path + "/" + gVar.f4667d).replace("//", "/"));
                if (!gVar.a()) {
                    wpPathBean2.size_long = gVar.f4665b;
                    ftpCopyProgressBean.filePaths.add(wpPathBean2);
                } else if (!u(ftpCopyProgressBean, wpPathBean2)) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void v(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        if (!f3297k) {
            try {
                Field declaredField = LayoutInflater.class.getDeclaredField("mFactory2");
                f3296j = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f3297k = true;
        }
        Field field = f3296j;
        if (field != null) {
            try {
                field.set(layoutInflater, factory2);
            } catch (IllegalAccessException unused2) {
                if (layoutInflater != null) {
                    layoutInflater.toString();
                }
            }
        }
    }

    public static ColorStateList w(Context context, TypedArray typedArray, int i10) {
        int resourceId;
        ColorStateList colorStateListD;
        return (!typedArray.hasValue(i10) || (resourceId = typedArray.getResourceId(i10, 0)) == 0 || (colorStateListD = n0.g.d(context, resourceId)) == null) ? typedArray.getColorStateList(i10) : colorStateListD;
    }

    public static ColorStateList x(Context context, s4.a aVar, int i10) {
        int resourceId;
        ColorStateList colorStateListD;
        TypedArray typedArray = (TypedArray) aVar.f14294c;
        return (!typedArray.hasValue(i10) || (resourceId = typedArray.getResourceId(i10, 0)) == 0 || (colorStateListD = n0.g.d(context, resourceId)) == null) ? aVar.d(i10) : colorStateListD;
    }

    public static final int y(Cursor cursor, String str) {
        ue.d.e(cursor, "c");
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        int columnIndex2 = cursor.getColumnIndex("`" + str + '`');
        if (columnIndex2 >= 0) {
            return columnIndex2;
        }
        int i10 = -1;
        if (Build.VERSION.SDK_INT > 25 || str.length() == 0) {
            return -1;
        }
        String[] columnNames = cursor.getColumnNames();
        ue.d.d(columnNames, "columnNames");
        String strConcat = ".".concat(str);
        String str2 = "." + str + '`';
        int length = columnNames.length;
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            String str3 = columnNames[i11];
            int i13 = i12 + 1;
            if (str3.length() >= str.length() + 2) {
                ue.d.e(strConcat, "suffix");
                if (!str3.endsWith(strConcat)) {
                    if (str3.charAt(0) == '`') {
                        ue.d.e(str2, "suffix");
                        if (str3.endsWith(str2)) {
                        }
                    } else {
                        continue;
                    }
                }
                i10 = i12;
                break;
            }
            i11++;
            i12 = i13;
        }
        return i10;
    }

    public static final int z(Cursor cursor, String str) {
        String strK0;
        ue.d.e(cursor, "c");
        int iY = y(cursor, str);
        if (iY >= 0) {
            return iY;
        }
        try {
            String[] columnNames = cursor.getColumnNames();
            ue.d.d(columnNames, "c.columnNames");
            strK0 = je.i.k0(columnNames);
        } catch (Exception unused) {
            strK0 = "unknown";
        }
        throw new IllegalArgumentException(q.k("column '", str, "' does not exist. Available columns: ", strK0));
    }

    public abstract void U(c0.f fVar, c0.f fVar2);

    public abstract void V(c0.f fVar, Thread thread);

    public abstract boolean f(c0.g gVar, c0.c cVar, c0.c cVar2);

    public abstract boolean g(c0.g gVar, Object obj, Object obj2);

    public abstract boolean h(c0.g gVar, c0.f fVar, c0.f fVar2);
}
