package a9;

import a2.g1;
import a2.w0;
import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.AudioDescriptor;
import android.os.Build;
import android.provider.Settings;
import android.util.Xml;
import android.view.View;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.bean.WpTaskBean;
import com.yunpan.appmanage.db.FileInfo;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.service.AccService;
import j$.util.Comparator$CC;
import j$.util.Comparator$EL;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.TreeSet;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;
import u7.y0;
import x9.n5;
import x9.w3;

/* loaded from: classes.dex */
public abstract class o {

    /* renamed from: a, reason: collision with root package name */
    public static Stack f513a;

    public static short A(int i10, byte[] bArr) {
        return (short) ((bArr[i10 + 1] & 255) | ((bArr[i10] & 255) << 8));
    }

    public static short B(int i10, byte[] bArr) {
        return (short) (((bArr[i10 + 1] & 255) << 8) | (bArr[i10] & 255));
    }

    public static int C(int i10, byte[] bArr) {
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }

    public static int D(int i10, byte[] bArr) {
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    public static String E(int i10, byte[] bArr) throws IOException {
        char[] cArr = new char[i10];
        int i11 = 0;
        int i12 = 0;
        while (i11 < i10) {
            int i13 = i11 + 1;
            byte b10 = bArr[i11];
            int i14 = b10 & 255;
            if (i14 == 0) {
                break;
            }
            if (i14 < 128) {
                cArr[i12] = (char) i14;
                i11 = i13;
            } else if ((b10 & 224) == 192) {
                if (i10 - i13 < 2) {
                    break;
                }
                char c7 = (char) ((b10 & 31) << 6);
                cArr[i12] = c7;
                i11 += 2;
                byte b11 = bArr[i13];
                char c10 = (char) (c7 | (b11 & 63));
                cArr[i12] = c10;
                if ((b11 & 192) != 128 || c10 < 128) {
                    throw new IOException("Invalid UTF-8 sequence");
                }
            } else {
                if ((b10 & 240) != 224) {
                    throw new IOException("Unsupported UTF-8 sequence");
                }
                if (i10 - i13 < 3) {
                    break;
                }
                char c11 = (char) ((b10 & 15) << 12);
                cArr[i12] = c11;
                int i15 = i11 + 2;
                byte b12 = bArr[i13];
                if ((b12 & 192) != 128) {
                    throw new IOException("Invalid UTF-8 sequence");
                }
                char c12 = (char) (((b12 & 63) << 6) | c11);
                cArr[i12] = c12;
                i11 += 3;
                byte b13 = bArr[i15];
                char c13 = (char) (c12 | (b13 & 63));
                cArr[i12] = c13;
                if ((b13 & 192) != 128 || c13 < 2048) {
                    throw new IOException("Invalid UTF-8 sequence");
                }
            }
            i12++;
        }
        return new String(cArr, 0, i12);
    }

    public static Bitmap F(int i10, int i11, byte[] bArr) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        BitmapFactory.Options options;
        int i12 = 0;
        if (i11 != -1) {
            options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, i10, options);
            options.inJustDecodeBounds = false;
            options.inSampleSize = 1;
            for (int iMax = Math.max(options.outWidth, options.outHeight); iMax > i11; iMax /= 2) {
                options.inSampleSize *= 2;
            }
        } else {
            options = null;
        }
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, i10, options);
        if (options != null) {
            options.inSampleSize = 1;
        }
        if (bitmapDecodeByteArray == null) {
            throw r1.f0.a(new IllegalStateException(), "Could not decode image data");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            j1.g gVar = new j1.g(byteArrayInputStream);
            byteArrayInputStream.close();
            switch (gVar.c()) {
                case 3:
                case 4:
                    i12 = 180;
                    break;
                case 5:
                case 8:
                    i12 = SubsamplingScaleImageView.ORIENTATION_270;
                    break;
                case 6:
                case 7:
                    i12 = 90;
                    break;
            }
            if (i12 == 0) {
                return bitmapDecodeByteArray;
            }
            Matrix matrix = new Matrix();
            matrix.postRotate(i12);
            return Bitmap.createBitmap(bitmapDecodeByteArray, 0, 0, bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight(), matrix, false);
        } catch (Throwable th2) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th3) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                } catch (Exception unused) {
                }
            }
            throw th2;
        }
    }

    public static void G(int i10, int i11, byte[] bArr) {
        bArr[i11] = (byte) ((i10 >> 24) & 255);
        bArr[i11 + 1] = (byte) ((i10 >> 16) & 255);
        bArr[i11 + 2] = (byte) ((i10 >> 8) & 255);
        bArr[i11 + 3] = (byte) (i10 & 255);
    }

    public static void H(int i10, int i11, byte[] bArr) {
        bArr[i11] = (byte) (i10 & 255);
        bArr[i11 + 1] = (byte) ((i10 >> 8) & 255);
        bArr[i11 + 2] = (byte) ((i10 >> 16) & 255);
        bArr[i11 + 3] = (byte) ((i10 >> 24) & 255);
    }

    public static void I(AccService accService, z7.s sVar, int i10) {
        b8.n nVar = sVar.f19480a;
        if (i10 == 7000) {
            if (accService.f3944s > sVar.o("int1").e()) {
                if (nVar.containsKey("maps1")) {
                    ta.l.k(accService, sVar.p("maps1"));
                    return;
                }
                return;
            } else {
                if (nVar.containsKey("maps2")) {
                    ta.l.k(accService, sVar.p("maps2"));
                    return;
                }
                return;
            }
        }
        if (i10 == 7001) {
            if (Settings.System.getInt(accService.getContentResolver(), "screen_brightness", 255) > sVar.o("int1").e()) {
                if (nVar.containsKey("maps1")) {
                    ta.l.k(accService, sVar.p("maps1"));
                }
            } else if (nVar.containsKey("maps2")) {
                ta.l.k(accService, sVar.p("maps2"));
            }
        }
    }

    public static Bitmap J(int i10, int i11, String str) {
        HashMap map = new HashMap();
        map.put(i8.a.CHARACTER_SET, HTTP.UTF_8);
        map.put(i8.a.MARGIN, "0");
        try {
            j8.b bVarU = nh.b.u(str, i10, i11, map);
            int[] iArr = new int[i10 * i11];
            for (int i12 = 0; i12 < i11; i12++) {
                for (int i13 = 0; i13 < i10; i13++) {
                    if (bVarU.a(i13, i12)) {
                        iArr[(i12 * i10) + i13] = 0;
                    } else {
                        iArr[(i12 * i10) + i13] = -1;
                    }
                }
            }
            return Bitmap.createBitmap(iArr, 0, i10, i10, i11, Bitmap.Config.RGB_565);
        } catch (i8.b e7) {
            e7.printStackTrace();
            return null;
        } catch (Exception | ExceptionInInitializerError | NoClassDefFoundError unused) {
            return null;
        }
    }

    public static u7.g0 K(List list) {
        int i10 = 0;
        if (Build.VERSION.SDK_INT < 31 || list == null) {
            u7.e0 e0Var = u7.g0.f15471b;
            return y0.f15549e;
        }
        TreeSet treeSet = new TreeSet(Comparator$EL.reversed(Comparator$CC.comparing(new a2.n(i10))));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AudioDescriptor audioDescriptorI = a2.b.i(it.next());
            if (audioDescriptorI.getStandard() == 1) {
                byte[] descriptor = audioDescriptorI.getDescriptor();
                if (descriptor.length != 3) {
                    u1.a.p("Invalid SAD length: " + descriptor.length);
                } else {
                    byte b10 = descriptor[0];
                    int i11 = (b10 & 7) + 1;
                    if (((b10 >> 3) & 15) == 1) {
                        treeSet.add(Integer.valueOf(u1.f0.n(i11)));
                    }
                }
            }
        }
        return u7.g0.m(treeSet);
    }

    public static int L(int[] iArr, int[] iArr2, int i10) {
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
                                    default:
                                        switch (i10) {
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
                                                        return (iArr2[28] >> 5) & 1;
                                                    case CarSettingID.Recv.SUNROOF_STATUS /* 231 */:
                                                        return (iArr2[9] >> 4) & 1;
                                                    case CarSettingID.Recv.TAILGATE_STATUS /* 232 */:
                                                        return iArr[8] & 1;
                                                    case CarSettingID.Recv.LF_DOOR_STATUS /* 233 */:
                                                        return (iArr2[8] >> 1) & 1;
                                                    default:
                                                        switch (i10) {
                                                            case CarSettingID.Recv.RR_DOOR_STATUS /* 236 */:
                                                                return (iArr2[29] >> 3) & 1;
                                                            case 237:
                                                                return (iArr2[28] >> 6) & 1;
                                                            case 238:
                                                                return (iArr2[0] >> 2) & 3;
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
                                                                            case 10021:
                                                                                return (iArr2[28] >> 5) & 1;
                                                                            case 10022:
                                                                                return (iArr2[19] >> 2) & 1;
                                                                            case 10023:
                                                                                return (iArr2[28] >> 7) & 1;
                                                                            case 10024:
                                                                                return iArr2[29] & 1;
                                                                            case 10025:
                                                                                return (iArr2[29] >> 1) & 1;
                                                                            case 10026:
                                                                                return iArr[0] & 3;
                                                                            case 10027:
                                                                                return iArr[9] & 1;
                                                                            default:
                                                                                switch (i10) {
                                                                                    case 10040:
                                                                                        return (iArr[5] >> 7) & 1;
                                                                                    case 10041:
                                                                                        return (iArr[9] >> 1) & 1;
                                                                                    case 10042:
                                                                                        return (iArr[9] >> 2) & 1;
                                                                                    case 10043:
                                                                                        return (iArr[9] >> 3) & 1;
                                                                                    case 10044:
                                                                                        return iArr2[22] & 1;
                                                                                    case 10045:
                                                                                        return (iArr2[22] >> 1) & 1;
                                                                                    case 10046:
                                                                                        return (iArr2[22] >> 2) & 1;
                                                                                    case 10047:
                                                                                        return (iArr2[29] >> 2) & 1;
                                                                                    default:
                                                                                        switch (i10) {
                                                                                            case 10069:
                                                                                                return (iArr2[19] >> 3) & 1;
                                                                                            case 10070:
                                                                                                return (iArr2[19] >> 4) & 1;
                                                                                            case 10071:
                                                                                                return (iArr2[19] >> 5) & 1;
                                                                                            default:
                                                                                                switch (i10) {
                                                                                                    case 10089:
                                                                                                        return (iArr2[11] >> 4) & 1;
                                                                                                    case 10090:
                                                                                                        return (iArr2[11] >> 5) & 1;
                                                                                                    case 10091:
                                                                                                        return (iArr2[19] >> 6) & 1;
                                                                                                    default:
                                                                                                        if (i10 == 18) {
                                                                                                            return (iArr2[3] >> 4) & 1;
                                                                                                        }
                                                                                                        if (i10 == 10062) {
                                                                                                            return (iArr2[29] >> 4) & 3;
                                                                                                        }
                                                                                                        if (i10 != 10076) {
                                                                                                            return 0;
                                                                                                        }
                                                                                                        return (iArr2[12] >> 7) & 1;
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
    }

    public static Object M(y7.c cVar) {
        Object obj;
        boolean z = false;
        c0.g gVar = (c0.g) cVar;
        if (!gVar.isDone()) {
            throw new IllegalStateException(android.support.v4.media.session.b.y("Future was expected to be done: %s", gVar));
        }
        while (true) {
            try {
                obj = gVar.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th2) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th2;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public static String N(String str, String str2) {
        ue.d.e(str, "tableName");
        ue.d.e(str2, "triggerType");
        return "`room_table_modification_trigger_" + str + '_' + str2 + '`';
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void Q(WpTaskBean wpTaskBean, w3 w3Var, WpPathBean wpPathBean, mc.b bVar) {
        List<FileInfo> listSqlQuery;
        try {
            listSqlQuery = MyDb.get().getFileInfoDao().sqlQuery(new g1(g.b.l(com.yunpan.appmanage.util.v.f4106a.f4129l0 ? "" : " and name NOT LIKE '.%'", " ORDER BY name", new StringBuilder("SELECT * FROM fileList WHERE parent=?")), new Object[]{w3Var.f18365b}));
        } catch (Exception unused) {
            listSqlQuery = null;
        }
        if (listSqlQuery == null || listSqlQuery.isEmpty()) {
            return;
        }
        for (FileInfo fileInfo : listSqlQuery) {
            w3 w3Var2 = new w3(fileInfo);
            if (fileInfo.isDir) {
                n5 n5Var = wpTaskBean.userInfo;
                int i10 = n5Var.f18290a;
                if (i10 != 1) {
                    WpPathBean wpPathBeanB = i10 == 2 ? qf.c.b(Integer.valueOf(wpPathBean.path).intValue(), w3Var2.f18364a, n5Var) : i10 == 3 ? qa.f.b(wpPathBean, w3Var2.f18364a, n5Var) : i10 == 4 ? com.bumptech.glide.c.d(wpPathBean, w3Var2.f18364a, n5Var) : i10 == 5 ? com.bumptech.glide.d.e(wpPathBean, w3Var2.f18364a, n5Var) : i10 == 6 ? p000if.a.h(n5Var, w3Var2.f18364a) : i10 == 7 ? qa.g.b(wpPathBean, w3Var2.f18364a, n5Var) : null;
                    if (wpPathBeanB == null) {
                        android.support.v4.media.session.a.B("创建文件夹失败", bVar);
                        return;
                    }
                    Q(wpTaskBean, w3Var2, wpPathBeanB, bVar);
                }
            } else {
                WpTaskBean wpTaskBean2 = new WpTaskBean();
                wpTaskBean2.type = 2;
                wpTaskBean2.userInfo = wpTaskBean.userInfo;
                wpTaskBean2.wpRootPath = wpTaskBean.wpRootPath;
                wpTaskBean2.bdRootPath = wpTaskBean.bdRootPath;
                wpTaskBean2.wpPathInfo = wpPathBean;
                wpTaskBean2.bdPathInfo = w3Var2;
                bVar.f(wpTaskBean2);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0143  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void R(File file) throws Exception {
        String strJ;
        String strI;
        z7.s sVarG;
        StringBuilder sb2 = new StringBuilder();
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        sb2.append(com.yunpan.appmanage.util.j.f4033a.Q);
        String str = File.separator;
        sb2.append(str);
        sb2.append(System.currentTimeMillis());
        sb2.append(str);
        String string = sb2.toString();
        if (com.yunpan.appmanage.util.v.f4106a.f4140r0) {
            p000if.a.w(file, string, null, null);
        } else {
            za.g.e(file, string, null, null);
        }
        File file2 = new File(g.b.j(string, "AndroidManifest.json"));
        String strI2 = "";
        if (file2.exists()) {
            StringBuilder sb3 = new StringBuilder();
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(file2));
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb3.append(line);
                    sb3.append(SignParameters.NEW_LINE);
                }
                bufferedReader.close();
            } catch (Exception e7) {
                e7.printStackTrace();
            }
            try {
                sVarG = d.b.b0(sb3.toString()).g();
                strI = sVarG.o("packageName").i();
            } catch (Exception e10) {
                e = e10;
                strI = "";
            }
            try {
                strI2 = sVarG.o("sourceDirPath").i();
            } catch (Exception e11) {
                e = e11;
                e.printStackTrace();
                strJ = strI2;
                strI2 = strI;
                int i10 = 0;
                if (strI2.isEmpty()) {
                }
                if (!strI2.isEmpty()) {
                }
                if (strI2.isEmpty()) {
                }
                if (strJ.isEmpty()) {
                }
                if (new File(strJ).exists()) {
                }
                if (!new File(strJ).exists()) {
                }
                z(string, strJ, string);
            }
            strJ = strI2;
            strI2 = strI;
        } else {
            strJ = "";
        }
        int i102 = 0;
        if (strI2.isEmpty()) {
            File[] fileArrListFiles = new File(string).listFiles();
            int length = fileArrListFiles.length;
            int i11 = 0;
            while (true) {
                if (i11 >= length) {
                    break;
                }
                File file3 = fileArrListFiles[i11];
                if (file3.getName().toLowerCase().endsWith(".apk")) {
                    PackageInfo packageArchiveInfo = com.yunpan.appmanage.util.j.f4033a.f4037b.getPackageArchiveInfo(file3.getPath(), 8192);
                    if (packageArchiveInfo != null) {
                        strI2 = packageArchiveInfo.packageName;
                    }
                } else {
                    i11++;
                }
            }
        }
        if (!strI2.isEmpty() && android.support.v4.media.session.a.k(strI2) != null) {
            throw new Exception("解析错误，查不到包名");
        }
        if (strI2.isEmpty() && android.support.v4.media.session.a.k(strI2) != null) {
            throw new Exception("此系统已存在相同包名的应用了");
        }
        if (strJ.isEmpty()) {
            strJ = "/system/app/".concat(strI2);
        }
        if (new File(strJ).exists()) {
            File[] fileArrListFiles2 = new File(strJ).listFiles();
            int length2 = fileArrListFiles2.length;
            while (true) {
                if (i102 >= length2) {
                    break;
                }
                if (fileArrListFiles2[i102].getName().toLowerCase().endsWith(".apk")) {
                    strJ = g.b.j(strJ, "123");
                    break;
                }
                i102++;
            }
        }
        if (!new File(strJ).exists()) {
            String str2 = "mkdir -p '" + strJ + "/'";
            fa.b0.f5652a.getClass();
            if (w0.h(str2).f5648a != 0) {
                throw new Exception("安装失败：创建文件夹失败");
            }
        }
        z(string, strJ, string);
    }

    public static void Y(Context context, String str) throws IOException {
        if (str.equals("")) {
            context.deleteFile("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
            return;
        }
        try {
            FileOutputStream fileOutputStreamOpenFileOutput = context.openFileOutput("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file", 0);
            XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
            try {
                xmlSerializerNewSerializer.setOutput(fileOutputStreamOpenFileOutput, null);
                xmlSerializerNewSerializer.startDocument(HTTP.UTF_8, Boolean.TRUE);
                xmlSerializerNewSerializer.startTag(null, "locales");
                xmlSerializerNewSerializer.attribute(null, "application_locales", str);
                xmlSerializerNewSerializer.endTag(null, "locales");
                xmlSerializerNewSerializer.endDocument();
                if (fileOutputStreamOpenFileOutput == null) {
                    return;
                }
            } catch (Exception unused) {
                if (fileOutputStreamOpenFileOutput == null) {
                    return;
                }
            } catch (Throwable th2) {
                if (fileOutputStreamOpenFileOutput != null) {
                    try {
                        fileOutputStreamOpenFileOutput.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th2;
            }
            fileOutputStreamOpenFileOutput.close();
        } catch (FileNotFoundException | IOException unused3) {
        }
    }

    public static byte[] Z(InputStream inputStream) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            try {
                int i10 = inputStream.read(bArr);
                if (i10 == -1) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    return byteArray;
                }
                byteArrayOutputStream.write(bArr, 0, i10);
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th4) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th4);
                        } catch (Exception unused) {
                        }
                    }
                    throw th3;
                }
            }
        }
    }

    public static void a() {
        try {
            Stack stack = f513a;
            if (stack == null || stack.size() <= 0) {
                return;
            }
            int size = f513a.size();
            for (int i10 = 0; i10 < size; i10++) {
                Activity activity = (Activity) f513a.get(i10);
                if (f513a.get(i10) != null && !activity.isFinishing()) {
                    activity.finish();
                }
            }
            f513a.clear();
        } catch (Exception e7) {
            f513a.clear();
            e7.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003c, code lost:
    
        r1 = r3.getAttributeValue(null, "application_locales");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String a0(Context context) throws IOException {
        String attributeValue = "";
        try {
            FileInputStream fileInputStreamOpenFileInput = context.openFileInput("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
            try {
                XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
                xmlPullParserNewPullParser.setInput(fileInputStreamOpenFileInput, HTTP.UTF_8);
                int depth = xmlPullParserNewPullParser.getDepth();
                while (true) {
                    int next = xmlPullParserNewPullParser.next();
                    if (next != 1 && (next != 3 || xmlPullParserNewPullParser.getDepth() > depth)) {
                        if (next != 3 && next != 4 && xmlPullParserNewPullParser.getName().equals("locales")) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
            } catch (IOException | XmlPullParserException unused) {
                if (fileInputStreamOpenFileInput != null) {
                }
            } catch (Throwable th2) {
                if (fileInputStreamOpenFileInput != null) {
                    try {
                        fileInputStreamOpenFileInput.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th2;
            }
            if (fileInputStreamOpenFileInput != null) {
                try {
                    fileInputStreamOpenFileInput.close();
                } catch (IOException unused3) {
                }
            }
            if (attributeValue.isEmpty()) {
                context.deleteFile("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
            }
        } catch (FileNotFoundException unused4) {
        }
        return attributeValue;
    }

    public static String b(int i10, int i11, String str) {
        if (i10 < 0) {
            return android.support.v4.media.session.b.y("%s (%s) must not be negative", str, Integer.valueOf(i10));
        }
        if (i11 >= 0) {
            return android.support.v4.media.session.b.y("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        throw new IllegalArgumentException(da.b.a(i11, "negative size: "));
    }

    public static o3.f b0(o3.f fVar, String[] strArr, Map map) {
        int i10 = 0;
        if (fVar == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return (o3.f) map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                o3.f fVar2 = new o3.f();
                int length = strArr.length;
                while (i10 < length) {
                    fVar2.a((o3.f) map.get(strArr[i10]));
                    i10++;
                }
                return fVar2;
            }
        } else {
            if (strArr != null && strArr.length == 1) {
                fVar.a((o3.f) map.get(strArr[0]));
                return fVar;
            }
            if (strArr != null && strArr.length > 1) {
                int length2 = strArr.length;
                while (i10 < length2) {
                    fVar.a((o3.f) map.get(strArr[i10]));
                    i10++;
                }
            }
        }
        return fVar;
    }

    public static ke.i c(ke.i iVar) {
        ke.f fVar = iVar.f10269a;
        fVar.b();
        return fVar.f10261i > 0 ? iVar : ke.i.f10268b;
    }

    public static String d(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder(bArr.length * 2);
        for (byte b10 : bArr) {
            sb2.append(String.format("%02x", Byte.valueOf(b10)));
        }
        return sb2.toString();
    }

    public static String e(byte[] bArr) {
        char[] charArray = "0123456789ABCDEF".toCharArray();
        char[] cArr = new char[bArr.length * 2];
        for (int i10 = 0; i10 < bArr.length; i10++) {
            byte b10 = bArr[i10];
            int i11 = i10 * 2;
            cArr[i11] = charArray[(b10 & 255) >>> 4];
            cArr[i11 + 1] = charArray[b10 & 15];
        }
        return new String(cArr);
    }

    public static ba.h f(File file) throws IllegalAccessException, NoSuchAlgorithmException, IOException, IllegalArgumentException, InvocationTargetException {
        int i10 = 0;
        if (!file.isFile()) {
            throw new IOException("文件不存在或不是普通文件: " + file);
        }
        long length = file.length();
        int i11 = length <= 134217728 ? 262144 : length <= 268435456 ? PKIFailureInfo.signerNotTrusted : length <= 536870912 ? 1048576 : PKIFailureInfo.badSenderNonce;
        MessageDigest messageDigest = MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1);
        MessageDigest messageDigest2 = MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1);
        byte[] bArr = new byte[i11];
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            int i12 = 0;
            while (i12 < i11) {
                try {
                    int i13 = fileInputStream.read(bArr, i12, i11 - i12);
                    if (i13 == -1) {
                        break;
                    }
                    i12 += i13;
                } finally {
                    try {
                    } catch (Throwable th2) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                        } catch (Exception unused) {
                        }
                    }
                }
            }
            if (i12 <= 0) {
                break;
            }
            messageDigest2.reset();
            messageDigest2.update(bArr, 0, i12);
            messageDigest.update(messageDigest2.digest());
        }
        fileInputStream.close();
        String strE = e(messageDigest.digest());
        MessageDigest messageDigest3 = MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1);
        if (length < 61440) {
            byte[] bArr2 = new byte[32768];
            fileInputStream = new FileInputStream(file);
            while (true) {
                try {
                    int i14 = fileInputStream.read(bArr2);
                    if (i14 == -1) {
                        break;
                    }
                    messageDigest3.update(bArr2, 0, i14);
                } finally {
                    try {
                    } catch (Throwable th22) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th22);
                        } catch (Exception unused2) {
                        }
                    }
                }
            }
            fileInputStream.close();
        } else {
            byte[] bArr3 = new byte[20480];
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
            try {
                randomAccessFile.seek(0L);
                randomAccessFile.readFully(bArr3);
                messageDigest3.update(bArr3, 0, 20480);
                randomAccessFile.seek(length / 3);
                randomAccessFile.readFully(bArr3);
                messageDigest3.update(bArr3, 0, 20480);
                randomAccessFile.seek(length - 20480);
                randomAccessFile.readFully(bArr3);
                messageDigest3.update(bArr3, 0, 20480);
                randomAccessFile.close();
            } catch (Throwable th3) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th4) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th3, th4);
                    } catch (Exception unused3) {
                    }
                }
                throw th3;
            }
        }
        return new ba.h(strE, e(messageDigest3.digest()), i10);
    }

    public static void g(String str, int i10, int i11, boolean z) {
        if (!z) {
            throw new IllegalArgumentException(android.support.v4.media.session.b.y(str, Integer.valueOf(i10), Integer.valueOf(i11)));
        }
    }

    public static void h(String str, int i10, boolean z) {
        if (!z) {
            throw new IllegalArgumentException(android.support.v4.media.session.b.y(str, Integer.valueOf(i10)));
        }
    }

    public static void i(String str, boolean z) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void j(String str, boolean z, long j10) {
        if (!z) {
            throw new IllegalArgumentException(android.support.v4.media.session.b.y(str, Long.valueOf(j10)));
        }
    }

    public static void k(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static void l(boolean z, String str, Comparable comparable) {
        if (!z) {
            throw new IllegalArgumentException(android.support.v4.media.session.b.y(str, comparable));
        }
    }

    public static void m(int i10, int i11) {
        String strY;
        if (i10 < 0 || i10 >= i11) {
            if (i10 < 0) {
                strY = android.support.v4.media.session.b.y("%s (%s) must not be negative", "index", Integer.valueOf(i10));
            } else {
                if (i11 < 0) {
                    throw new IllegalArgumentException(da.b.a(i11, "negative size: "));
                }
                strY = android.support.v4.media.session.b.y("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i10), Integer.valueOf(i11));
            }
            throw new IndexOutOfBoundsException(strY);
        }
    }

    public static void n(Object obj) {
        obj.getClass();
    }

    public static void o(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static void p(int i10, int i11) {
        if (i10 < 0 || i10 > i11) {
            throw new IndexOutOfBoundsException(b(i10, i11, "index"));
        }
    }

    public static void q(int i10, int i11, int i12) {
        if (i10 < 0 || i11 < i10 || i11 > i12) {
            throw new IndexOutOfBoundsException((i10 < 0 || i10 > i12) ? b(i10, i12, "start index") : (i11 < 0 || i11 > i12) ? b(i11, i12, "end index") : android.support.v4.media.session.b.y("end index (%s) must not be less than start index (%s)", Integer.valueOf(i11), Integer.valueOf(i10)));
        }
    }

    public static void r(int i10) {
        if (2 > i10 || i10 >= 37) {
            StringBuilder sbN = g.b.n("radix ", i10, " was not in valid range ");
            sbN.append(new ye.c(2, 36));
            throw new IllegalArgumentException(sbN.toString());
        }
    }

    public static void s(String str, boolean z) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(str));
        }
    }

    public static void t(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static int u(int i10, int i11, int i12) {
        return i10 < i11 ? i11 : i10 > i12 ? i12 : i10;
    }

    public static void x(InputStream inputStream) throws IOException {
        while (inputStream.available() != 0) {
            try {
                inputStream.skip(inputStream.available());
            } catch (IOException unused) {
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long[] y(Serializable serializable) {
        if (!(serializable instanceof int[])) {
            if (serializable instanceof long[]) {
                return (long[]) serializable;
            }
            return null;
        }
        int[] iArr = (int[]) serializable;
        long[] jArr = new long[iArr.length];
        for (int i10 = 0; i10 < iArr.length; i10++) {
            jArr[i10] = iArr[i10];
        }
        return jArr;
    }

    public static void z(String str, String str2, String str3) throws Exception {
        for (File file : new File(str3).listFiles()) {
            String strM = ta.q.m(str, file.getPath(), d0.f.b(str2, "/"));
            if (file.isDirectory()) {
                String str4 = "mkdir -p '" + strM + "'";
                fa.b0.f5652a.getClass();
                if (w0.h(str4).f5648a != 0) {
                    throw new Exception("安装失败：创建目录失败");
                }
                if (w0.h("chmod 755 '" + strM + "'").f5648a != 0) {
                    throw new Exception("安装失败：更改目录权限失败");
                }
                z(str, str2, file.getPath());
            } else if (!file.getName().equals("logo.png") && !file.getName().equals("AndroidManifest.json")) {
                w0 w0Var = fa.b0.f5652a;
                String str5 = "\\cp -R '" + file.getPath() + "' '" + strM + "'";
                w0Var.getClass();
                if (w0.h(str5).f5648a != 0) {
                    throw new Exception("安装失败：写入文件出错");
                }
                if (w0.h("chmod 644 '" + strM + "'").f5648a != 0) {
                    throw new Exception("安装失败：更改文件权限失败");
                }
            }
        }
    }

    public int O(View view) {
        return 0;
    }

    public int P() {
        return 0;
    }

    public abstract void S(Throwable th2);

    public abstract void T(w0 w0Var);

    public abstract void V(int i10);

    public abstract void W(View view, int i10, int i11);

    public abstract void X(View view, float f10, float f11);

    public abstract boolean c0(int i10, View view);

    public abstract int v(int i10, View view);

    public abstract int w(int i10, View view);

    public void U(int i10, View view) {
    }
}
