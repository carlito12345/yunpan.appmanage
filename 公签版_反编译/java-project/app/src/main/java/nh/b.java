package nh;

import a1.i;
import a2.k1;
import a9.o;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.StrictMode;
import android.os.UserHandle;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.leanback.transition.e;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.bumptech.glide.h;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.KeyCodeBean;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.ui.ActivityTextAiOnYP;
import com.yunpan.appmanage.util.f0;
import com.yunpan.appmanage.util.k;
import fa.d0;
import g7.l;
import gf.j;
import ha.j2;
import ha.l2;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import l2.z;
import l5.a0;
import l5.c0;
import l5.x;
import l5.y;
import mc.g;
import o5.b0;
import o5.e0;
import o5.m;
import o5.p;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.simpleframework.xml.strategy.Name;
import p0.n;
import rc.f;
import ta.q;
import ue.d;
import wa.t;
import wa.u;
import x0.b1;
import x0.i0;
import x9.n5;
import z7.s;

/* loaded from: classes3.dex */
public abstract class b implements e, f9.a {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f11440a = 0;

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
                                                        if (i10 == 10000) {
                                                            return (iArr2[11] >> 1) & 1;
                                                        }
                                                        if (i10 == 10001) {
                                                            return (iArr2[11] >> 2) & 1;
                                                        }
                                                        switch (i10) {
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
                                                                    case 10112:
                                                                        return iArr2[2] & 3;
                                                                    case 10113:
                                                                        return iArr2[37] & 3;
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
                                                                                            case 10097:
                                                                                                return (iArr2[19] >> 5) & 3;
                                                                                            case 10137:
                                                                                                return (iArr2[37] >> 2) & 1;
                                                                                            case 10142:
                                                                                                return iArr[9] & 1;
                                                                                            case 10144:
                                                                                                return (iArr2[11] >> 3) & 1;
                                                                                            default:
                                                                                                return 0;
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

    public static int D(ActivityTextAiOnYP activityTextAiOnYP, String str, String str2) {
        try {
            Object objX = x(activityTextAiOnYP, str);
            if (objX == null) {
                return 0;
            }
            return ((Integer) objX.getClass().getMethod(str2, null).invoke(objX, null)).intValue();
        } catch (Exception e7) {
            e7.getMessage();
            return 0;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    public static final Class E(ze.b bVar) {
        d.e(bVar, "<this>");
        Class clsA = ((ue.a) bVar).a();
        if (!clsA.isPrimitive()) {
            return clsA;
        }
        String name = clsA.getName();
        switch (name.hashCode()) {
            case -1325958191:
                if (!name.equals("double")) {
                }
                break;
            case 104431:
                if (!name.equals("int")) {
                }
                break;
            case 3039496:
                if (!name.equals("byte")) {
                }
                break;
            case 3052374:
                if (!name.equals("char")) {
                }
                break;
            case 3327612:
                if (!name.equals("long")) {
                }
                break;
            case 3625364:
                if (!name.equals("void")) {
                }
                break;
            case 64711720:
                if (!name.equals("boolean")) {
                }
                break;
            case 97526364:
                if (!name.equals("float")) {
                }
                break;
            case 109413500:
                if (!name.equals("short")) {
                }
                break;
        }
        return clsA;
    }

    public static int K(j jVar) {
        switch (jVar.ordinal()) {
            case 2:
                return 2;
            case 3:
                return 6;
            case 4:
                return 4;
            case 5:
            case 6:
                return 16;
            case 7:
                return 17;
            default:
                throw new IllegalArgumentException("Unsupported data type: " + jVar);
        }
    }

    public static File L(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = ".font" + Process.myPid() + "-" + Process.myTid() + "-";
        for (int i10 = 0; i10 < 100; i10++) {
            File file = new File(cacheDir, str + i10);
            if (file.createNewFile()) {
                return file;
            }
        }
        return null;
    }

    public static String M(n5 n5Var, WpPathBean wpPathBean) throws Exception {
        String strI;
        if (n5Var.f18292c.isEmpty()) {
            n5Var.f18292c = "https://pc.woozooo.com";
        }
        String strL = g.b.l(n5Var.f18292c, "/doupload.php", new StringBuilder());
        String str = "task=12&file_id=" + wpPathBean.path;
        if (wpPathBean.is_dir) {
            str = "task=18&folder_id=" + wpPathBean.path;
        }
        String strP = P(n5Var.f18298i, strL, str, n5Var.f18292c + "/mydisk.php?item=files&action=index&u=" + n5Var.f18297h);
        String str2 = "出错";
        if (strP.isEmpty()) {
            throw new Exception("出错");
        }
        s sVarG = d.b.b0(strP).g();
        if (sVarG.o("zt").e() == 1) {
            return (wpPathBean.is_dir ? sVarG.o("info").g().o("des").i() : sVarG.o("info").i()).replace("&lt;", "<").replace("&gt;", ">").replace("&amp;", "&").replace("&quot;", "\"");
        }
        try {
            try {
                strI = sVarG.o("info").i();
            } catch (Exception unused) {
                strI = "";
            }
        } catch (Exception unused2) {
            strI = sVarG.o("text").i();
        }
        if (strI != null && !strI.isEmpty() && !strI.equals("null")) {
            str2 = strI;
        }
        throw new Exception(str2);
    }

    public static s N(n5 n5Var, WpPathBean wpPathBean, boolean z) {
        String str;
        if (n5Var.f18292c.isEmpty()) {
            n5Var.f18292c = "https://pc.woozooo.com";
        }
        String str2 = n5Var.f18292c + "/doupload.php?uid=" + n5Var.f18297h;
        String str3 = n5Var.f18292c + "/mydisk.php?item=files&action=index&u=" + n5Var.f18297h;
        if (z) {
            str = "task=47&folder_id=" + wpPathBean.path + "&vei=" + n5Var.f18299j;
        } else {
            str = "task=5&folder_id=" + wpPathBean.path + "&pg=" + wpPathBean.page + "&vei=" + n5Var.f18299j;
        }
        String strP = P(n5Var.f18298i, str2, str, str3);
        if (strP.isEmpty()) {
            return null;
        }
        try {
            return d.b.b0(strP).g();
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean O(AccService accService) {
        List listFindAccessibilityNodeInfosByViewId;
        AccessibilityNodeInfo rootInActiveWindow = accService.getRootInActiveWindow();
        if (rootInActiveWindow == null || (listFindAccessibilityNodeInfosByViewId = rootInActiveWindow.findAccessibilityNodeInfosByViewId("com.leapmotor.system:id/turn_on_adb_wifi_btn")) == null || listFindAccessibilityNodeInfosByViewId.isEmpty()) {
            return false;
        }
        ((AccessibilityNodeInfo) listFindAccessibilityNodeInfosByViewId.get(0)).performAction(16);
        accService.performGlobalAction(1);
        return true;
    }

    public static String P(String str, String str2, String str3, String str4) {
        ResponseBody responseBodyBody;
        int i10 = 0;
        while (true) {
            i10++;
            if (i10 == 1) {
                f0.f4019a.f11674b = HttpUrl.get(f0.a(i10));
            } else {
                if (i10 != 2) {
                    return "";
                }
                f0.f4019a.f11674b = null;
            }
            try {
                l9.b bVar = new l9.b(str2);
                bVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
                bVar.f11017i.b("Referer", str4);
                bVar.f11017i.b("Cookie", str);
                MediaType mediaType = MediaType.parse("application/x-www-form-urlencoded; charset=UTF-8");
                bVar.f11003n = str3;
                bVar.f11002m = mediaType;
                Response responseA = bVar.a();
                if (responseA.isSuccessful() && (responseBodyBody = responseA.body()) != null) {
                    return responseBodyBody.string();
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0054 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0055  */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v6, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean R(SQLiteDatabase sQLiteDatabase, q4.a aVar) throws Throwable {
        boolean z;
        Exception e7;
        Cursor cursorRawQuery;
        int i10;
        Cursor cursor = null;
        aVar.getClass();
        if (sQLiteDatabase != null) {
            ?? IsOpen = sQLiteDatabase.isOpen();
            try {
                if (IsOpen == 0) {
                    z = false;
                } else {
                    try {
                        try {
                        } catch (Exception e10) {
                            e7 = e10;
                        }
                        try {
                            cursorRawQuery = sQLiteDatabase.rawQuery("SELECT COUNT(*) FROM sqlite_master WHERE type = ? AND name = ?", new String[]{"table", null});
                        } catch (Exception e11) {
                            e7 = e11;
                            cursorRawQuery = null;
                            e7.printStackTrace();
                            if (cursorRawQuery != null) {
                                cursorRawQuery.close();
                            }
                            i10 = 0;
                            IsOpen = cursorRawQuery;
                            if (i10 > 0) {
                            }
                            if (!z) {
                            }
                        }
                        try {
                        } catch (Exception e12) {
                            e7 = e12;
                            e7.printStackTrace();
                            if (cursorRawQuery != null) {
                            }
                            i10 = 0;
                            IsOpen = cursorRawQuery;
                            if (i10 > 0) {
                            }
                            if (!z) {
                            }
                        }
                        if (cursorRawQuery.moveToFirst()) {
                            i10 = cursorRawQuery.getInt(0);
                            if (i10 > 0) {
                                z = true;
                            }
                        } else {
                            z = false;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                cursor = IsOpen;
            }
        }
        if (!z) {
            return true;
        }
        Cursor cursorRawQuery2 = sQLiteDatabase.rawQuery("select * from ".concat(null), null);
        if (cursorRawQuery2 == null) {
            return false;
        }
        try {
            throw null;
        } finally {
            cursorRawQuery2.close();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean T(ServiceInfo serviceInfo) {
        char c7;
        try {
            Intent intent = new Intent();
            intent.setClassName(serviceInfo.packageName, serviceInfo.name);
            DecimalFormat decimalFormat = k.f4034u0;
            List<ResolveInfo> listQueryIntentServices = com.yunpan.appmanage.util.j.f4033a.f4037b.queryIntentServices(intent, 192);
            if (!listQueryIntentServices.isEmpty()) {
                ResolveInfo resolveInfo = listQueryIntentServices.get(0);
                String str = resolveInfo.serviceInfo.permission;
                if (str != null) {
                    switch (str.hashCode()) {
                        case -769871357:
                            if (!str.equals("android.permission.BIND_VOICE_INTERACTION")) {
                                c7 = 65535;
                                break;
                            } else {
                                c7 = 3;
                                break;
                            }
                        case -121723492:
                            if (str.equals("android.permission.BIND_NOTIFICATION_LISTENER_SERVICE")) {
                                c7 = 1;
                                break;
                            }
                            break;
                        case 1412417858:
                            if (str.equals("android.permission.BIND_ACCESSIBILITY_SERVICE")) {
                                c7 = 0;
                                break;
                            }
                            break;
                        case 1448369304:
                            if (str.equals("android.permission.BIND_INPUT_METHOD")) {
                                c7 = 2;
                                break;
                            }
                            break;
                        default:
                            c7 = 65535;
                            break;
                    }
                    if (c7 == 0 || c7 == 1 || c7 == 2 || c7 == 3) {
                        return true;
                    }
                }
                IntentFilter intentFilter = resolveInfo.filter;
                if (intentFilter != null) {
                    if (intentFilter.hasAction("android.service.notification.NotificationListenerService")) {
                        return true;
                    }
                }
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
        return false;
    }

    public static void V(boolean z) {
        if (!z) {
            throw new c("Must be true");
        }
    }

    public static boolean W(AccService accService) {
        WifiManager wifiManager = (WifiManager) accService.getSystemService("wifi");
        try {
            return ((Boolean) wifiManager.getClass().getMethod("isWifiApEnabled", null).invoke(wifiManager, null)).booleanValue();
        } catch (Exception unused) {
            if (Build.VERSION.SDK_INT > 23) {
                return new i(13).v();
            }
            WifiManager wifiManager2 = (WifiManager) accService.getSystemService("wifi");
            try {
            } catch (Exception e7) {
                e7.printStackTrace();
            }
            return ((Integer) wifiManager2.getClass().getMethod("getWifiApState", null).invoke(wifiManager2, null)).intValue() == ((Integer) wifiManager2.getClass().getDeclaredField("WIFI_AP_STATE_ENABLED").get(wifiManager2)).intValue();
        }
    }

    public static String X(n5 n5Var) throws UnsupportedEncodingException {
        ResponseBody responseBodyBody;
        if (n5Var.f18292c.isEmpty()) {
            n5Var.f18292c = "https://pc.woozooo.com";
        }
        if (!n5Var.f18292c.startsWith("http")) {
            n5Var.f18292c = "https://pc.woozooo.com";
        }
        String strEncode = n5Var.f18294e;
        String strEncode2 = n5Var.f18295f;
        try {
            strEncode = URLEncoder.encode(strEncode, HTTP.UTF_8);
            strEncode2 = URLEncoder.encode(strEncode2, HTTP.UTF_8);
        } catch (Exception unused) {
        }
        String strL = g.b.l(n5Var.f18292c, "/mlogin.php", new StringBuilder());
        String strL2 = q.l("task=3&uid=", strEncode, "&pwd=", strEncode2, "&setSessionId=&setSig=&setScene=&setToken=&formhash=");
        String strString = "";
        Response responseA = null;
        int i10 = 0;
        do {
            i10++;
            if (i10 != 1) {
                if (i10 != 2) {
                    break;
                }
                f0.f4019a.f11674b = HttpUrl.get(f0.a(i10));
            } else {
                f0.f4019a.f11674b = null;
            }
            try {
                l9.b bVar = new l9.b(strL);
                bVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
                bVar.f11017i.b("Referer", strL);
                MediaType mediaType = MediaType.parse("application/x-www-form-urlencoded; charset=UTF-8");
                bVar.f11003n = strL2;
                bVar.f11002m = mediaType;
                responseA = bVar.a();
            } catch (Exception unused2) {
            }
            if (responseA.isSuccessful() && (responseBodyBody = responseA.body()) != null) {
                strString = responseBodyBody.string();
            } else {
                responseA = null;
            }
        } while (responseA == null);
        if (responseA == null || strString.isEmpty() || !strString.contains("info")) {
            return "登录出错";
        }
        try {
            s sVarG = d.b.b0(strString).g();
            if (sVarG.o("zt").e() != 1) {
                String strI = sVarG.o("info").i();
                return strI.isEmpty() ? "登录出错" : strI;
            }
            String strSubstring = "";
            for (String str : responseA.headers().values("Set-Cookie")) {
                if (str.contains(";")) {
                    strSubstring = strSubstring.length() < 1 ? str.substring(0, str.indexOf(";")) : strSubstring + "; " + str.substring(0, str.indexOf(";"));
                }
            }
            n5Var.f18298i = strSubstring;
            n5Var.f18297h = String.valueOf(sVarG.o(Name.MARK).e());
            return "";
        } catch (Exception unused3) {
            return "登录出错";
        }
    }

    public static ResponseBody Y(String str, String str2, String str3) throws Exception {
        Response responseA;
        int i10 = 0;
        ResponseBody responseBodyBody = null;
        do {
            i10++;
            if (i10 == 1) {
                f0.f4019a.f11674b = HttpUrl.get(f0.a(1));
            } else if (i10 == 2) {
                f0.f4019a.f11674b = null;
            } else {
                if (i10 != 3) {
                    break;
                }
                if (str.contains("down-load.lanrar.com")) {
                    str = str.replace("down-load.lanrar.com", "develope-oss.lanzouc.com");
                } else if (str.contains("develope-oss.lanzouc.com")) {
                    str = str.replace("develope-oss.lanzouc.com", "down-load.lanrar.com");
                }
            }
            try {
                l9.a aVar = new l9.a(str);
                aVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
                aVar.f11017i.b("Referer", str2);
                aVar.f11017i.b("Cookie", str3.isEmpty() ? "codelen=1; down_ip=1" : str3);
                aVar.f11017i.b("Accept-Language", "zh-CN,zh;q=0.9,en;q=0.8");
                responseA = aVar.a();
            } catch (Exception unused) {
            }
            if (responseA.code() != 400 && responseA.isSuccessful() && (responseBodyBody = responseA.body()) != null) {
                String strType = responseBodyBody.contentType().type();
                System.out.getClass();
                if (!strType.equals("text")) {
                    return responseBodyBody;
                }
                String strString = responseBodyBody.string();
                if (strString.contains("acw_sc__v2") && strString.contains("<html><script>")) {
                    str3 = com.bumptech.glide.c.N(strString);
                }
                responseBodyBody = null;
            }
        } while (responseBodyBody == null);
        throw new Exception("下载失败");
    }

    public static MappedByteBuffer Z(Context context, Uri uri) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        try {
            ParcelFileDescriptor parcelFileDescriptorA = n.a(context.getContentResolver(), uri, "r", null);
            if (parcelFileDescriptorA == null) {
                if (parcelFileDescriptorA != null) {
                    parcelFileDescriptorA.close();
                }
                return null;
            }
            try {
                FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorA.getFileDescriptor());
                try {
                    FileChannel channel = fileInputStream.getChannel();
                    MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                    fileInputStream.close();
                    parcelFileDescriptorA.close();
                    return map;
                } catch (Throwable th2) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                try {
                    parcelFileDescriptorA.close();
                } catch (Throwable th5) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                    } catch (Exception unused2) {
                    }
                }
                throw th4;
            }
        } catch (IOException unused3) {
            return null;
        }
    }

    public static boolean a(Object obj, String str) {
        try {
            return ((Boolean) obj.getClass().getMethod(str, null).invoke(obj, null)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public static MappedByteBuffer a0(File file) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                FileChannel channel = fileInputStream.getChannel();
                MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                fileInputStream.close();
                return map;
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable th3) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                    } catch (Exception unused) {
                    }
                }
                throw th2;
            }
        } catch (IOException unused2) {
            return null;
        }
    }

    public static void b0(String str) {
        if (str == null || str.length() == 0) {
            throw new c("String must not be empty");
        }
    }

    public static void c0(String str, String str2) {
        if (str == null || str.length() == 0) {
            throw new c(str2);
        }
    }

    public static void d0(Object obj) {
        if (obj == null) {
            throw new c("Object must not be null");
        }
    }

    public static int e(Object obj, String str) {
        try {
            return ((Integer) obj.getClass().getMethod(str, null).invoke(obj, null)).intValue();
        } catch (Exception unused) {
            return 0;
        }
    }

    public static void e0(EditorInfo editorInfo, InputConnection inputConnection, TextView textView) {
        if (inputConnection == null || editorInfo.hintText != null) {
            return;
        }
        for (ViewParent parent = textView.getParent(); parent instanceof View; parent = parent.getParent()) {
        }
    }

    public static void f(TextInputLayout textInputLayout, CheckableImageButton checkableImageButton, ColorStateList colorStateList, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null) {
            drawable = com.bumptech.glide.c.n0(drawable).mutate();
            if (colorStateList == null || !colorStateList.isStateful()) {
                com.bumptech.glide.c.f0(drawable, colorStateList);
            } else {
                int[] drawableState = textInputLayout.getDrawableState();
                int[] drawableState2 = checkableImageButton.getDrawableState();
                int length = drawableState.length;
                int[] iArrCopyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
                System.arraycopy(drawableState2, 0, iArrCopyOf, length, drawableState2.length);
                com.bumptech.glide.c.f0(drawable, ColorStateList.valueOf(colorStateList.getColorForState(iArrCopyOf, colorStateList.getDefaultColor())));
            }
            if (mode != null) {
                com.bumptech.glide.c.g0(drawable, mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    public static void h0(TextInputLayout textInputLayout, CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int[] drawableState = textInputLayout.getDrawableState();
        int[] drawableState2 = checkableImageButton.getDrawableState();
        int length = drawableState.length;
        int[] iArrCopyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
        System.arraycopy(drawableState2, 0, iArrCopyOf, length, drawableState2.length);
        int colorForState = colorStateList.getColorForState(iArrCopyOf, colorStateList.getDefaultColor());
        Drawable drawableMutate = com.bumptech.glide.c.n0(drawable).mutate();
        com.bumptech.glide.c.f0(drawableMutate, ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(drawableMutate);
    }

    public static void i(int i10, int i11, int i12) {
        if (i10 < 0 || i11 > i12) {
            StringBuilder sbO = q.o(i10, i11, "fromIndex: ", ", toIndex: ", ", size: ");
            sbO.append(i12);
            throw new IndexOutOfBoundsException(sbO.toString());
        }
        if (i10 > i11) {
            throw new IllegalArgumentException(android.support.v4.media.session.a.o("fromIndex: ", i10, i11, " > toIndex: "));
        }
    }

    public static g i0(int i10) {
        return new mc.c(0, new d0(i10, 2)).d(f.f13757b).a(fc.b.a());
    }

    public static byte j(long j10) {
        o.j("out of range: %s", (j10 >> 8) == 0, j10);
        return (byte) j10;
    }

    public static final void j0(View view, b4.g gVar) {
        d.e(view, "<this>");
        view.setTag(R.id.view_tree_saved_state_registry_owner, gVar);
    }

    public static void k(AccService accService) {
        List listFindAccessibilityNodeInfosByViewId;
        String string;
        String string2 = "";
        AccessibilityNodeInfo rootInActiveWindow = accService.getRootInActiveWindow();
        if (rootInActiveWindow == null || (listFindAccessibilityNodeInfosByViewId = rootInActiveWindow.findAccessibilityNodeInfosByViewId("android:id/button2")) == null || listFindAccessibilityNodeInfosByViewId.isEmpty()) {
            return;
        }
        AccessibilityNodeInfo accessibilityNodeInfo = (AccessibilityNodeInfo) listFindAccessibilityNodeInfosByViewId.get(0);
        List listFindAccessibilityNodeInfosByViewId2 = rootInActiveWindow.findAccessibilityNodeInfosByViewId("android:id/button1");
        if (listFindAccessibilityNodeInfosByViewId2 == null || listFindAccessibilityNodeInfosByViewId2.isEmpty()) {
            return;
        }
        AccessibilityNodeInfo accessibilityNodeInfo2 = (AccessibilityNodeInfo) listFindAccessibilityNodeInfosByViewId2.get(0);
        List listFindAccessibilityNodeInfosByViewId3 = rootInActiveWindow.findAccessibilityNodeInfosByViewId("com.android.systemui:id/wifi_debugging_alwaysUse");
        if (listFindAccessibilityNodeInfosByViewId3 != null && !listFindAccessibilityNodeInfosByViewId3.isEmpty()) {
            ((AccessibilityNodeInfo) listFindAccessibilityNodeInfosByViewId3.get(0)).performAction(16);
            accessibilityNodeInfo2.performAction(16);
            return;
        }
        try {
            string = ((AccessibilityNodeInfo) rootInActiveWindow.findAccessibilityNodeInfosByViewId("android:id/alertTitle").get(0)).getText().toString();
        } catch (Exception unused) {
            string = "";
        }
        try {
            string2 = ((AccessibilityNodeInfo) rootInActiveWindow.findAccessibilityNodeInfosByViewId("android:id/message").get(0)).getText().toString();
        } catch (Exception unused2) {
        }
        if (string2.isEmpty()) {
            return;
        }
        if (string2.contains("RSA") || string2.contains("BSSID") || string2.contains("网络名称") || string2.contains("密钥指纹") || string2.contains("指紋") || string2.contains("fingerprint") || string.contains("无线调试") || string.contains("偵錯") || string.contains("USB 调试")) {
            try {
                AccessibilityNodeInfo accessibilityNodeInfo3 = (AccessibilityNodeInfo) rootInActiveWindow.findAccessibilityNodeInfosByViewId("android:id/alwaysUse").get(0);
                if (accessibilityNodeInfo3 != null && accessibilityNodeInfo3.isClickable()) {
                    accessibilityNodeInfo3.performAction(16);
                }
            } catch (Exception unused3) {
            }
            accessibilityNodeInfo2.performAction(16);
            return;
        }
        if (string2.contains("USB") || string2.contains("Box") || string2.contains("互联盒") || string2.contains("要允许") || string2.startsWith("要允") || string2.contains("OTG") || string2.contains("預設用於這個") || string2.contains("默认情况下用于该") || string2.contains("u-blox")) {
            String strK = g.b.k(string, SignParameters.NEW_LINE, string2);
            u uVar = t.f17728a;
            if (!uVar.X.isEmpty()) {
                for (String str : uVar.X.split(",")) {
                    if (str.length() >= 2 && strK.contains(str)) {
                        accessibilityNodeInfo.performAction(16);
                        return;
                    }
                }
            }
            accessibilityNodeInfo2.performAction(16);
        }
    }

    public static void k0(CheckableImageButton checkableImageButton) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 21 || i10 > 22) {
            return;
        }
        Context context = checkableImageButton.getContext();
        int iD = (int) l.d(checkableImageButton.getContext(), 4);
        boolean z = k7.d.f10182a;
        checkableImageButton.setBackground(k7.c.b(context, iD));
    }

    public static void l(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void l0(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        WeakHashMap weakHashMap = b1.f17953a;
        boolean zA = i0.a(checkableImageButton);
        boolean z = onLongClickListener != null;
        boolean z4 = zA || z;
        checkableImageButton.setFocusable(z4);
        checkableImageButton.setClickable(zA);
        checkableImageButton.setPressable(zA);
        checkableImageButton.setLongClickable(z);
        b1.B(checkableImageButton, z4 ? 1 : 2);
    }

    public static ImageView.ScaleType m(int i10) {
        return i10 != 0 ? i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 5 ? i10 != 6 ? ImageView.ScaleType.CENTER : ImageView.ScaleType.CENTER_INSIDE : ImageView.ScaleType.CENTER_CROP : ImageView.ScaleType.FIT_END : ImageView.ScaleType.FIT_CENTER : ImageView.ScaleType.FIT_START : ImageView.ScaleType.FIT_XY;
    }

    public static void m0(Context context, boolean z) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls;
        Class<?> cls2;
        int i10 = 3;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 <= 23) {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            try {
                int iIntValue = ((Integer) wifiManager.getClass().getMethod("getWifiApState", null).invoke(wifiManager, null)).intValue();
                int iIntValue2 = ((Integer) wifiManager.getClass().getDeclaredField("WIFI_AP_STATE_ENABLED").get(wifiManager)).intValue();
                if (z && iIntValue == iIntValue2) {
                    return;
                }
                ((Boolean) wifiManager.getClass().getMethod("setWifiApEnabled", WifiConfiguration.class, Boolean.TYPE).invoke(wifiManager, (WifiConfiguration) wifiManager.getClass().getMethod("getWifiApConfiguration", null).invoke(wifiManager, null), Boolean.valueOf(z))).getClass();
                return;
            } catch (IllegalAccessException e7) {
                e7.printStackTrace();
                return;
            } catch (NoSuchFieldException e10) {
                e10.printStackTrace();
                return;
            } catch (NoSuchMethodException e11) {
                e11.printStackTrace();
                return;
            } catch (InvocationTargetException e12) {
                e12.printStackTrace();
                return;
            }
        }
        i iVar = new i(13);
        if (!z) {
            ConnectivityManager connectivityManager = (ConnectivityManager) iVar.f76b;
            try {
                Method declaredMethod = connectivityManager.getClass().getDeclaredMethod("stopTethering", Integer.TYPE);
                if (declaredMethod == null) {
                    return;
                }
                declaredMethod.invoke(connectivityManager, 0);
                return;
            } catch (Exception e13) {
                e13.toString();
                e13.printStackTrace();
                return;
            }
        }
        m7.e eVar = new m7.e(18);
        ConnectivityManager connectivityManager2 = (ConnectivityManager) iVar.f76b;
        if (!iVar.v() && i11 >= 21) {
            File codeCacheDir = AppStart.f3772h.getCodeCacheDir();
            try {
                try {
                    cls = Class.forName("android.net.ConnectivityManager$OnStartTetheringCallback");
                } catch (ClassNotFoundException e14) {
                    e14.toString();
                    e14.printStackTrace();
                    cls = null;
                }
                a5.d dVar = new a5.d(cls);
                File file = new File(codeCacheDir, "v" + Integer.toString(1));
                dVar.f413d = file;
                file.mkdir();
                dVar.f412c = new aa.a(i10, eVar);
                Object objA = dVar.a();
                try {
                    Class<?> cls3 = connectivityManager2.getClass();
                    try {
                        cls2 = Class.forName("android.net.ConnectivityManager$OnStartTetheringCallback");
                    } catch (ClassNotFoundException e15) {
                        e15.toString();
                        e15.printStackTrace();
                        cls2 = null;
                    }
                    Method declaredMethod2 = cls3.getDeclaredMethod("startTethering", Integer.TYPE, Boolean.TYPE, cls2, Handler.class);
                    if (declaredMethod2 == null) {
                        return;
                    }
                    declaredMethod2.invoke(connectivityManager2, 0, Boolean.FALSE, objA, null);
                } catch (Exception e16) {
                    e16.printStackTrace();
                }
            } catch (Exception e17) {
                e17.printStackTrace();
            }
        }
    }

    public static boolean n(File file, Resources resources, int i10) throws Throwable {
        InputStream inputStreamOpenRawResource;
        try {
            inputStreamOpenRawResource = resources.openRawResource(i10);
            try {
                boolean zO = o(file, inputStreamOpenRawResource);
                l(inputStreamOpenRawResource);
                return zO;
            } catch (Throwable th2) {
                th = th2;
                l(inputStreamOpenRawResource);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStreamOpenRawResource = null;
        }
    }

    public static boolean o(File file, InputStream inputStream) throws Throwable {
        FileOutputStream fileOutputStream;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file, false);
            } catch (IOException e7) {
                e = e7;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int i10 = inputStream.read(bArr);
                if (i10 == -1) {
                    l(fileOutputStream);
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                    return true;
                }
                fileOutputStream.write(bArr, 0, i10);
            }
        } catch (IOException e10) {
            e = e10;
            fileOutputStream2 = fileOutputStream;
            e.getMessage();
            l(fileOutputStream2);
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
            return false;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            l(fileOutputStream2);
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
            throw th;
        }
    }

    public static String o0(int i10, int i11) {
        String strP0 = p0(i10);
        String strE = i11 != 2 ? i11 != 4 ? i11 != 5 ? i11 != 6 ? i11 != 16 ? i11 != 17 ? g.b.e(i11, new StringBuilder("0x")) : "SET" : "SEQUENCE" : "OBJECT IDENTIFIER" : "NULL" : "OCTET STRING" : "INTEGER";
        return strP0.isEmpty() ? strE : g.b.k(strP0, " ", strE);
    }

    public static com.bumptech.glide.k p(com.bumptech.glide.b bVar, List list, q4.a aVar) {
        f5.k fVar;
        f5.k aVar2;
        int i10;
        Resources resources;
        Context context;
        String str;
        i5.c cVar = bVar.f3280a;
        com.bumptech.glide.f fVar2 = bVar.f3282c;
        Context applicationContext = fVar2.getApplicationContext();
        h hVar = fVar2.f3325h;
        com.bumptech.glide.k kVar = new com.bumptech.glide.k();
        m mVar = new m();
        ag.c cVar2 = kVar.f3341g;
        synchronized (cVar2) {
            cVar2.f665a.add(mVar);
        }
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 27) {
            kVar.j(new o5.t());
        }
        Resources resources2 = applicationContext.getResources();
        ArrayList arrayListF = kVar.f();
        k1 k1Var = bVar.f3283d;
        s5.a aVar3 = new s5.a(applicationContext, arrayListF, cVar, k1Var);
        e0 e0Var = new e0(cVar, new l2(25));
        p pVar = new p(kVar.f(), resources2.getDisplayMetrics(), cVar, k1Var);
        if (i11 < 28 || !hVar.f3329a.containsKey(com.bumptech.glide.c.class)) {
            fVar = new o5.f(pVar, 0);
            aVar2 = new o5.a(pVar, 2, k1Var);
        } else {
            aVar2 = new o5.h(1);
            fVar = new o5.h(0);
        }
        if (i11 >= 28) {
            i10 = i11;
            resources = resources2;
            kVar.d("Animation", InputStream.class, Drawable.class, new q5.a(new kf.d(arrayListF, 11, k1Var), 1));
            kVar.d("Animation", ByteBuffer.class, Drawable.class, new q5.a(new kf.d(arrayListF, 11, k1Var), 0));
        } else {
            i10 = i11;
            resources = resources2;
        }
        q5.c cVar3 = new q5.c(applicationContext);
        o5.b bVar2 = new o5.b(k1Var);
        d3.g gVar = new d3.g((byte) 0, 4);
        t5.c cVar4 = new t5.c(1);
        ContentResolver contentResolver = applicationContext.getContentResolver();
        kVar.a(ByteBuffer.class, new a0(5));
        kVar.a(InputStream.class, new y(0, k1Var));
        kVar.d("Bitmap", ByteBuffer.class, Bitmap.class, fVar);
        kVar.d("Bitmap", InputStream.class, Bitmap.class, aVar2);
        if (com.bumptech.glide.load.data.i.e()) {
            context = applicationContext;
            str = "Animation";
            kVar.d("Bitmap", ParcelFileDescriptor.class, Bitmap.class, new o5.f(pVar, 1));
        } else {
            context = applicationContext;
            str = "Animation";
        }
        kVar.d("Bitmap", AssetFileDescriptor.class, Bitmap.class, new e0(cVar, new j2(24)));
        kVar.d("Bitmap", ParcelFileDescriptor.class, Bitmap.class, e0Var);
        a0 a0Var = a0.f10562b;
        kVar.c(Bitmap.class, Bitmap.class, a0Var);
        kVar.d("Bitmap", Bitmap.class, Bitmap.class, new b0(0));
        kVar.b(Bitmap.class, bVar2);
        Resources resources3 = resources;
        kVar.d("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new o5.a(resources3, fVar));
        kVar.d("BitmapDrawable", InputStream.class, BitmapDrawable.class, new o5.a(resources3, aVar2));
        kVar.d("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new o5.a(resources3, e0Var));
        kVar.b(BitmapDrawable.class, new kf.d(cVar, 6, bVar2));
        String str2 = str;
        kVar.d(str2, InputStream.class, s5.b.class, new s5.i(arrayListF, aVar3, k1Var));
        kVar.d(str2, ByteBuffer.class, s5.b.class, aVar3);
        kVar.b(s5.b.class, new s5.c(0));
        kVar.c(e5.d.class, e5.d.class, a0Var);
        kVar.d("Bitmap", e5.d.class, Bitmap.class, new o5.c(cVar));
        kVar.d("legacy_append", Uri.class, Drawable.class, cVar3);
        kVar.d("legacy_append", Uri.class, Bitmap.class, new o5.a(cVar3, 1, cVar));
        kVar.i(new com.bumptech.glide.load.data.h(2));
        kVar.c(File.class, ByteBuffer.class, new a0(6));
        kVar.c(File.class, InputStream.class, new l5.f(1));
        kVar.d("legacy_append", File.class, File.class, new b0(2));
        kVar.c(File.class, ParcelFileDescriptor.class, new l5.f(0));
        kVar.c(File.class, File.class, a0Var);
        kVar.i(new com.bumptech.glide.load.data.m(k1Var));
        if (com.bumptech.glide.load.data.i.e()) {
            kVar.i(new com.bumptech.glide.load.data.h(1));
        }
        Context context2 = context;
        androidx.emoji2.text.n nVar = new androidx.emoji2.text.n(context2, 5);
        androidx.emoji2.text.n nVar2 = new androidx.emoji2.text.n(context2, 3);
        androidx.emoji2.text.n nVar3 = new androidx.emoji2.text.n(context2, 4);
        Class cls = Integer.TYPE;
        kVar.c(cls, InputStream.class, nVar);
        kVar.c(Integer.class, InputStream.class, nVar);
        kVar.c(cls, AssetFileDescriptor.class, nVar2);
        kVar.c(Integer.class, AssetFileDescriptor.class, nVar2);
        kVar.c(cls, Drawable.class, nVar3);
        kVar.c(Integer.class, Drawable.class, nVar3);
        kVar.c(Uri.class, InputStream.class, new androidx.emoji2.text.n(context2, 8));
        kVar.c(Uri.class, AssetFileDescriptor.class, new androidx.emoji2.text.n(context2, 7));
        x xVar = new x(resources3, 2);
        x xVar2 = new x(resources3, 0);
        x xVar3 = new x(resources3, 1);
        kVar.c(Integer.class, Uri.class, xVar);
        kVar.c(cls, Uri.class, xVar);
        kVar.c(Integer.class, AssetFileDescriptor.class, xVar2);
        kVar.c(cls, AssetFileDescriptor.class, xVar2);
        kVar.c(Integer.class, InputStream.class, xVar3);
        kVar.c(cls, InputStream.class, xVar3);
        kVar.c(String.class, InputStream.class, new h5.m(28));
        kVar.c(Uri.class, InputStream.class, new h5.m(28));
        kVar.c(String.class, InputStream.class, new a0(13));
        kVar.c(String.class, ParcelFileDescriptor.class, new a0(12));
        kVar.c(String.class, AssetFileDescriptor.class, new a0(11));
        kVar.c(Uri.class, InputStream.class, new l5.a(context2.getAssets(), 1));
        kVar.c(Uri.class, AssetFileDescriptor.class, new l5.a(context2.getAssets(), 0));
        kVar.c(Uri.class, InputStream.class, new androidx.emoji2.text.n(context2, 9));
        kVar.c(Uri.class, InputStream.class, new androidx.emoji2.text.n(context2, 10));
        int i12 = i10;
        if (i12 >= 29) {
            kVar.c(Uri.class, InputStream.class, new m5.b(context2, 1));
            kVar.c(Uri.class, ParcelFileDescriptor.class, new m5.b(context2, 0));
        }
        kVar.c(Uri.class, InputStream.class, new c0(contentResolver, 2));
        kVar.c(Uri.class, ParcelFileDescriptor.class, new c0(contentResolver, 1));
        kVar.c(Uri.class, AssetFileDescriptor.class, new c0(contentResolver, 0));
        kVar.c(Uri.class, InputStream.class, new a0(14));
        kVar.c(URL.class, InputStream.class, new j2(19));
        kVar.c(Uri.class, File.class, new androidx.emoji2.text.n(context2, 6));
        kVar.c(l5.g.class, InputStream.class, new y((byte) 0, 2));
        kVar.c(byte[].class, ByteBuffer.class, new a0(2));
        kVar.c(byte[].class, InputStream.class, new a0(4));
        kVar.c(Uri.class, Uri.class, a0Var);
        kVar.c(Drawable.class, Drawable.class, a0Var);
        kVar.d("legacy_append", Drawable.class, Drawable.class, new b0(1));
        kVar.k(Bitmap.class, BitmapDrawable.class, new x(resources3, 3));
        kVar.k(Bitmap.class, byte[].class, gVar);
        kVar.k(Drawable.class, byte[].class, new s4.a(cVar, gVar, cVar4));
        kVar.k(s5.b.class, byte[].class, cVar4);
        if (i12 >= 23) {
            e0 e0Var2 = new e0(cVar, new l2(24));
            kVar.d("legacy_append", ByteBuffer.class, Bitmap.class, e0Var2);
            kVar.d("legacy_append", ByteBuffer.class, BitmapDrawable.class, new o5.a(resources3, e0Var2));
        }
        Iterator it = list.iterator();
        if (it.hasNext()) {
            throw z.d(it);
        }
        if (aVar != null) {
            aVar.L();
        }
        return kVar;
    }

    public static String p0(int i10) {
        if (i10 == 0) {
            return "UNIVERSAL";
        }
        if (i10 == 1) {
            return "APPLICATION";
        }
        if (i10 == 2) {
            return "";
        }
        if (i10 == 3) {
            return "PRIVATE";
        }
        throw new IllegalArgumentException(da.b.a(i10, "Unsupported type class: "));
    }

    /* JADX WARN: Removed duplicated region for block: B:221:0x0490  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x0750  */
    /* JADX WARN: Removed duplicated region for block: B:401:0x07ff  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x081f  */
    /* JADX WARN: Removed duplicated region for block: B:445:0x087a  */
    /* JADX WARN: Removed duplicated region for block: B:458:0x0899  */
    /* JADX WARN: Removed duplicated region for block: B:569:0x04f3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:616:0x08a7 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static j8.b u(String str, int i10, int i11, HashMap map) {
        int i12;
        Charset charsetForName;
        m8.a aVar;
        m8.b bVarA;
        j8.a aVar2;
        m8.b bVar;
        j8.c cVar;
        int i13;
        int i14;
        byte[][] bArr;
        j8.a aVar3;
        int i15;
        boolean z;
        boolean z4;
        boolean z10;
        int i16;
        boolean z11;
        char c7;
        int[] iArr;
        ArrayList arrayList;
        int i17;
        k8.b bVar2;
        int i18;
        k8.b bVar3;
        int i19;
        k8.b bVar4;
        k8.b bVar5;
        int[] iArr2;
        int i20;
        int i21;
        char c10;
        k8.a aVar4;
        ArrayList arrayList2;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26 = i10;
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (i26 < 0 || i11 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i26 + 'x' + i11);
        }
        i8.a aVar5 = i8.a.ERROR_CORRECTION;
        if (map.containsKey(aVar5)) {
            String string = map.get(aVar5).toString();
            if (string == null) {
                throw new NullPointerException("Name is null");
            }
            if (!string.equals("L")) {
                if (string.equals("M")) {
                    i12 = 2;
                } else if (string.equals("Q")) {
                    i12 = 3;
                } else {
                    if (!string.equals("H")) {
                        throw new IllegalArgumentException("No enum constant com.google.zxing.qrcode.decoder.ErrorCorrectionLevel.".concat(string));
                    }
                    i12 = 4;
                }
            }
        } else {
            i12 = 1;
        }
        i8.a aVar6 = i8.a.MARGIN;
        int i27 = map.containsKey(aVar6) ? Integer.parseInt(map.get(aVar6).toString()) : 4;
        int[] iArr3 = n8.b.f11314a;
        i8.a aVar7 = i8.a.GS1_FORMAT;
        boolean z12 = map.containsKey(aVar7) && Boolean.parseBoolean(map.get(aVar7).toString());
        i8.a aVar8 = i8.a.QR_COMPACT;
        boolean z13 = map.containsKey(aVar8) && Boolean.parseBoolean(map.get(aVar8).toString());
        boolean zContainsKey = map.containsKey(i8.a.CHARACTER_SET);
        Charset charset = n8.b.f11315b;
        if (zContainsKey) {
            try {
                charsetForName = Charset.forName(HTTP.UTF_8);
            } catch (UnsupportedCharsetException unused) {
            }
        } else {
            charsetForName = charset;
        }
        m8.a aVar9 = m8.a.BYTE;
        if (z13) {
            if (charsetForName.equals(charset)) {
                charsetForName = null;
            }
            kf.f fVar = new kf.f(str, charsetForName, z12, i12);
            m8.b[] bVarArr = {kf.f.h(1), kf.f.h(2), kf.f.h(3)};
            v3.f[] fVarArr = {fVar.e(bVarArr[0]), fVar.e(bVarArr[1]), fVar.e(bVarArr[2])};
            int i28 = 0;
            int i29 = -1;
            int i30 = Integer.MAX_VALUE;
            for (int i31 = 3; i28 < i31; i31 = 3) {
                v3.f fVar2 = fVarArr[i28];
                int iA = fVar2.A((m8.b) fVar2.f16475c);
                if (n8.b.c(iA, bVarArr[i28], fVar.f10289b) && iA < i30) {
                    i29 = i28;
                    i30 = iA;
                }
                i28++;
            }
            if (i29 < 0) {
                throw new i8.b("Data too big for any version");
            }
            v3.f fVar3 = fVarArr[i29];
            aVar2 = new j8.a();
            Iterator it = ((ArrayList) fVar3.f16474b).iterator();
            while (it.hasNext()) {
                n8.e eVar = (n8.e) it.next();
                m8.a aVar10 = eVar.f11326a;
                aVar2.b(aVar10.f10997b, 4);
                int i32 = eVar.f11329d;
                v3.f fVar4 = eVar.f11330e;
                if (i32 > 0) {
                    aVar2.b(eVar.a(), aVar10.a((m8.b) fVar4.f16475c));
                }
                m8.a aVar11 = m8.a.ECI;
                int i33 = eVar.f11328c;
                if (aVar10 == aVar11) {
                    aVar2.b(((j8.c) j8.c.f9800d.get(((j8.d) ((kf.f) fVar4.f16476d).f10292e).f9805a[i33].charset().name())).f9802a[0], 8);
                } else if (i32 > 0) {
                    String str2 = (String) ((kf.f) fVar4.f16476d).f10291d;
                    int i34 = eVar.f11327b;
                    n8.b.a(str2.substring(i34, i32 + i34), aVar10, aVar2, ((j8.d) ((kf.f) fVar4.f16476d).f10292e).f9805a[i33].charset());
                }
            }
            bVar = (m8.b) fVar3.f16475c;
        } else {
            Charset charset2 = j8.e.f9808b;
            if (charset2 != null && charset2.equals(charsetForName) && n8.b.b(str)) {
                aVar = m8.a.KANJI;
            } else {
                int i35 = 0;
                boolean z14 = false;
                boolean z15 = false;
                while (true) {
                    if (i35 < str.length()) {
                        char cCharAt = str.charAt(i35);
                        if (cCharAt < '0' || cCharAt > '9') {
                            if ((cCharAt < '`' ? n8.b.f11314a[cCharAt] : -1) == -1) {
                                break;
                            }
                            z14 = true;
                        } else {
                            z15 = true;
                        }
                        i35++;
                    } else if (z14) {
                        aVar = m8.a.ALPHANUMERIC;
                    } else if (z15) {
                        aVar = m8.a.NUMERIC;
                    }
                }
                aVar = aVar9;
            }
            j8.a aVar12 = new j8.a();
            if (aVar == aVar9 && zContainsKey && (cVar = (j8.c) j8.c.f9800d.get(charsetForName.name())) != null) {
                aVar12.b(7, 4);
                aVar12.b(cVar.f9802a[0], 8);
            }
            if (z12) {
                aVar12.b(5, 4);
            }
            aVar12.b(aVar.f10997b, 4);
            j8.a aVar13 = new j8.a();
            n8.b.a(str, aVar, aVar13, charsetForName);
            i8.a aVar14 = i8.a.QR_VERSION;
            if (!map.containsKey(aVar14)) {
                int iA2 = aVar.a(m8.b.a(1)) + aVar12.f9794b + aVar13.f9794b;
                int i36 = 1;
                while (i36 <= 40) {
                    m8.b bVarA2 = m8.b.a(i36);
                    if (n8.b.c(iA2, bVarA2, i12)) {
                        int iA3 = aVar.a(bVarA2) + aVar12.f9794b + aVar13.f9794b;
                        int i37 = 1;
                        while (i37 <= 40) {
                            bVarA = m8.b.a(i37);
                            if (!n8.b.c(iA3, bVarA, i12)) {
                                i37++;
                                i26 = i26;
                                i12 = i12;
                                i27 = i27;
                            }
                        }
                        throw new i8.b("Data too big");
                    }
                    i36++;
                    i26 = i26;
                    i12 = i12;
                    i27 = i27;
                }
                throw new i8.b("Data too big");
            }
            m8.b bVarA3 = m8.b.a(Integer.parseInt(map.get(aVar14).toString()));
            if (!n8.b.c(aVar.a(bVarA3) + aVar12.f9794b + aVar13.f9794b, bVarA3, i12)) {
                throw new i8.b("Data too big for requested version");
            }
            bVarA = bVarA3;
            j8.a aVar15 = new j8.a();
            int i38 = aVar12.f9794b;
            aVar15.c(i38);
            for (int i39 = 0; i39 < i38; i39++) {
                aVar15.a(aVar12.d(i39));
            }
            int iE = aVar == aVar9 ? aVar13.e() : str.length();
            int iA4 = aVar.a(bVarA);
            int i40 = 1 << iA4;
            if (iE >= i40) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(iE);
                sb2.append(" is bigger than ");
                sb2.append(i40 - 1);
                throw new i8.b(sb2.toString());
            }
            aVar15.b(iE, iA4);
            int i41 = aVar13.f9794b;
            aVar15.c(aVar15.f9794b + i41);
            for (int i42 = 0; i42 < i41; i42++) {
                aVar15.a(aVar13.d(i42));
            }
            aVar2 = aVar15;
            bVar = bVarA;
        }
        d3.g gVar = bVar.f11000b[d0.f.c(i12)];
        int i43 = 0;
        for (eb.j jVar : (eb.j[]) gVar.f4437c) {
            i43 += jVar.f4863a;
        }
        int i44 = i43 * gVar.f4436b;
        int i45 = bVar.f11001c;
        int i46 = i45 - i44;
        int i47 = i46 * 8;
        if (aVar2.f9794b > i47) {
            throw new i8.b("data bits cannot fit in the QR Code" + aVar2.f9794b + " > " + i47);
        }
        for (int i48 = 0; i48 < 4 && aVar2.f9794b < i47; i48++) {
            aVar2.a(false);
        }
        boolean z16 = false;
        int i49 = aVar2.f9794b & 7;
        if (i49 > 0) {
            while (i49 < 8) {
                aVar2.a(z16);
                i49++;
                z16 = false;
            }
        }
        int iE2 = i46 - aVar2.e();
        for (int i50 = 0; i50 < iE2; i50++) {
            if ((i50 & 1) == 0) {
                i25 = CarSettingID.Recv.RR_DOOR_STATUS;
                i24 = 8;
            } else {
                i24 = 8;
                i25 = 17;
            }
            aVar2.b(i25, i24);
        }
        if (aVar2.f9794b != i47) {
            throw new i8.b("Bits size does not equal capacity");
        }
        int i51 = 0;
        for (eb.j jVar2 : (eb.j[]) gVar.f4437c) {
            i51 += jVar2.f4863a;
        }
        int i52 = 1;
        if (aVar2.e() != i46) {
            throw new i8.b("Number of bits and data bytes does not match");
        }
        ArrayList arrayList3 = new ArrayList(i51);
        int i53 = 0;
        int i54 = 0;
        int iMax = 0;
        int iMax2 = 0;
        while (i53 < i51) {
            int[] iArr4 = new int[i52];
            int[] iArr5 = new int[i52];
            if (i53 >= i51) {
                throw new i8.b("Block ID too large");
            }
            int i55 = i45 % i51;
            int i56 = i27;
            int i57 = i51 - i55;
            int i58 = i45 / i51;
            int i59 = i58 + 1;
            int i60 = i46 / i51;
            int i61 = i60 + 1;
            int i62 = i58 - i60;
            int i63 = i12;
            int i64 = i59 - i61;
            if (i62 != i64) {
                throw new i8.b("EC bytes mismatch");
            }
            if (i51 != i57 + i55) {
                throw new i8.b("RS blocks mismatch");
            }
            if (i45 != ((i61 + i64) * i55) + ((i60 + i62) * i57)) {
                throw new i8.b("Total bytes mismatch");
            }
            if (i53 < i57) {
                c7 = 0;
                iArr4[0] = i60;
                iArr5[0] = i62;
            } else {
                c7 = 0;
                iArr4[0] = i61;
                iArr5[0] = i64;
            }
            int i65 = iArr4[c7];
            byte[] bArr2 = new byte[i65];
            int i66 = i54 * 8;
            int i67 = 0;
            while (i67 < i65) {
                m8.b bVar6 = bVar;
                int i68 = i45;
                int i69 = i51;
                int i70 = 0;
                int i71 = 0;
                for (int i72 = 8; i71 < i72; i72 = 8) {
                    if (aVar2.d(i66)) {
                        i23 = 1;
                        i70 |= 1 << (7 - i71);
                    } else {
                        i23 = 1;
                    }
                    i66 += i23;
                    i71 += i23;
                }
                bArr2[i67] = (byte) i70;
                i67++;
                i51 = i69;
                bVar = bVar6;
                i45 = i68;
            }
            m8.b bVar7 = bVar;
            int i73 = i45;
            int i74 = i51;
            int i75 = iArr5[0];
            int i76 = i65 + i75;
            int[] iArr6 = new int[i76];
            for (int i77 = 0; i77 < i65; i77++) {
                iArr6[i77] = bArr2[i77] & 255;
            }
            k8.a aVar16 = k8.a.f10193g;
            ArrayList arrayList4 = new ArrayList();
            j8.a aVar17 = aVar2;
            int i78 = i46;
            arrayList4.add(new k8.b(aVar16, new int[]{1}));
            if (i75 == 0) {
                throw new IllegalArgumentException("No error correction bytes");
            }
            int i79 = i76 - i75;
            if (i79 <= 0) {
                throw new IllegalArgumentException("No data bytes provided");
            }
            if (i75 >= arrayList4.size()) {
                k8.b bVar8 = (k8.b) q.h(1, arrayList4);
                i17 = i53;
                int size = arrayList4.size();
                while (size <= i75) {
                    int i80 = i54;
                    int[] iArr7 = {1, aVar16.f10194a[(size - 1) + aVar16.f10199f]};
                    if (iArr7[0] == 0) {
                        iArr2 = iArr4;
                        int i81 = 1;
                        while (i81 < 2 && iArr7[i81] == 0) {
                            i81++;
                        }
                        if (i81 == 2) {
                            iArr7 = new int[]{0};
                        } else {
                            i21 = iMax2;
                            int i82 = 2 - i81;
                            int[] iArr8 = new int[i82];
                            i20 = iMax;
                            c10 = 0;
                            System.arraycopy(iArr7, i81, iArr8, 0, i82);
                            iArr7 = iArr8;
                            bVar8.getClass();
                            aVar4 = bVar8.f10200a;
                            if (aVar4.equals(aVar16)) {
                                throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
                            }
                            if (bVar8.c() || iArr7[c10] == 0) {
                                arrayList2 = arrayList3;
                                i22 = 1;
                                bVar8 = aVar4.f10196c;
                            } else {
                                int[] iArr9 = bVar8.f10201b;
                                int length = iArr9.length;
                                int length2 = iArr7.length;
                                int[] iArr10 = new int[(length + length2) - 1];
                                arrayList2 = arrayList3;
                                int i83 = 0;
                                while (i83 < length) {
                                    int i84 = length;
                                    int i85 = iArr9[i83];
                                    int[] iArr11 = iArr9;
                                    int i86 = 0;
                                    while (i86 < length2) {
                                        int i87 = i83 + i86;
                                        iArr10[i87] = iArr10[i87] ^ aVar4.a(i85, iArr7[i86]);
                                        i86++;
                                        length2 = length2;
                                    }
                                    i83++;
                                    length = i84;
                                    iArr9 = iArr11;
                                    length2 = length2;
                                }
                                i22 = 1;
                                bVar8 = new k8.b(aVar4, iArr10);
                            }
                            arrayList4.add(bVar8);
                            size += i22;
                            iArr4 = iArr2;
                            i54 = i80;
                            arrayList3 = arrayList2;
                            iMax2 = i21;
                            iMax = i20;
                        }
                    } else {
                        iArr2 = iArr4;
                    }
                    i20 = iMax;
                    i21 = iMax2;
                    c10 = 0;
                    bVar8.getClass();
                    aVar4 = bVar8.f10200a;
                    if (aVar4.equals(aVar16)) {
                    }
                }
                iArr = iArr4;
                arrayList = arrayList3;
            } else {
                iArr = iArr4;
                arrayList = arrayList3;
                i17 = i53;
            }
            int i88 = i54;
            int i89 = iMax;
            int i90 = iMax2;
            k8.b bVar9 = (k8.b) arrayList4.get(i75);
            int[] iArr12 = new int[i79];
            System.arraycopy(iArr6, 0, iArr12, 0, i79);
            if (i79 == 0) {
                throw new IllegalArgumentException();
            }
            if (i79 > 1 && iArr12[0] == 0) {
                int i91 = 1;
                while (i91 < i79 && iArr12[i91] == 0) {
                    i91++;
                }
                if (i91 == i79) {
                    iArr12 = new int[]{0};
                } else {
                    int i92 = i79 - i91;
                    int[] iArr13 = new int[i92];
                    System.arraycopy(iArr12, i91, iArr13, 0, i92);
                    iArr12 = iArr13;
                }
            }
            if (i75 < 0) {
                throw new IllegalArgumentException();
            }
            int length3 = iArr12.length;
            int[] iArr14 = new int[length3 + i75];
            for (int i93 = 0; i93 < length3; i93++) {
                iArr14[i93] = aVar16.a(iArr12[i93], 1);
            }
            k8.b bVar10 = new k8.b(aVar16, iArr14);
            if (!aVar16.equals(bVar9.f10200a)) {
                throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
            }
            if (bVar9.c()) {
                throw new IllegalArgumentException("Divide by 0");
            }
            int iB = bVar9.b();
            int[] iArr15 = bVar9.f10201b;
            int i94 = iArr15[(iArr15.length - 1) - iB];
            if (i94 == 0) {
                throw new ArithmeticException();
            }
            int i95 = aVar16.f10194a[(aVar16.f10197d - aVar16.f10195b[i94]) - 1];
            k8.b bVar11 = aVar16.f10196c;
            k8.b bVarA4 = bVar11;
            while (bVar10.b() >= bVar9.b() && !bVar10.c()) {
                int iB2 = bVar10.b() - bVar9.b();
                int iA5 = aVar16.a(bVar10.f10201b[(r14.length - 1) - bVar10.b()], i95);
                if (iB2 < 0) {
                    throw new IllegalArgumentException();
                }
                k8.a aVar18 = bVar9.f10200a;
                if (iA5 == 0) {
                    bVar4 = aVar18.f10196c;
                    bVar2 = bVar9;
                    i18 = i95;
                    bVar3 = bVar11;
                    i19 = 1;
                } else {
                    int length4 = iArr15.length;
                    bVar2 = bVar9;
                    int[] iArr16 = new int[length4 + iB2];
                    i18 = i95;
                    int i96 = 0;
                    while (i96 < length4) {
                        iArr16[i96] = aVar18.a(iArr15[i96], iA5);
                        i96++;
                        bVar11 = bVar11;
                    }
                    bVar3 = bVar11;
                    i19 = 1;
                    bVar4 = new k8.b(aVar18, iArr16);
                }
                if (iB2 < 0) {
                    throw new IllegalArgumentException();
                }
                if (iA5 == 0) {
                    bVar5 = bVar3;
                } else {
                    int[] iArr17 = new int[iB2 + i19];
                    iArr17[0] = iA5;
                    bVar5 = new k8.b(aVar16, iArr17);
                }
                bVarA4 = bVarA4.a(bVar5);
                bVar10 = bVar10.a(bVar4);
                bVar9 = bVar2;
                i95 = i18;
                bVar11 = bVar3;
            }
            int[] iArr18 = new k8.b[]{bVarA4, bVar10}[1].f10201b;
            int length5 = i75 - iArr18.length;
            for (int i97 = 0; i97 < length5; i97++) {
                iArr6[i79 + i97] = 0;
            }
            System.arraycopy(iArr18, 0, iArr6, i79 + length5, iArr18.length);
            byte[] bArr3 = new byte[i75];
            for (int i98 = 0; i98 < i75; i98++) {
                bArr3[i98] = (byte) iArr6[i65 + i98];
            }
            n8.a aVar19 = new n8.a(bArr2, bArr3);
            ArrayList arrayList5 = arrayList;
            arrayList5.add(aVar19);
            iMax = Math.max(i89, i65);
            iMax2 = Math.max(i90, i75);
            i54 = i88 + iArr[0];
            i53 = i17 + 1;
            arrayList3 = arrayList5;
            i51 = i74;
            i27 = i56;
            i12 = i63;
            bVar = bVar7;
            i45 = i73;
            aVar2 = aVar17;
            i46 = i78;
            i52 = 1;
        }
        m8.b bVar12 = bVar;
        ArrayList arrayList6 = arrayList3;
        int i99 = i45;
        int i100 = iMax;
        int i101 = i12;
        int i102 = i27;
        int i103 = iMax2;
        if (i46 != i54) {
            throw new i8.b("Data bytes does not match offset");
        }
        j8.a aVar20 = new j8.a();
        for (int i104 = 0; i104 < i100; i104++) {
            Iterator it2 = arrayList6.iterator();
            while (it2.hasNext()) {
                byte[] bArr4 = ((n8.a) it2.next()).f11312a;
                if (i104 < bArr4.length) {
                    aVar20.b(bArr4[i104], 8);
                }
            }
        }
        for (int i105 = 0; i105 < i103; i105++) {
            Iterator it3 = arrayList6.iterator();
            while (it3.hasNext()) {
                byte[] bArr5 = ((n8.a) it3.next()).f11313b;
                if (i105 < bArr5.length) {
                    aVar20.b(bArr5[i105], 8);
                }
            }
        }
        if (i99 != aVar20.e()) {
            StringBuilder sbN = g.b.n("Interleaving error: ", i99, " and ");
            sbN.append(aVar20.e());
            sbN.append(" differ.");
            throw new i8.b(sbN.toString());
        }
        int i106 = (bVar12.f10999a * 4) + 17;
        a0.h hVar = new a0.h(i106, i106);
        i8.a aVar21 = i8.a.QR_MASK_PATTERN;
        if (map.containsKey(aVar21)) {
            i13 = Integer.parseInt(map.get(aVar21).toString());
            if (!(i13 >= 0 && i13 < 8)) {
            }
        } else {
            i13 = -1;
        }
        int i107 = hVar.f28b;
        int i108 = hVar.f29c;
        int i109 = -1;
        if (i13 == -1) {
            int i110 = Integer.MAX_VALUE;
            int i111 = 0;
            while (i111 < 8) {
                int i112 = i101;
                n8.c.b(aVar20, i112, bVar12, i111, hVar);
                int iA6 = n8.c.a(hVar, false) + n8.c.a(hVar, true);
                int i113 = 0;
                int i114 = 0;
                while (true) {
                    int i115 = i108 - 1;
                    bArr = (byte[][]) hVar.f30d;
                    if (i113 >= i115) {
                        break;
                    }
                    byte[] bArr6 = bArr[i113];
                    int i116 = i114;
                    int i117 = 0;
                    while (i117 < i107 - 1) {
                        byte b10 = bArr6[i117];
                        int i118 = i117 + 1;
                        int i119 = i109;
                        if (b10 == bArr6[i118]) {
                            byte[] bArr7 = bArr[i113 + 1];
                            if (b10 == bArr7[i117] && b10 == bArr7[i118]) {
                                i116++;
                            }
                        }
                        i109 = i119;
                        i117 = i118;
                    }
                    i113++;
                    i114 = i116;
                }
                int i120 = i109;
                int i121 = (i114 * 3) + iA6;
                int i122 = 0;
                for (int i123 = 0; i123 < i108; i123++) {
                    int i124 = 0;
                    while (i124 < i107) {
                        byte[] bArr8 = bArr[i123];
                        int i125 = i124 + 6;
                        if (i125 < i107) {
                            aVar3 = aVar20;
                            if (bArr8[i124] == 1 && bArr8[i124 + 1] == 0 && bArr8[i124 + 2] == 1 && bArr8[i124 + 3] == 1 && bArr8[i124 + 4] == 1 && bArr8[i124 + 5] == 0 && bArr8[i125] == 1) {
                                int i126 = i124 - 4;
                                if (i126 < 0 || bArr8.length < i124) {
                                    z10 = false;
                                    if (z10) {
                                        int i127 = i124 + 7;
                                        int i128 = i124 + 11;
                                        if (i127 < 0 || bArr8.length < i128) {
                                            i16 = 1;
                                        } else {
                                            while (i127 < i128) {
                                                int i129 = i128;
                                                i16 = 1;
                                                if (bArr8[i127] != 1) {
                                                    i127++;
                                                    i128 = i129;
                                                }
                                            }
                                            i16 = 1;
                                            z11 = true;
                                            if (z11) {
                                            }
                                        }
                                        z11 = false;
                                        if (z11) {
                                        }
                                    } else {
                                        i16 = 1;
                                    }
                                    i122 += i16;
                                } else {
                                    while (i126 < i124) {
                                        if (bArr8[i126] == 1) {
                                            z10 = false;
                                            break;
                                        }
                                        i126++;
                                    }
                                    z10 = true;
                                    if (z10) {
                                    }
                                    i122 += i16;
                                }
                            }
                        } else {
                            aVar3 = aVar20;
                        }
                        int i130 = i123 + 6;
                        if (i130 >= i108 || bArr[i123][i124] != 1 || bArr[i123 + 1][i124] != 0 || bArr[i123 + 2][i124] != 1 || bArr[i123 + 3][i124] != 1) {
                            i15 = 1;
                        } else if (bArr[i123 + 4][i124] != 1) {
                            i15 = 1;
                        } else if (bArr[i123 + 5][i124] == 0 && bArr[i130][i124] == 1) {
                            int i131 = i123 - 4;
                            if (i131 < 0 || bArr.length < i123) {
                                z = false;
                                if (z) {
                                    int i132 = i123 + 7;
                                    int i133 = i123 + 11;
                                    if (i132 < 0 || bArr.length < i133) {
                                        i15 = 1;
                                    } else {
                                        while (i132 < i133) {
                                            i15 = 1;
                                            if (bArr[i132][i124] != 1) {
                                                i132++;
                                            }
                                        }
                                        i15 = 1;
                                        z4 = true;
                                        if (!z4) {
                                        }
                                    }
                                    z4 = false;
                                    if (!z4) {
                                    }
                                } else {
                                    i15 = 1;
                                }
                                i122 += i15;
                            } else {
                                while (i131 < i123) {
                                    if (bArr[i131][i124] == 1) {
                                        z = false;
                                        break;
                                    }
                                    i131++;
                                }
                                z = true;
                                if (z) {
                                }
                                i122 += i15;
                            }
                        } else {
                            i15 = 1;
                        }
                        i124 += i15;
                        aVar20 = aVar3;
                    }
                }
                j8.a aVar22 = aVar20;
                int i134 = (i122 * 40) + i121;
                int i135 = 0;
                for (int i136 = 0; i136 < i108; i136++) {
                    byte[] bArr9 = bArr[i136];
                    for (int i137 = 0; i137 < i107; i137++) {
                        if (bArr9[i137] == 1) {
                            i135++;
                        }
                    }
                }
                int i138 = i108 * i107;
                int iAbs = (((Math.abs((i135 * 2) - i138) * 10) / i138) * 10) + i134;
                if (iAbs < i110) {
                    i110 = iAbs;
                    i109 = i111;
                } else {
                    i109 = i120;
                }
                i111++;
                i101 = i112;
                aVar20 = aVar22;
            }
            i14 = i101;
            i13 = i109;
        } else {
            i14 = i101;
        }
        n8.c.b(aVar20, i14, bVar12, i13, hVar);
        int i139 = i102 * 2;
        int i140 = i107 + i139;
        int i141 = i139 + i108;
        int iMax3 = Math.max(i10, i140);
        int iMax4 = Math.max(i11, i141);
        int iMin = Math.min(iMax3 / i140, iMax4 / i141);
        int i142 = (iMax3 - (i107 * iMin)) / 2;
        int i143 = (iMax4 - (i108 * iMin)) / 2;
        j8.b bVar13 = new j8.b(iMax3, iMax4);
        int i144 = 0;
        while (i144 < i108) {
            int i145 = i142;
            int i146 = 0;
            while (i146 < i107) {
                if (hVar.h(i146, i144) == 1) {
                    if (i143 < 0 || i145 < 0) {
                        throw new IllegalArgumentException("Left and top must be nonnegative");
                    }
                    if (iMin < 1 || iMin < 1) {
                        throw new IllegalArgumentException("Height and width must be at least 1");
                    }
                    int i147 = i145 + iMin;
                    int i148 = i143 + iMin;
                    if (i148 > bVar13.f9796b || i147 > bVar13.f9795a) {
                        throw new IllegalArgumentException("The region must fit inside the matrix");
                    }
                    for (int i149 = i143; i149 < i148; i149++) {
                        int i150 = bVar13.f9797c * i149;
                        int i151 = i145;
                        while (i151 < i147) {
                            int i152 = (i151 / 32) + i150;
                            a0.h hVar2 = hVar;
                            int[] iArr19 = bVar13.f9798d;
                            iArr19[i152] = iArr19[i152] | (1 << (i151 & 31));
                            i151++;
                            hVar = hVar2;
                        }
                    }
                }
                i146++;
                i145 += iMin;
                hVar = hVar;
            }
            i144++;
            i143 += iMin;
            hVar = hVar;
        }
        return bVar13;
    }

    public static void w(AccService accService, int i10) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (i10 != 6000 || Build.VERSION.SDK_INT < 23) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("ecarx.camera.calibration", "ecarx.camera.calibration.MainActivity");
        intent.addFlags(268435456);
        try {
            Method declaredMethod = ActivityManager.class.getDeclaredMethod("getCurrentUser", null);
            declaredMethod.setAccessible(true);
            Integer num = (Integer) declaredMethod.invoke(null, null);
            num.getClass();
            Constructor declaredConstructor = UserHandle.class.getDeclaredConstructor(Integer.TYPE);
            declaredConstructor.setAccessible(true);
            UserHandle userHandle = (UserHandle) declaredConstructor.newInstance(num);
            Method declaredMethod2 = Context.class.getDeclaredMethod("startActivityAsUser", Intent.class, Bundle.class, UserHandle.class);
            declaredMethod2.setAccessible(true);
            declaredMethod2.invoke(accService, intent, ActivityOptions.makeBasic().toBundle(), userHandle);
        } catch (Exception e7) {
            e7.printStackTrace();
            accService.startActivity(intent.addFlags(268435456));
        }
    }

    public static Object x(ActivityTextAiOnYP activityTextAiOnYP, String str) throws IllegalAccessException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        try {
            Class<?> cls = Class.forName("com.gxa.lib.caradapter.CarAdapterManager");
            return cls.getMethod("getCarAdapterManager", String.class).invoke(cls.getMethod("getInstance", Context.class).invoke(null, activityTextAiOnYP), str);
        } catch (Exception e7) {
            e7.getMessage();
            return null;
        }
    }

    public static ArrayList y() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new KeyCodeBean(3, "主页键"));
        arrayList.add(new KeyCodeBean(82, "菜单键"));
        arrayList.add(new KeyCodeBean(4, "返回键"));
        arrayList.add(new KeyCodeBean(26, "电源键"));
        arrayList.add(new KeyCodeBean(27, "相机键"));
        arrayList.add(new KeyCodeBean(28, "清除键"));
        arrayList.add(new KeyCodeBean(23, "中心键(OK)"));
        arrayList.add(new KeyCodeBean(24, "音量+"));
        arrayList.add(new KeyCodeBean(25, "音量-"));
        arrayList.add(new KeyCodeBean(19, "上"));
        arrayList.add(new KeyCodeBean(20, "下"));
        arrayList.add(new KeyCodeBean(21, "左"));
        arrayList.add(new KeyCodeBean(22, "右"));
        arrayList.add(new KeyCodeBean(7, "0键"));
        arrayList.add(new KeyCodeBean(8, "1键"));
        arrayList.add(new KeyCodeBean(9, "2键"));
        arrayList.add(new KeyCodeBean(10, "3键"));
        arrayList.add(new KeyCodeBean(11, "4键"));
        arrayList.add(new KeyCodeBean(12, "5键"));
        arrayList.add(new KeyCodeBean(13, "6键"));
        arrayList.add(new KeyCodeBean(14, "7键"));
        arrayList.add(new KeyCodeBean(15, "8键"));
        arrayList.add(new KeyCodeBean(16, "9键"));
        arrayList.add(new KeyCodeBean(79, "耳机挂机键"));
        arrayList.add(new KeyCodeBean(80, "相机对焦键"));
        arrayList.add(new KeyCodeBean(164, "音量静音键"));
        arrayList.add(new KeyCodeBean(83, "通知键"));
        arrayList.add(new KeyCodeBean(84, "搜索键"));
        arrayList.add(new KeyCodeBean(91, "静音键"));
        arrayList.add(new KeyCodeBean(85, "播放/暂停"));
        arrayList.add(new KeyCodeBean(87, "下一首"));
        arrayList.add(new KeyCodeBean(88, "上一首"));
        arrayList.add(new KeyCodeBean(86, "停止播放"));
        arrayList.add(new KeyCodeBean(89, "倒带"));
        arrayList.add(new KeyCodeBean(90, "快进"));
        arrayList.add(new KeyCodeBean(92, "向上翻页"));
        arrayList.add(new KeyCodeBean(93, "向下翻页"));
        arrayList.add(new KeyCodeBean(164, "TV：静音键"));
        arrayList.add(new KeyCodeBean(CarSettingID.Recv.BCM_AUTO_SRWIN_CLOSE_CFGST, "TV：信息键"));
        arrayList.add(new KeyCodeBean(CarSettingID.Recv.PEPS_POWER_OFF_ENABLE, "TV：频道+"));
        arrayList.add(new KeyCodeBean(167, "TV：频道-"));
        arrayList.add(new KeyCodeBean(168, "TV：放大键"));
        arrayList.add(new KeyCodeBean(169, "TV：缩小键"));
        arrayList.add(new KeyCodeBean(CarSettingID.Recv.BCM_HEAD_LIGHT_DELAY_CFG_ST, "TV：电视键"));
        arrayList.add(new KeyCodeBean(CarSettingID.Recv.BCM_RLS_AUTO_SRWIN_CLOSE_CFGST, "TV：窗口键"));
        arrayList.add(new KeyCodeBean(CarSettingID.Recv.ETC_SYS_CFGST, "TV：指南键"));
        arrayList.add(new KeyCodeBean(CarSettingID.Recv.ETC_ICM_DISPLAY_CFGST, "TV：DVR"));
        arrayList.add(new KeyCodeBean(CarSettingID.Recv.ETC_BL_EENABLE_CFGST, "TV：书签键"));
        arrayList.add(new KeyCodeBean(CarSettingID.Recv.PCS_EVENT_RECORDST, "TV：切换字幕键"));
        arrayList.add(new KeyCodeBean(176, "TV：设置键"));
        arrayList.add(new KeyCodeBean(CarSettingID.Recv.ADAS_HWAHF_VOICE_INFO, "TV：电源键"));
        arrayList.add(new KeyCodeBean(CarSettingID.Recv.BCM_RAINSTORM_MODE_REQ, "TV：输入键"));
        arrayList.add(new KeyCodeBean(179, "TV：机顶盒电源键"));
        arrayList.add(new KeyCodeBean(180, "TV：机顶盒输入键"));
        arrayList.add(new KeyCodeBean(CarSettingID.Recv.PCS_PARK_GEAR_EXIT_SET_ST, "TV：A/V接收器电源键"));
        arrayList.add(new KeyCodeBean(CarSettingID.Recv.PCS_LADAR_TRIGGER_SV_MSET_ST, "TV：A/V接收器输入键"));
        arrayList.add(new KeyCodeBean(CarSettingID.Recv.IGM_OUTPUT_OVER_CUR, "语言切换键"));
        arrayList.add(new KeyCodeBean(205, "声音模式键"));
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 18) {
            arrayList.add(new KeyCodeBean(CarSettingID.Recv.IFC_TCPSESSIONID, "亮度-"));
            arrayList.add(new KeyCodeBean(CarSettingID.Recv.FLDCM_MIRROR_FOLD_UNFOLD_ST, "亮度+"));
        }
        if (i10 >= 20) {
            arrayList.add(new KeyCodeBean(CarSettingID.Recv.PAA_DVR_TRIGGER, "睡眠键"));
            arrayList.add(new KeyCodeBean(224, "唤醒键"));
        }
        if (i10 >= 21) {
            arrayList.add(new KeyCodeBean(243, "切换HDMI1"));
            arrayList.add(new KeyCodeBean(244, "切换HDMI2"));
            arrayList.add(new KeyCodeBean(245, "切换HDMI3"));
            arrayList.add(new KeyCodeBean(246, "切换HDMI4"));
            arrayList.add(new KeyCodeBean(251, "切换到VGA"));
            arrayList.add(new KeyCodeBean(255, "缩放模式键"));
            arrayList.add(new KeyCodeBean(259, "帮助键"));
        }
        return arrayList;
    }

    public static boolean z(ActivityTextAiOnYP activityTextAiOnYP, String str) {
        try {
            Object objX = x(activityTextAiOnYP, "cabin");
            if (objX == null) {
                return false;
            }
            return ((Boolean) objX.getClass().getMethod(str, null).invoke(objX, null)).booleanValue();
        } catch (Exception e7) {
            e7.getMessage();
            return false;
        }
    }

    public abstract int B();

    public abstract int C();

    public abstract int F();

    public abstract int G();

    public abstract int H(View view);

    public abstract int I(CoordinatorLayout coordinatorLayout);

    public abstract int J();

    public abstract boolean Q(float f10);

    public abstract boolean S(View view);

    public abstract boolean U(float f10, float f11);

    @Override // androidx.leanback.transition.e
    public float c(View view) {
        return view.getTranslationY();
    }

    @Override // androidx.leanback.transition.e
    public Property d() {
        return View.TRANSLATION_Y;
    }

    public abstract void f0();

    public abstract int g(ViewGroup.MarginLayoutParams marginLayoutParams);

    public abstract void g0(v3.f fVar);

    public abstract float h(int i10);

    public abstract boolean n0(View view, float f10);

    public r1.d0 q(u2.a aVar) {
        ByteBuffer byteBuffer = aVar.f18087e;
        byteBuffer.getClass();
        o.k(byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0);
        return r(aVar, byteBuffer);
    }

    public abstract void q0(ViewGroup.MarginLayoutParams marginLayoutParams, int i10, int i11);

    public abstract r1.d0 r(u2.a aVar, ByteBuffer byteBuffer);

    public abstract void s(s3.d0 d0Var);

    public abstract void v(s3.d0 d0Var);

    public void r0(k9.d dVar) {
    }
}
