package android.support.v4.media.session;

import a1.i;
import a2.k1;
import a2.m;
import a2.n0;
import a2.w0;
import android.animation.LayoutTransition;
import android.app.ActionBar;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Debug;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.CompoundButton;
import b1.w;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.autolink.app.vehiclemanager.data.VehiclePropertyKey;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.PssBean;
import com.yunpan.appmanage.carsdk.g0;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import da.g;
import f5.e;
import h4.b0;
import h4.c0;
import ha.d4;
import ha.u9;
import ha.ze;
import j$.nio.charset.StandardCharsets;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.Inflater;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import l2.l;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import q.h0;
import rc.f;
import u1.f0;
import u1.q;
import x0.a1;
import x0.b1;
import x0.o;
import x9.w3;
import z7.s;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static Field f757a = null;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f758b = false;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f759c = true;

    /* renamed from: d, reason: collision with root package name */
    public static Field f760d = null;

    /* renamed from: e, reason: collision with root package name */
    public static boolean f761e = false;

    /* renamed from: f, reason: collision with root package name */
    public static Class f762f = null;

    /* renamed from: g, reason: collision with root package name */
    public static boolean f763g = false;

    /* renamed from: h, reason: collision with root package name */
    public static Field f764h = null;

    /* renamed from: i, reason: collision with root package name */
    public static boolean f765i = false;

    /* renamed from: j, reason: collision with root package name */
    public static Field f766j = null;

    /* renamed from: k, reason: collision with root package name */
    public static boolean f767k = false;
    public static boolean l = false;

    /* renamed from: m, reason: collision with root package name */
    public static Method f768m = null;

    /* renamed from: n, reason: collision with root package name */
    public static boolean f769n = false;

    /* renamed from: o, reason: collision with root package name */
    public static Field f770o;

    public static void A(RandomAccessFile randomAccessFile, FileOutputStream fileOutputStream, long j10) throws IOException {
        byte[] bArr = new byte[8162];
        while (j10 > 8162) {
            randomAccessFile.read(bArr);
            fileOutputStream.write(bArr);
            j10 -= 8162;
        }
        if (j10 != 0) {
            byte[] bArr2 = new byte[(int) j10];
            randomAccessFile.read(bArr2);
            fileOutputStream.write(bArr2);
        }
        fileOutputStream.flush();
    }

    public static h1.b B(MappedByteBuffer mappedByteBuffer) throws IOException {
        long j10;
        ByteBuffer byteBufferDuplicate = mappedByteBuffer.duplicate();
        byteBufferDuplicate.order(ByteOrder.BIG_ENDIAN);
        byteBufferDuplicate.position(byteBufferDuplicate.position() + 4);
        int i10 = byteBufferDuplicate.getShort() & HPKE.aead_EXPORT_ONLY;
        if (i10 > 100) {
            throw new IOException("Cannot read metadata.");
        }
        byteBufferDuplicate.position(byteBufferDuplicate.position() + 6);
        int i11 = 0;
        while (true) {
            if (i11 >= i10) {
                j10 = -1;
                break;
            }
            int i12 = byteBufferDuplicate.getInt();
            byteBufferDuplicate.position(byteBufferDuplicate.position() + 4);
            j10 = byteBufferDuplicate.getInt() & 4294967295L;
            byteBufferDuplicate.position(byteBufferDuplicate.position() + 4);
            if (1835365473 == i12) {
                break;
            }
            i11++;
        }
        if (j10 != -1) {
            byteBufferDuplicate.position(byteBufferDuplicate.position() + ((int) (j10 - byteBufferDuplicate.position())));
            byteBufferDuplicate.position(byteBufferDuplicate.position() + 12);
            long j11 = byteBufferDuplicate.getInt() & 4294967295L;
            for (int i13 = 0; i13 < j11; i13++) {
                int i14 = byteBufferDuplicate.getInt();
                long j12 = byteBufferDuplicate.getInt() & 4294967295L;
                byteBufferDuplicate.getInt();
                if (1164798569 == i14 || 1701669481 == i14) {
                    byteBufferDuplicate.position((int) (j12 + j10));
                    h1.b bVar = new h1.b();
                    byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
                    int iPosition = byteBufferDuplicate.position() + byteBufferDuplicate.getInt(byteBufferDuplicate.position());
                    bVar.f6323d = byteBufferDuplicate;
                    bVar.f6320a = iPosition;
                    int i15 = iPosition - byteBufferDuplicate.getInt(iPosition);
                    bVar.f6321b = i15;
                    bVar.f6322c = ((ByteBuffer) bVar.f6323d).getShort(i15);
                    return bVar;
                }
            }
        }
        throw new IOException("Cannot read metadata.");
    }

    public static void C(List list, ud.c cVar) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((ud.c) it.next()).f16104a == cVar.f16104a) {
                it.remove();
            }
        }
        list.add(cVar);
    }

    public static TypedValue D(Context context, int i10) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i10, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static boolean E(Context context, int i10, boolean z) {
        TypedValue typedValueD = D(context, i10);
        return (typedValueD == null || typedValueD.type != 18) ? z : typedValueD.data != 0;
    }

    public static TypedValue F(Context context, String str, int i10) {
        TypedValue typedValueD = D(context, i10);
        if (typedValueD != null) {
            return typedValueD;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i10)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void G(CompoundButton compoundButton, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            b1.b.c(compoundButton, colorStateList);
        } else {
            ((w) compoundButton).setSupportButtonTintList(colorStateList);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0067, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean H(l lVar, boolean z) {
        int i10;
        q qVar = new q(16);
        boolean z4 = true;
        while (true) {
            qVar.L(8);
            if (!lVar.c(qVar.f15266a, 0, 8, true)) {
                return false;
            }
            long jD = qVar.D();
            int iO = qVar.o();
            if (jD != 1) {
                i10 = 8;
            } else {
                if (!lVar.c(qVar.f15266a, 8, 8, true)) {
                    return false;
                }
                jD = qVar.H();
                i10 = 16;
            }
            long j10 = i10;
            if (jD < j10) {
                return false;
            }
            int i11 = (int) (jD - j10);
            if (z4) {
                if (iO != 1718909296 || i11 < 8) {
                    break;
                }
                qVar.L(4);
                lVar.c(qVar.f15266a, 0, 4, false);
                if (qVar.o() != 1751476579) {
                    return false;
                }
                if (!z) {
                    return true;
                }
                lVar.k(i11 - 4, false);
                z4 = false;
            } else {
                if (iO == 1836086884) {
                    return true;
                }
                if (i11 != 0) {
                    lVar.k(i11, false);
                }
            }
        }
    }

    public static void I(ViewGroup viewGroup, boolean z) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            viewGroup.suppressLayout(z);
            return;
        }
        boolean z4 = false;
        if (i10 >= 18) {
            if (f759c) {
                try {
                    viewGroup.suppressLayout(z);
                    return;
                } catch (NoSuchMethodError unused) {
                    f759c = false;
                    return;
                }
            }
            return;
        }
        if (com.bumptech.glide.c.f3287a == null) {
            b0 b0Var = new b0();
            com.bumptech.glide.c.f3287a = b0Var;
            b0Var.setAnimator(2, null);
            com.bumptech.glide.c.f3287a.setAnimator(0, null);
            com.bumptech.glide.c.f3287a.setAnimator(1, null);
            com.bumptech.glide.c.f3287a.setAnimator(3, null);
            com.bumptech.glide.c.f3287a.setAnimator(4, null);
        }
        if (z) {
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null) {
                if (layoutTransition.isRunning()) {
                    if (!com.bumptech.glide.c.f3291e) {
                        try {
                            Method declaredMethod = LayoutTransition.class.getDeclaredMethod("cancel", null);
                            com.bumptech.glide.c.f3290d = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException unused2) {
                        }
                        com.bumptech.glide.c.f3291e = true;
                    }
                    Method method = com.bumptech.glide.c.f3290d;
                    if (method != null) {
                        try {
                            method.invoke(layoutTransition, null);
                        } catch (IllegalAccessException | InvocationTargetException unused3) {
                        }
                    }
                }
                if (layoutTransition != com.bumptech.glide.c.f3287a) {
                    viewGroup.setTag(R.id.transition_layout_save, layoutTransition);
                }
            }
            viewGroup.setLayoutTransition(com.bumptech.glide.c.f3287a);
            return;
        }
        viewGroup.setLayoutTransition(null);
        if (!com.bumptech.glide.c.f3289c) {
            try {
                Field declaredField = ViewGroup.class.getDeclaredField("mLayoutSuppressed");
                com.bumptech.glide.c.f3288b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused4) {
            }
            com.bumptech.glide.c.f3289c = true;
        }
        Field field = com.bumptech.glide.c.f3288b;
        if (field != null) {
            try {
                boolean z10 = field.getBoolean(viewGroup);
                if (z10) {
                    try {
                        com.bumptech.glide.c.f3288b.setBoolean(viewGroup, false);
                    } catch (IllegalAccessException unused5) {
                    }
                }
                z4 = z10;
            } catch (IllegalAccessException unused6) {
            }
        }
        if (z4) {
            viewGroup.requestLayout();
        }
        LayoutTransition layoutTransition2 = (LayoutTransition) viewGroup.getTag(R.id.transition_layout_save);
        if (layoutTransition2 != null) {
            viewGroup.setTag(R.id.transition_layout_save, null);
            viewGroup.setLayoutTransition(layoutTransition2);
        }
    }

    public static int J(sh.c cVar) {
        long jU0 = p000if.a.u0(p000if.a.v0(1000, cVar.f14574a), cVar.f14575b / 1000000);
        return (int) (jU0 > 0 ? Math.min(jU0, 2147483647L) : Math.max(jU0, -2147483648L));
    }

    public static String K(String str) throws UnsupportedEncodingException {
        if (str == null || str.isEmpty()) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        try {
            for (byte b10 : str.getBytes(HTTP.UTF_8)) {
                int i10 = b10 & 255;
                char c7 = (char) i10;
                if ((c7 < 'A' || c7 > 'Z') && ((c7 < 'a' || c7 > 'z') && !((c7 >= '0' && c7 <= '9') || c7 == '-' || c7 == '_' || c7 == '.' || c7 == '~'))) {
                    sb2.append(String.format("%%%02X", Integer.valueOf(i10)));
                } else {
                    sb2.append(c7);
                }
            }
            return sb2.toString();
        } catch (UnsupportedEncodingException e7) {
            throw new RuntimeException(e7);
        }
    }

    public static void L(b5.b bVar, int i10, long j10) {
        int iNumberOfTrailingZeros = 64 - Long.numberOfTrailingZeros(j10);
        if (iNumberOfTrailingZeros == 0) {
            iNumberOfTrailingZeros = 1;
        }
        int i11 = (iNumberOfTrailingZeros + 7) >> 3;
        long j11 = j10 >> (64 - (i11 * 8));
        bVar.i(i10 | ((i11 - 1) << 5));
        while (i11 > 0) {
            bVar.i((byte) j11);
            j11 >>= 8;
            i11--;
        }
    }

    public static void M(b5.b bVar, int i10, long j10) {
        int iNumberOfLeadingZeros = 64 - Long.numberOfLeadingZeros(j10);
        if (iNumberOfLeadingZeros == 0) {
            iNumberOfLeadingZeros = 1;
        }
        int i11 = (iNumberOfLeadingZeros + 7) >> 3;
        bVar.i(i10 | ((i11 - 1) << 5));
        while (i11 > 0) {
            bVar.i((byte) j10);
            j10 >>= 8;
            i11--;
        }
    }

    public static void a(RandomAccessFile randomAccessFile, FileOutputStream fileOutputStream) throws n0, IOException {
        long length;
        long j10;
        ByteBuffer byteBuffer;
        boolean z;
        ArrayList arrayList;
        long length2 = randomAccessFile.length();
        int i10 = length2 > 65557 ? 65557 : (int) length2;
        byte[] bArr = new byte[i10];
        long j11 = i10;
        randomAccessFile.seek(randomAccessFile.length() - j11);
        randomAccessFile.readFully(bArr);
        int i11 = i10 - 4;
        while (true) {
            if (i11 < 0) {
                length = -1;
                break;
            } else {
                if ((bArr[i11] & 255) == 80 && (bArr[i11 + 1] & 255) == 75 && (bArr[i11 + 2] & 255) == 5 && (bArr[i11 + 3] & 255) == 6) {
                    length = ((randomAccessFile.length() - j11) + i11) - 4;
                    break;
                }
                i11--;
            }
        }
        if (length == -1) {
            throw new n0("No end-of-central-directory found");
        }
        randomAccessFile.seek(10 + length);
        byte[] bArr2 = new byte[10];
        randomAccessFile.read(bArr2);
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr2);
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        ByteBuffer byteBufferOrder = byteBufferWrap.order(byteOrder);
        int i12 = byteBufferOrder.getShort() & HPKE.aead_EXPORT_ONLY;
        byteBufferOrder.getInt();
        long j12 = byteBufferOrder.getInt() & 4294967295L;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        randomAccessFile.seek(j12);
        byte[] bArr3 = new byte[46];
        ByteBuffer byteBufferOrder2 = ByteBuffer.wrap(bArr3).order(byteOrder);
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i14 < i12) {
            long filePointer = randomAccessFile.getFilePointer();
            randomAccessFile.read(bArr3);
            if (byteBufferOrder2.getInt(i13) != 33639248) {
                throw new n0("assumed central directory entry at " + filePointer + " doesn't start with a signature");
            }
            int i16 = byteBufferOrder2.getShort(28) & HPKE.aead_EXPORT_ONLY;
            int i17 = i12;
            int i18 = byteBufferOrder2.getShort(30) & HPKE.aead_EXPORT_ONLY;
            byte[] bArr4 = bArr3;
            int i19 = byteBufferOrder2.getShort(32) & HPKE.aead_EXPORT_ONLY;
            long j13 = j12;
            long j14 = byteBufferOrder2.getInt(42) & 4294967295L;
            int i20 = i15;
            long j15 = length;
            if (i20 != 0) {
                byteBuffer = byteBufferOrder2;
                j10 = filePointer;
                arrayList3.add(new y8.b(filePointer + 42, i20 + j14));
            } else {
                j10 = filePointer;
                byteBuffer = byteBufferOrder2;
            }
            byte[] bArr5 = new byte[i16];
            randomAccessFile.read(bArr5);
            if (new String(bArr5, StandardCharsets.UTF_8).endsWith(".so")) {
                randomAccessFile.seek(j14 + 26);
                ByteBuffer byteBufferOrder3 = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN);
                randomAccessFile.read(byteBufferOrder3.array());
                int i21 = byteBufferOrder3.getShort() & HPKE.aead_EXPORT_ONLY;
                int i22 = byteBufferOrder3.getShort() & HPKE.aead_EXPORT_ONLY;
                int i23 = (int) (((((j14 + 30) + i21) + i22) + i20) % 16384);
                int i24 = i23 == 0 ? 0 : 16384 - i23;
                int i25 = i20 + i24;
                if (i24 != 0) {
                    arrayList2.add(new y8.a(i24, j14 + 28, (short) (i22 + i24), i21 + i22));
                }
                z = true;
                i20 = i25;
            } else {
                z = false;
            }
            if (byteBuffer.getShort(10) != 0 || z) {
                arrayList = arrayList2;
            } else {
                randomAccessFile.seek(j14 + 26);
                ByteBuffer byteBufferOrder4 = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN);
                randomAccessFile.read(byteBufferOrder4.array());
                int i26 = byteBufferOrder4.getShort() & HPKE.aead_EXPORT_ONLY;
                int i27 = byteBufferOrder4.getShort() & HPKE.aead_EXPORT_ONLY;
                arrayList = arrayList2;
                int i28 = (int) (((((j14 + 30) + i26) + i27) + i20) % 4);
                int i29 = i28 == 0 ? 0 : 4 - i28;
                i20 += i29;
                if (i29 != 0) {
                    arrayList.add(new y8.a(i29, j14 + 28, (short) (i27 + i29), i26 + i27));
                }
            }
            i15 = i20;
            randomAccessFile.seek(j10 + 46 + i16 + i18 + i19);
            i14++;
            byteBufferOrder2 = byteBuffer;
            arrayList2 = arrayList;
            i12 = i17;
            bArr3 = bArr4;
            j12 = j13;
            length = j15;
            i13 = 0;
        }
        ArrayList arrayList4 = arrayList2;
        long j16 = j12;
        long j17 = length;
        int i30 = i15;
        randomAccessFile.seek(0L);
        if (arrayList4.size() != 0) {
            Iterator it = arrayList4.iterator();
            while (it.hasNext()) {
                y8.a aVar = (y8.a) it.next();
                long j18 = aVar.f18975b;
                if (j18 != 0) {
                    A(randomAccessFile, fileOutputStream, j18 - randomAccessFile.getFilePointer());
                }
                short s8 = aVar.f18976c;
                fileOutputStream.write(s8 & 255);
                fileOutputStream.write((s8 >>> 8) & 255);
                randomAccessFile.readShort();
                A(randomAccessFile, fileOutputStream, aVar.f18977d);
                fileOutputStream.write(new byte[aVar.f18974a]);
                fileOutputStream.flush();
            }
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                y8.b bVar = (y8.b) it2.next();
                A(randomAccessFile, fileOutputStream, bVar.f18978a - randomAccessFile.getFilePointer());
                long j19 = bVar.f18979b;
                fileOutputStream.write((int) (255 & j19));
                fileOutputStream.write(((int) (j19 >>> 8)) & 255);
                fileOutputStream.write(((int) (j19 >>> 16)) & 255);
                fileOutputStream.write(((int) (j19 >>> 24)) & 255);
                randomAccessFile.readInt();
            }
            A(randomAccessFile, fileOutputStream, (j17 + 16) - randomAccessFile.getFilePointer());
            long j20 = j16 + i30;
            fileOutputStream.write((int) (255 & j20));
            fileOutputStream.write(((int) (j20 >>> 8)) & 255);
            fileOutputStream.write(((int) (j20 >>> 16)) & 255);
            fileOutputStream.write(((int) (j20 >>> 24)) & 255);
            randomAccessFile.readInt();
            A(randomAccessFile, fileOutputStream, randomAccessFile.length() - randomAccessFile.getFilePointer());
            return;
        }
        byte[] bArr6 = new byte[8192];
        while (true) {
            int i31 = randomAccessFile.read(bArr6);
            if (-1 == i31) {
                return;
            } else {
                fileOutputStream.write(bArr6, 0, i31);
            }
        }
    }

    public static String b(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bArr) {
            sb2.append(String.format("%02x", Byte.valueOf(b10)));
        }
        return sb2.toString();
    }

    public static void c(File file, File file2) throws Exception {
        String str;
        boolean zCanRead;
        str = "无权限写入此(目录/文件)";
        try {
            zCanRead = file.canRead();
        } catch (SecurityException | Exception unused) {
            zCanRead = false;
        }
        if (!zCanRead || !a0.c(file2.getParentFile())) {
            w0 w0Var = fa.b0.f5652a;
            String absolutePath = file.getAbsolutePath();
            String absolutePath2 = file2.getAbsolutePath();
            w0Var.getClass();
            w0.z(absolutePath, absolutePath2);
            return;
        }
        if (file2.exists()) {
            fa.b0.f5652a.getClass();
            w0.A(file2);
        }
        try {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file2);
                    try {
                        byte[] bArr = new byte[PKIFailureInfo.badSenderNonce];
                        while (true) {
                            int i10 = fileInputStream.read(bArr);
                            if (i10 == -1) {
                                fileOutputStream.close();
                                fileInputStream.close();
                                return;
                            }
                            fileOutputStream.write(bArr, 0, i10);
                        }
                    } catch (Throwable th2) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th3) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                            } catch (Exception unused2) {
                            }
                        }
                        throw th2;
                    }
                } catch (Throwable th4) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th5) {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                    }
                    throw th4;
                }
            } catch (FileNotFoundException | SecurityException unused3) {
                throw new Exception(str);
            }
        } catch (Exception e7) {
            String strZ = g.b.z(e7, new StringBuilder(""));
            str = strZ.contains("ermission denied") ? "无权限写入此(目录/文件)" : strZ.contains("ead-only file system") ? "失败：无权限，系统文件" : strZ;
            if (str.isEmpty()) {
                str = "失败：未知错误";
            }
            throw new Exception(str);
        }
    }

    public static boolean d(View view, KeyEvent keyEvent) {
        WeakReference weakReference;
        ArrayList arrayList;
        int size;
        int iIndexOfKey;
        WeakHashMap weakHashMap = b1.f17953a;
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList arrayList2 = a1.f17947d;
        a1 a1Var = (a1) view.getTag(R.id.tag_unhandled_key_event_manager);
        if (a1Var == null) {
            a1Var = new a1();
            view.setTag(R.id.tag_unhandled_key_event_manager, a1Var);
        }
        WeakReference weakReference2 = a1Var.f17950c;
        if (weakReference2 != null && weakReference2.get() == keyEvent) {
            return false;
        }
        a1Var.f17950c = new WeakReference(keyEvent);
        if (a1Var.f17949b == null) {
            a1Var.f17949b = new SparseArray();
        }
        SparseArray sparseArray = a1Var.f17949b;
        if (keyEvent.getAction() != 1 || (iIndexOfKey = sparseArray.indexOfKey(keyEvent.getKeyCode())) < 0) {
            weakReference = null;
        } else {
            weakReference = (WeakReference) sparseArray.valueAt(iIndexOfKey);
            sparseArray.removeAt(iIndexOfKey);
        }
        if (weakReference == null) {
            weakReference = (WeakReference) sparseArray.get(keyEvent.getKeyCode());
        }
        if (weakReference == null) {
            return false;
        }
        View view2 = (View) weakReference.get();
        if (view2 == null || !b1.l(view2) || (arrayList = (ArrayList) view2.getTag(R.id.tag_unhandled_key_listeners)) == null || (size = arrayList.size() - 1) < 0) {
            return true;
        }
        arrayList.get(size).getClass();
        throw new ClassCastException();
    }

    public static boolean e(o oVar, View view, Window.Callback callback, KeyEvent keyEvent) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException, InvocationTargetException {
        DialogInterface.OnKeyListener onKeyListener;
        boolean zBooleanValue = false;
        if (oVar == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            return oVar.j(keyEvent);
        }
        if (!(callback instanceof Activity)) {
            if (!(callback instanceof Dialog)) {
                return (view != null && b1.c(view, keyEvent)) || oVar.j(keyEvent);
            }
            Dialog dialog = (Dialog) callback;
            if (!f769n) {
                try {
                    Field declaredField = Dialog.class.getDeclaredField("mOnKeyListener");
                    f770o = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException unused) {
                }
                f769n = true;
            }
            Field field = f770o;
            if (field != null) {
                try {
                    onKeyListener = (DialogInterface.OnKeyListener) field.get(dialog);
                } catch (IllegalAccessException unused2) {
                }
            } else {
                onKeyListener = null;
            }
            if (onKeyListener != null && onKeyListener.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
                return true;
            }
            Window window = dialog.getWindow();
            if (window.superDispatchKeyEvent(keyEvent)) {
                return true;
            }
            View decorView = window.getDecorView();
            if (b1.c(decorView, keyEvent)) {
                return true;
            }
            return keyEvent.dispatch(dialog, decorView != null ? decorView.getKeyDispatcherState() : null, dialog);
        }
        Activity activity = (Activity) callback;
        activity.onUserInteraction();
        Window window2 = activity.getWindow();
        if (window2.hasFeature(8)) {
            ActionBar actionBar = activity.getActionBar();
            if (keyEvent.getKeyCode() == 82 && actionBar != null) {
                if (!l) {
                    try {
                        f768m = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
                    } catch (NoSuchMethodException unused3) {
                    }
                    l = true;
                }
                Method method = f768m;
                if (method != null) {
                    try {
                        Object objInvoke = method.invoke(actionBar, keyEvent);
                        if (objInvoke != null) {
                            zBooleanValue = ((Boolean) objInvoke).booleanValue();
                        }
                    } catch (IllegalAccessException | InvocationTargetException unused4) {
                    }
                }
                if (zBooleanValue) {
                    return true;
                }
            }
        }
        if (window2.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView2 = window2.getDecorView();
        if (b1.c(decorView2, keyEvent)) {
            return true;
        }
        return keyEvent.dispatch(activity, decorView2 != null ? decorView2.getKeyDispatcherState() : null, activity);
    }

    public static void f(AccService accService, s sVar, int i10) {
        if (i10 == 5500) {
            int iE = sVar.o("value").e();
            if (iE == -1) {
                iE = g0.f3810a.f3814c.getInt(VehiclePropertyKey.KeyVehiclePropertyMirrorHold.getValue()) == 0 ? 1 : 0;
            } else if (g0.f3810a.f3814c.getInt(VehiclePropertyKey.KeyVehiclePropertyMirrorHold.getValue()) == iE) {
                return;
            }
            g0.f3810a.f3814c.setIntData(VehiclePropertyKey.KeyVehiclePropertyMirrorHold.getValue(), iE, accService.getPackageName());
            return;
        }
        if (i10 == 5501) {
            int iE2 = sVar.o("value").e();
            if (iE2 == -1) {
                iE2 = g0.f3810a.f3814c.getInt(VehiclePropertyKey.KeyVehiclePropertyPlg.getValue()) == 0 ? 1 : 0;
            } else if (g0.f3810a.f3814c.getInt(VehiclePropertyKey.KeyVehiclePropertyPlg.getValue()) == iE2) {
                return;
            }
            g0.f3810a.f3814c.setIntData(VehiclePropertyKey.KeyVehiclePropertyPlg.getValue(), iE2, accService.getPackageName());
        }
    }

    public static void g(Object obj) throws NoSuchFieldException, SecurityException {
        LongSparseArray longSparseArray;
        if (!f763g) {
            try {
                f762f = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException unused) {
            }
            f763g = true;
        }
        Class cls = f762f;
        if (cls == null) {
            return;
        }
        if (!f765i) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f764h = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused2) {
            }
            f765i = true;
        }
        Field field = f764h;
        if (field == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException unused3) {
            longSparseArray = null;
        }
        if (longSparseArray != null) {
            h0.a(longSparseArray);
        }
    }

    public static String h(String str, String str2, String str3, String str4, HashMap map, HashMap map2, String str5) throws NoSuchAlgorithmException, InvalidKeyException, UnsupportedEncodingException {
        TreeMap treeMap = new TreeMap();
        for (Map.Entry entry : map.entrySet()) {
            treeMap.put(((String) entry.getKey()).toLowerCase(), (String) entry.getValue());
        }
        TreeMap treeMap2 = new TreeMap();
        for (Map.Entry entry2 : map2.entrySet()) {
            treeMap2.put(((String) entry2.getKey()).toLowerCase(), ((String) entry2.getValue()).trim().replaceAll("\\s+", " "));
        }
        Set setKeySet = treeMap.keySet();
        StringBuilder sb2 = new StringBuilder();
        Iterator it = setKeySet.iterator();
        if (it.hasNext()) {
            while (true) {
                sb2.append((CharSequence) it.next());
                if (!it.hasNext()) {
                    break;
                }
                sb2.append((CharSequence) ";");
            }
        }
        String string = sb2.toString();
        Set setKeySet2 = treeMap2.keySet();
        StringBuilder sb3 = new StringBuilder();
        Iterator it2 = setKeySet2.iterator();
        if (it2.hasNext()) {
            while (true) {
                sb3.append((CharSequence) it2.next());
                if (!it2.hasNext()) {
                    break;
                }
                sb3.append((CharSequence) ";");
            }
        }
        String string2 = sb3.toString();
        StringBuilder sb4 = new StringBuilder();
        sb4.append(str3.toLowerCase());
        sb4.append(SignParameters.NEW_LINE);
        String string3 = "/";
        if (str4 != null && !str4.isEmpty()) {
            String[] strArrSplit = str4.split("/", -1);
            StringBuilder sb5 = new StringBuilder();
            for (int i10 = 0; i10 < strArrSplit.length; i10++) {
                if (i10 > 0) {
                    sb5.append("/");
                }
                sb5.append(K(strArrSplit[i10]));
            }
            string3 = sb5.toString();
        }
        sb4.append(string3);
        sb4.append(SignParameters.NEW_LINE);
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry3 : treeMap.entrySet()) {
            arrayList.add(K((String) entry3.getKey()) + "=" + K((String) entry3.getValue()));
        }
        StringBuilder sb6 = new StringBuilder();
        Iterator it3 = arrayList.iterator();
        if (it3.hasNext()) {
            while (true) {
                sb6.append((CharSequence) it3.next());
                if (!it3.hasNext()) {
                    break;
                }
                sb6.append((CharSequence) "&");
            }
        }
        sb4.append(sb6.toString());
        sb4.append(SignParameters.NEW_LINE);
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry4 : treeMap2.entrySet()) {
            arrayList2.add(((String) entry4.getKey()) + "=" + K((String) entry4.getValue()));
        }
        StringBuilder sb7 = new StringBuilder();
        Iterator it4 = arrayList2.iterator();
        if (it4.hasNext()) {
            while (true) {
                sb7.append((CharSequence) it4.next());
                if (!it4.hasNext()) {
                    break;
                }
                sb7.append((CharSequence) "&");
            }
        }
        sb4.append(sb7.toString());
        sb4.append(SignParameters.NEW_LINE);
        Charset charset = StandardCharsets.UTF_8;
        SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(charset), "HmacSHA1");
        Mac mac = Mac.getInstance("HmacSHA1");
        mac.init(secretKeySpec);
        String strB = b(mac.doFinal(str5.getBytes(charset)));
        String strL = ta.q.l("sha1\n", str5, SignParameters.NEW_LINE, b(MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1).digest(sb4.toString().getBytes(charset))), SignParameters.NEW_LINE);
        SecretKeySpec secretKeySpec2 = new SecretKeySpec(strB.getBytes(charset), "HmacSHA1");
        Mac mac2 = Mac.getInstance("HmacSHA1");
        mac2.init(secretKeySpec2);
        String strB2 = b(mac2.doFinal(strL.getBytes(charset)));
        StringBuilder sb8 = new StringBuilder("q-sign-algorithm=sha1&q-ak=");
        sb8.append(str);
        sb8.append("&q-sign-time=");
        sb8.append(str5);
        sb8.append("&q-key-time=");
        a.C(sb8, str5, "&q-header-list=", string2, "&q-url-param-list=");
        return a.u(sb8, string, "&q-signature=", strB2);
    }

    public static Drawable i(CompoundButton compoundButton) throws NoSuchFieldException, SecurityException {
        if (Build.VERSION.SDK_INT >= 23) {
            return b1.c.a(compoundButton);
        }
        if (!f758b) {
            try {
                Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                f757a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f758b = true;
        }
        Field field = f757a;
        if (field != null) {
            try {
                return (Drawable) field.get(compoundButton);
            } catch (IllegalAccessException unused2) {
                f757a = null;
            }
        }
        return null;
    }

    public static int j(int[] iArr, int[] iArr2, int i10) {
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
                                                                        if (i10 == 10097) {
                                                                            return (iArr2[19] >> 5) & 3;
                                                                        }
                                                                        if (i10 == 10136) {
                                                                            return (iArr2[20] >> 1) & 1;
                                                                        }
                                                                        if (i10 != 10147) {
                                                                            return 0;
                                                                        }
                                                                        return iArr2[4] & 1;
                                                                }
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
    }

    public static long k(String str) {
        File file;
        boolean zCanRead;
        long jK = 0;
        try {
            file = new File(str);
        } catch (Exception e7) {
            e7.printStackTrace();
        }
        if (a0.f(file)) {
            try {
                zCanRead = file.canRead();
            } catch (SecurityException | Exception unused) {
                zCanRead = false;
            }
            if (zCanRead) {
                for (File file2 : file.listFiles()) {
                    jK += file2.isDirectory() ? k(file2.getAbsolutePath()) : file2.length();
                }
                return jK;
            }
        }
        return 0L;
    }

    public static int l(ArrayList arrayList, InputStream inputStream, k1 k1Var) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new o5.w(inputStream, k1Var);
        }
        inputStream.mark(5242880);
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                int iD = ((e) arrayList.get(i10)).d(inputStream, k1Var);
                if (iD != -1) {
                    return iD;
                }
            } finally {
                inputStream.reset();
            }
        }
        return -1;
    }

    public static i m(ViewGroup viewGroup) {
        if (Build.VERSION.SDK_INT >= 18) {
            return new i(viewGroup);
        }
        ViewGroup viewGroup2 = viewGroup;
        while (true) {
            if (viewGroup2 == null) {
                viewGroup2 = null;
                break;
            }
            if (viewGroup2.getId() == 16908290) {
                break;
            }
            if (viewGroup2.getParent() instanceof ViewGroup) {
                viewGroup2 = (ViewGroup) viewGroup2.getParent();
            }
        }
        if (viewGroup2 == null) {
            return null;
        }
        int childCount = viewGroup2.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup2.getChildAt(i10);
            if (childAt instanceof c0) {
                return ((c0) childAt).f6420d;
            }
        }
        return new i(viewGroup2.getContext(), viewGroup2, viewGroup);
    }

    public static ImageHeaderParser$ImageType n(ArrayList arrayList, InputStream inputStream, k1 k1Var) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new o5.w(inputStream, k1Var);
        }
        inputStream.mark(5242880);
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeC = ((e) arrayList.get(i10)).c(inputStream);
                inputStream.reset();
                if (imageHeaderParser$ImageTypeC != ImageHeaderParser$ImageType.UNKNOWN) {
                    return imageHeaderParser$ImageTypeC;
                }
            } catch (Throwable th2) {
                inputStream.reset();
                throw th2;
            }
        }
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    public static ImageHeaderParser$ImageType o(ArrayList arrayList, ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeA = ((e) arrayList.get(i10)).a(byteBuffer);
                AtomicReference atomicReference = a6.c.f422a;
                if (imageHeaderParser$ImageTypeA != ImageHeaderParser$ImageType.UNKNOWN) {
                    return imageHeaderParser$ImageTypeA;
                }
            } catch (Throwable th2) {
                AtomicReference atomicReference2 = a6.c.f422a;
                throw th2;
            }
        }
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    public static ArrayList p(g gVar) {
        String str;
        long j10;
        int i10 = 1;
        ArrayList arrayList = new ArrayList();
        String str2 = AppStart.f3772h.getPackageName() + ":acc";
        HashMap map = new HashMap();
        ActivityManager activityManager = (ActivityManager) gVar.getSystemService("activity");
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
            int i11 = runningAppProcessInfo.pid;
            if (i11 >= i10 && map.get(Integer.valueOf(i11)) == null) {
                map.put(Integer.valueOf(runningAppProcessInfo.pid), Integer.valueOf(i10));
                PssBean pssBean = new PssBean();
                pssBean.pid = String.valueOf(runningAppProcessInfo.pid);
                Debug.MemoryInfo[] processMemoryInfo = activityManager.getProcessMemoryInfo(new int[]{runningAppProcessInfo.pid});
                if (processMemoryInfo == null || processMemoryInfo.length <= 0) {
                    str = "服务";
                    j10 = 0;
                } else {
                    int totalPss = processMemoryInfo[0].getTotalPss();
                    str = "服务";
                    j10 = totalPss;
                }
                pssBean.pss = j10;
                pssBean.pss_str = p000if.a.l0(j10);
                pssBean.pack_str = runningAppProcessInfo.processName;
                System.out.getClass();
                String strSubstring = pssBean.pack_str;
                int iIndexOf = strSubstring.indexOf(":");
                if (iIndexOf != -1) {
                    strSubstring = strSubstring.substring(0, iIndexOf);
                    pssBean.process_name = pssBean.pack_str.substring(iIndexOf + 1) + "进程";
                    if (pssBean.pack_str.equals(str2)) {
                        pssBean.process_name = "自动化任务";
                    }
                } else {
                    int iIndexOf2 = strSubstring.indexOf("@");
                    if (iIndexOf2 != -1) {
                        strSubstring = strSubstring.substring(0, iIndexOf2);
                        pssBean.process_name = pssBean.pack_str.substring(iIndexOf2 + 1) + str;
                    } else {
                        pssBean.process_name = "主程序";
                    }
                }
                AppBean appBeanK = a.k(strSubstring);
                if (appBeanK != null) {
                    pssBean.name = appBeanK.name;
                    pssBean.pack = appBeanK.pack;
                    pssBean.isCanStarted = appBeanK.isCanStart;
                } else {
                    DecimalFormat decimalFormat = k.f4034u0;
                    k kVar = j.f4033a;
                    if (strSubstring.startsWith(kVar.f4041d)) {
                        pssBean.name = kVar.f4039c;
                        pssBean.pack = kVar.f4041d;
                        long j11 = pssBean.pss;
                        if (j11 > 70000) {
                            pssBean.pss = j11 - 10240;
                        }
                        pssBean.pss_str = p000if.a.l0(pssBean.pss);
                        pssBean.isCanStarted = true;
                    }
                }
                arrayList.add(pssBean);
                i10 = 1;
            }
        }
        for (ActivityManager.RunningServiceInfo runningServiceInfo : activityManager.getRunningServices(Integer.MAX_VALUE)) {
            int i12 = runningServiceInfo.pid;
            if (i12 >= 1 && map.get(Integer.valueOf(i12)) == null) {
                map.put(Integer.valueOf(runningServiceInfo.pid), 1);
                PssBean pssBean2 = new PssBean();
                pssBean2.pid = String.valueOf(runningServiceInfo.pid);
                Debug.MemoryInfo[] processMemoryInfo2 = activityManager.getProcessMemoryInfo(new int[]{runningServiceInfo.pid});
                long totalPss2 = (processMemoryInfo2 == null || processMemoryInfo2.length <= 0) ? 0L : processMemoryInfo2[0].getTotalPss();
                pssBean2.pss = totalPss2;
                pssBean2.pss_str = p000if.a.l0(totalPss2);
                String packageName = runningServiceInfo.service.getPackageName();
                pssBean2.pack_str = packageName;
                int iIndexOf3 = packageName.indexOf(":");
                if (iIndexOf3 != -1) {
                    packageName = packageName.substring(0, iIndexOf3);
                    pssBean2.process_name = pssBean2.pack_str.substring(iIndexOf3 + 1) + "进程";
                    if (pssBean2.pack_str.equals(str2)) {
                        pssBean2.process_name = "自动化任务";
                    }
                } else {
                    int iIndexOf4 = packageName.indexOf("@");
                    if (iIndexOf4 != -1) {
                        packageName = packageName.substring(0, iIndexOf4);
                        pssBean2.process_name = pssBean2.pack_str.substring(iIndexOf4 + 1) + "服务";
                    } else {
                        pssBean2.process_name = "服务";
                    }
                }
                System.out.getClass();
                AppBean appBean = MyDb.get().getAppDao().get_appBean(packageName);
                if (appBean != null) {
                    pssBean2.name = appBean.name;
                    pssBean2.pack = appBean.pack;
                    pssBean2.isCanStarted = appBean.isCanStart;
                } else {
                    DecimalFormat decimalFormat2 = k.f4034u0;
                    k kVar2 = j.f4033a;
                    if (packageName.startsWith(kVar2.f4041d)) {
                        pssBean2.name = kVar2.f4039c;
                        pssBean2.pack = kVar2.f4041d;
                        long j12 = pssBean2.pss;
                        if (j12 > 70000) {
                            pssBean2.pss = j12 - 10240;
                        }
                        pssBean2.pss_str = p000if.a.l0(pssBean2.pss);
                        pssBean2.isCanStarted = true;
                    }
                    arrayList.add(pssBean2);
                }
                arrayList.add(pssBean2);
            }
        }
        Collections.sort(arrayList, new m(7));
        return arrayList;
    }

    public static ArrayList q() {
        ArrayList arrayList = new ArrayList();
        fa.b0.f5652a.getClass();
        if (!w0.N()) {
            return arrayList;
        }
        String str = AppStart.f3772h.getPackageName() + ":acc";
        fa.a0 a0VarQ = w0.q(25000L, "dumpsys -t 25000 meminfo");
        if (a0VarQ.f5648a != 0 && a0VarQ.a().contains("find service: -t")) {
            a0VarQ = w0.q(25000L, "dumpsys meminfo");
        }
        String strReplaceAll = a0VarQ.a().replaceAll(" ", "");
        if (!strReplaceAll.contains("TotalPSSbyprocess")) {
            return arrayList;
        }
        Matcher matcher = Pattern.compile("([0-9]{1,}).*?:(.*?)\\(pid([0-9]{1,})").matcher(p000if.a.N(strReplaceAll, "TotalPSSbyprocess:", "TotalPSS", false).replace(SignParameters.NEW_LINE, "").replace(",", ""));
        while (matcher.find()) {
            try {
                PssBean pssBean = new PssBean();
                pssBean.pid = matcher.group(3);
                long jLongValue = Long.valueOf(matcher.group(1)).longValue();
                pssBean.pss = jLongValue;
                pssBean.pss_str = p000if.a.l0(jLongValue);
                pssBean.pack_str = matcher.group(2);
                if (pssBean.pss > 163840 && AppStart.f3772h.getPackageName().startsWith(pssBean.pack_str)) {
                    long seconds = 163840 - (new Date().getSeconds() * 1024);
                    pssBean.pss = seconds;
                    pssBean.pss_str = p000if.a.l0(seconds);
                }
                if (!pssBean.pack_str.startsWith("/") && !pssBean.pack_str.equals("su") && pssBean.pack_str.indexOf(".") > 0) {
                    String strSubstring = pssBean.pack_str;
                    int iIndexOf = strSubstring.indexOf(":");
                    if (iIndexOf != -1) {
                        strSubstring = strSubstring.substring(0, iIndexOf);
                        pssBean.process_name = pssBean.pack_str.substring(iIndexOf + 1) + "进程";
                        if (pssBean.pack_str.equals(str)) {
                            pssBean.process_name = "自动化任务";
                        }
                    } else {
                        int iIndexOf2 = strSubstring.indexOf("@");
                        if (iIndexOf2 != -1) {
                            strSubstring = strSubstring.substring(0, iIndexOf2);
                            pssBean.process_name = pssBean.pack_str.substring(iIndexOf2 + 1) + "服务";
                        } else {
                            pssBean.process_name = "主程序";
                        }
                    }
                    AppBean appBean = MyDb.get().getAppDao().get_appBean(strSubstring);
                    if (appBean != null) {
                        pssBean.name = appBean.name;
                        pssBean.pack = appBean.pack;
                        pssBean.isCanStarted = appBean.isCanStart;
                    } else {
                        k kVar = j.f4033a;
                        if (strSubstring.startsWith(kVar.f4041d)) {
                            pssBean.name = kVar.f4039c;
                            pssBean.pack = kVar.f4041d;
                            long j10 = pssBean.pss;
                            if (j10 > 70000) {
                                pssBean.pss = j10 - 10240;
                            }
                            pssBean.pss_str = p000if.a.l0(pssBean.pss);
                            pssBean.isCanStarted = true;
                        }
                    }
                }
                arrayList.add(pssBean);
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        return arrayList;
    }

    public static String r(int i10, int i11, int i12) {
        StringBuilder sb2 = new StringBuilder(80);
        int i13 = (i11 ^ (-1)) & i10;
        int i14 = i10 & i11;
        if ((i14 & 1) != 0) {
            sb2.append("|public");
        }
        if ((i14 & 2) != 0) {
            sb2.append("|private");
        }
        if ((i14 & 4) != 0) {
            sb2.append("|protected");
        }
        if ((i14 & 8) != 0) {
            sb2.append("|static");
        }
        if ((i14 & 16) != 0) {
            sb2.append("|final");
        }
        if ((i14 & 32) != 0) {
            if (i12 == 1) {
                sb2.append("|super");
            } else {
                sb2.append("|synchronized");
            }
        }
        if ((i14 & 64) != 0) {
            if (i12 == 3) {
                sb2.append("|bridge");
            } else {
                sb2.append("|volatile");
            }
        }
        if ((i14 & 128) != 0) {
            if (i12 == 3) {
                sb2.append("|varargs");
            } else {
                sb2.append("|transient");
            }
        }
        if ((i14 & 256) != 0) {
            sb2.append("|native");
        }
        if ((i14 & 512) != 0) {
            sb2.append("|interface");
        }
        if ((i14 & 1024) != 0) {
            sb2.append("|abstract");
        }
        if ((i14 & 2048) != 0) {
            sb2.append("|strictfp");
        }
        if ((i14 & 4096) != 0) {
            sb2.append("|synthetic");
        }
        if ((i14 & 8192) != 0) {
            sb2.append("|annotation");
        }
        if ((i14 & 16384) != 0) {
            sb2.append("|enum");
        }
        if ((65536 & i14) != 0) {
            sb2.append("|constructor");
        }
        if ((i14 & 131072) != 0) {
            sb2.append("|declared_synchronized");
        }
        if (i13 != 0 || sb2.length() == 0) {
            sb2.append('|');
            sb2.append(qf.c.e0(i13));
        }
        return sb2.substring(1);
    }

    public static void s(Activity activity, Context context, u9 u9Var, w3 w3Var) {
        try {
            if (a0.j("/data/") < w3Var.f18367d * 2) {
                a0.u("应用分区剩余空间不足，请清理数据后再安装");
                return;
            }
        } catch (Exception unused) {
        }
        new mc.c(0, new d4(w3Var, 5)).d(f.f13757b).a(fc.b.a()).b(new ze((KeyEvent.Callback) activity, (Object) context, (Object) u9Var, 3));
    }

    public static boolean t(int i10) {
        if (i10 == 8 || i10 == 7) {
            return true;
        }
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 31 || !(i10 == 26 || i10 == 27)) {
            return i11 >= 33 && i10 == 30;
        }
        return true;
    }

    public static boolean u(int i10) {
        return i10 == 10;
    }

    public static boolean v(int i10) {
        return Build.VERSION.SDK_INT >= 31 && i10 == 29;
    }

    public static boolean w(int i10) {
        if (i10 == 11 || i10 == 12) {
            return true;
        }
        return Build.VERSION.SDK_INT >= 31 && i10 == 22;
    }

    public static String x(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        if (it == null) {
            return null;
        }
        if (!it.hasNext()) {
            return "";
        }
        Object next = it.next();
        if (!it.hasNext()) {
            if (next == null) {
                return null;
            }
            return next.toString();
        }
        StringBuilder sb2 = new StringBuilder(256);
        if (next != null) {
            sb2.append(next);
        }
        while (it.hasNext()) {
            sb2.append("|");
            Object next2 = it.next();
            if (next2 != null) {
                sb2.append(next2);
            }
        }
        return sb2.toString();
    }

    public static String y(String str, Object... objArr) {
        int iIndexOf;
        String string;
        String strValueOf = String.valueOf(str);
        int i10 = 0;
        for (int i11 = 0; i11 < objArr.length; i11++) {
            Object obj = objArr[i11];
            if (obj == null) {
                string = "null";
            } else {
                try {
                    string = obj.toString();
                } catch (Exception e7) {
                    String str2 = obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
                    Logger.getLogger("com.google.common.base.Strings").log(Level.WARNING, "Exception during lenientFormat for " + str2, (Throwable) e7);
                    StringBuilder sbD = da.b.d("<", str2, " threw ");
                    sbD.append(e7.getClass().getName());
                    sbD.append(">");
                    string = sbD.toString();
                }
            }
            objArr[i11] = string;
        }
        StringBuilder sb2 = new StringBuilder((objArr.length * 16) + strValueOf.length());
        int i12 = 0;
        while (i10 < objArr.length && (iIndexOf = strValueOf.indexOf("%s", i12)) != -1) {
            sb2.append((CharSequence) strValueOf, i12, iIndexOf);
            sb2.append(objArr[i10]);
            i12 = iIndexOf + 2;
            i10++;
        }
        sb2.append((CharSequence) strValueOf, i12, strValueOf.length());
        if (i10 < objArr.length) {
            sb2.append(" [");
            sb2.append(objArr[i10]);
            for (int i13 = i10 + 1; i13 < objArr.length; i13++) {
                sb2.append(", ");
                sb2.append(objArr[i13]);
            }
            sb2.append(']');
        }
        return sb2.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01b3 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ArrayList z(q qVar) {
        ArrayList arrayList;
        int i10;
        ArrayList arrayList2;
        k2.e eVar;
        q qVar2 = qVar;
        k2.e eVar2 = null;
        if (qVar.B() != 0) {
            return null;
        }
        qVar2.P(7);
        int iO = qVar.o();
        if (iO == 1684433976) {
            q qVar3 = new q();
            Inflater inflater = new Inflater(true);
            try {
                if (!f0.A(qVar2, qVar3, inflater)) {
                    return null;
                }
                inflater.end();
                qVar2 = qVar3;
            } finally {
                inflater.end();
            }
        } else if (iO != 1918990112) {
            return null;
        }
        ArrayList arrayList3 = new ArrayList();
        int i11 = qVar2.f15267b;
        int i12 = qVar2.f15268c;
        while (i11 < i12) {
            int iO2 = qVar2.o() + i11;
            if (iO2 > i11 && iO2 <= i12) {
                if (qVar2.o() == 1835365224) {
                    int iO3 = qVar2.o();
                    if (iO3 <= 10000) {
                        float[] fArr = new float[iO3];
                        for (int i13 = 0; i13 < iO3; i13++) {
                            fArr[i13] = qVar2.n();
                        }
                        int iO4 = qVar2.o();
                        if (iO4 <= 32000) {
                            double dLog = Math.log(2.0d);
                            arrayList2 = arrayList3;
                            double d10 = iO3;
                            Double.isNaN(d10);
                            int iCeil = (int) Math.ceil(Math.log(d10 * 2.0d) / dLog);
                            byte[] bArr = qVar2.f15266a;
                            j3.f fVar = new j3.f(bArr, bArr.length);
                            fVar.m(qVar2.f15267b * 8);
                            float[] fArr2 = new float[iO4 * 5];
                            int i14 = 5;
                            int[] iArr = new int[5];
                            int i15 = 0;
                            int i16 = 0;
                            while (true) {
                                if (i15 < iO4) {
                                    int i17 = 0;
                                    while (i17 < i14) {
                                        int i18 = iArr[i17];
                                        int iG = fVar.g(iCeil);
                                        int i19 = ((iG >> 1) ^ (-(iG & 1))) + i18;
                                        if (i19 >= iO3 || i19 < 0) {
                                            break;
                                        }
                                        fArr2[i16] = fArr[i19];
                                        iArr[i17] = i19;
                                        i17++;
                                        i16++;
                                        i14 = 5;
                                    }
                                    i15++;
                                    i14 = 5;
                                } else {
                                    fVar.m((fVar.e() + 7) & (-8));
                                    int i20 = 32;
                                    int iG2 = fVar.g(32);
                                    a9.a[] aVarArr = new a9.a[iG2];
                                    int i21 = 0;
                                    while (i21 < iG2) {
                                        int iG3 = fVar.g(8);
                                        int iG4 = fVar.g(8);
                                        int iG5 = fVar.g(i20);
                                        if (iG5 <= 128000) {
                                            i10 = i12;
                                            double d11 = iO4;
                                            Double.isNaN(d11);
                                            int iCeil2 = (int) Math.ceil(Math.log(d11 * 2.0d) / dLog);
                                            float[] fArr3 = new float[iG5 * 3];
                                            float[] fArr4 = new float[iG5 * 2];
                                            int i22 = 0;
                                            int i23 = 0;
                                            while (i22 < iG5) {
                                                int iG6 = fVar.g(iCeil2);
                                                j3.f fVar2 = fVar;
                                                float[] fArr5 = fArr4;
                                                int i24 = iG2;
                                                int i25 = ((iG6 >> 1) ^ (-(iG6 & 1))) + i23;
                                                if (i25 < 0 || i25 >= iO4) {
                                                    eVar = null;
                                                    break;
                                                }
                                                int i26 = i22 * 3;
                                                int i27 = i25 * 5;
                                                fArr3[i26] = fArr2[i27];
                                                fArr3[i26 + 1] = fArr2[i27 + 1];
                                                fArr3[i26 + 2] = fArr2[i27 + 2];
                                                int i28 = i22 * 2;
                                                fArr5[i28] = fArr2[i27 + 3];
                                                fArr5[i28 + 1] = fArr2[i27 + 4];
                                                i22++;
                                                i23 = i25;
                                                fVar = fVar2;
                                                fArr4 = fArr5;
                                                iG2 = i24;
                                            }
                                            aVarArr[i21] = new a9.a(iG3, fArr3, fArr4, iG4);
                                            i21++;
                                            i12 = i10;
                                            iG2 = iG2;
                                            i20 = 32;
                                        }
                                    }
                                    i10 = i12;
                                    eVar = new k2.e(aVarArr);
                                }
                            }
                            i10 = i12;
                            eVar = null;
                        }
                        if (eVar == null) {
                            arrayList = arrayList2;
                            arrayList.add(eVar);
                        }
                    }
                    eVar = eVar2;
                    arrayList2 = arrayList3;
                    i10 = i12;
                    if (eVar == null) {
                    }
                } else {
                    arrayList = arrayList3;
                    i10 = i12;
                }
                qVar2.O(iO2);
                arrayList3 = arrayList;
                i11 = iO2;
                i12 = i10;
                eVar2 = null;
            }
            return null;
        }
        return arrayList3;
    }
}
