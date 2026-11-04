package y3;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Build;
import ba.s;
import com.hsae.autosdk.p001os.SocConst;
import fa.v;
import j$.nio.charset.StandardCharsets;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.Executor;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.Inflater;

/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final s5.c f18902a = new s5.c(27);

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f18903b = {112, 114, 111, 0};

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f18904c = {112, 114, 109, 0};

    /* renamed from: d, reason: collision with root package name */
    public static final byte[] f18905d = {48, SocConst.Upgrade.CUPID_CMD, 53, 0};

    /* renamed from: e, reason: collision with root package name */
    public static final byte[] f18906e = {48, SocConst.Upgrade.CUPID_CMD, 48, 0};

    /* renamed from: f, reason: collision with root package name */
    public static final byte[] f18907f = {48, 48, 57, 0};

    /* renamed from: g, reason: collision with root package name */
    public static final byte[] f18908g = {48, 48, 53, 0};

    /* renamed from: h, reason: collision with root package name */
    public static final byte[] f18909h = {48, 48, SocConst.Upgrade.CUPID_CMD, 0};

    /* renamed from: i, reason: collision with root package name */
    public static final byte[] f18910i = {48, 48, SocConst.Upgrade.CUPID_CMD, 0};

    /* renamed from: j, reason: collision with root package name */
    public static final byte[] f18911j = {48, 48, SocConst.Upgrade.CUPID_DATA, 0};

    public static byte[] a(byte[] bArr) {
        Deflater deflater = new Deflater(1);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream, deflater);
            try {
                deflaterOutputStream.write(bArr);
                deflaterOutputStream.close();
                deflater.end();
                return byteArrayOutputStream.toByteArray();
            } catch (Throwable th2) {
                try {
                    deflaterOutputStream.close();
                } catch (Throwable th3) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                    } catch (Exception unused) {
                    }
                }
                throw th2;
            }
        } catch (Throwable th4) {
            deflater.end();
            throw th4;
        }
    }

    public static byte[] b(s[] sVarArr, byte[] bArr) throws IOException {
        int length = 0;
        for (s sVar : sVarArr) {
            length += ((((sVar.f2759g * 2) + 7) & (-8)) / 8) + (sVar.f2757e * 2) + d(sVar.f2753a, sVar.f2754b, bArr).getBytes(StandardCharsets.UTF_8).length + 16 + sVar.f2758f;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(length);
        if (Arrays.equals(bArr, f18907f)) {
            for (s sVar2 : sVarArr) {
                p(byteArrayOutputStream, sVar2, d(sVar2.f2753a, sVar2.f2754b, bArr));
                r(byteArrayOutputStream, sVar2);
                int[] iArr = (int[]) sVar2.f2760h;
                int length2 = iArr.length;
                int i10 = 0;
                int i11 = 0;
                while (i10 < length2) {
                    int i12 = iArr[i10];
                    u(byteArrayOutputStream, i12 - i11);
                    i10++;
                    i11 = i12;
                }
                q(byteArrayOutputStream, sVar2);
            }
        } else {
            for (s sVar3 : sVarArr) {
                p(byteArrayOutputStream, sVar3, d(sVar3.f2753a, sVar3.f2754b, bArr));
            }
            for (s sVar4 : sVarArr) {
                r(byteArrayOutputStream, sVar4);
                int[] iArr2 = (int[]) sVar4.f2760h;
                int length3 = iArr2.length;
                int i13 = 0;
                int i14 = 0;
                while (i13 < length3) {
                    int i15 = iArr2[i13];
                    u(byteArrayOutputStream, i15 - i14);
                    i13++;
                    i14 = i15;
                }
                q(byteArrayOutputStream, sVar4);
            }
        }
        if (byteArrayOutputStream.size() == length) {
            return byteArrayOutputStream.toByteArray();
        }
        throw new IllegalStateException("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + length);
    }

    public static boolean c(File file) {
        if (!file.isDirectory()) {
            file.delete();
            return true;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        boolean z = true;
        for (File file2 : fileArrListFiles) {
            z = c(file2) && z;
        }
        return z;
    }

    public static String d(String str, String str2, byte[] bArr) {
        byte[] bArr2 = f18909h;
        boolean zEquals = Arrays.equals(bArr, bArr2);
        byte[] bArr3 = f18908g;
        String str3 = (zEquals || Arrays.equals(bArr, bArr3)) ? ":" : "!";
        if (str.length() <= 0) {
            return "!".equals(str3) ? str2.replace(":", "!") : ":".equals(str3) ? str2.replace("!", ":") : str2;
        }
        if (str2.equals("classes.dex")) {
            return str;
        }
        if (str2.contains("!") || str2.contains(":")) {
            return "!".equals(str3) ? str2.replace(":", "!") : ":".equals(str3) ? str2.replace("!", ":") : str2;
        }
        if (str2.endsWith(".apk")) {
            return str2;
        }
        return g.b.l((Arrays.equals(bArr, bArr2) || Arrays.equals(bArr, bArr3)) ? ":" : "!", str2, g.b.m(str));
    }

    public static void e(PackageInfo packageInfo, File file) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(new File(file, "profileinstaller_profileWrittenFor_lastUpdateTime.dat")));
            try {
                dataOutputStream.writeLong(packageInfo.lastUpdateTime);
                dataOutputStream.close();
            } catch (Throwable th2) {
                try {
                    dataOutputStream.close();
                } catch (Throwable th3) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                    } catch (Exception unused) {
                    }
                }
                throw th2;
            }
        } catch (IOException unused2) {
        }
    }

    public static byte[] f(int i10, InputStream inputStream) throws IOException {
        byte[] bArr = new byte[i10];
        int i11 = 0;
        while (i11 < i10) {
            int i12 = inputStream.read(bArr, i11, i10 - i11);
            if (i12 < 0) {
                throw new IllegalStateException(da.b.a(i10, "Not enough bytes to read: "));
            }
            i11 += i12;
        }
        return bArr;
    }

    public static int[] g(ByteArrayInputStream byteArrayInputStream, int i10) {
        int[] iArr = new int[i10];
        int iM = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            iM += (int) m(2, byteArrayInputStream);
            iArr[i11] = iM;
        }
        return iArr;
    }

    public static byte[] h(FileInputStream fileInputStream, int i10, int i11) {
        Inflater inflater = new Inflater();
        try {
            byte[] bArr = new byte[i11];
            byte[] bArr2 = new byte[2048];
            int i12 = 0;
            int iInflate = 0;
            while (!inflater.finished() && !inflater.needsDictionary() && i12 < i10) {
                int i13 = fileInputStream.read(bArr2);
                if (i13 < 0) {
                    throw new IllegalStateException("Invalid zip data. Stream ended after $totalBytesRead bytes. Expected " + i10 + " bytes");
                }
                inflater.setInput(bArr2, 0, i13);
                try {
                    iInflate += inflater.inflate(bArr, iInflate, i11 - iInflate);
                    i12 += i13;
                } catch (DataFormatException e7) {
                    throw new IllegalStateException(e7.getMessage());
                }
            }
            if (i12 == i10) {
                if (inflater.finished()) {
                    return bArr;
                }
                throw new IllegalStateException("Inflater did not finish");
            }
            throw new IllegalStateException("Didn't read enough bytes during decompression. expected=" + i10 + " actual=" + i12);
        } finally {
            inflater.end();
        }
    }

    public static s[] i(FileInputStream fileInputStream, byte[] bArr, byte[] bArr2, s[] sVarArr) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        byte[] bArr3 = f18910i;
        if (!Arrays.equals(bArr, bArr3)) {
            if (!Arrays.equals(bArr, f18911j)) {
                throw new IllegalStateException("Unsupported meta version");
            }
            int iM = (int) m(2, fileInputStream);
            byte[] bArrH = h(fileInputStream, (int) m(4, fileInputStream), (int) m(4, fileInputStream));
            if (fileInputStream.read() > 0) {
                throw new IllegalStateException("Content found after the end of file");
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrH);
            try {
                s[] sVarArrK = k(byteArrayInputStream, bArr2, iM, sVarArr);
                byteArrayInputStream.close();
                return sVarArrK;
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
        if (Arrays.equals(f18905d, bArr2)) {
            throw new IllegalStateException("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
        }
        if (!Arrays.equals(bArr, bArr3)) {
            throw new IllegalStateException("Unsupported meta version");
        }
        int iM2 = (int) m(1, fileInputStream);
        byte[] bArrH2 = h(fileInputStream, (int) m(4, fileInputStream), (int) m(4, fileInputStream));
        if (fileInputStream.read() > 0) {
            throw new IllegalStateException("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArrH2);
        try {
            s[] sVarArrJ = j(byteArrayInputStream2, iM2, sVarArr);
            byteArrayInputStream2.close();
            return sVarArrJ;
        } catch (Throwable th4) {
            try {
                byteArrayInputStream2.close();
            } catch (Throwable th5) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                } catch (Exception unused2) {
                }
            }
            throw th4;
        }
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [int[], java.io.Serializable] */
    public static s[] j(ByteArrayInputStream byteArrayInputStream, int i10, s[] sVarArr) {
        if (byteArrayInputStream.available() == 0) {
            return new s[0];
        }
        if (i10 != sVarArr.length) {
            throw new IllegalStateException("Mismatched number of dex files found in metadata");
        }
        String[] strArr = new String[i10];
        int[] iArr = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            int iM = (int) m(2, byteArrayInputStream);
            iArr[i11] = (int) m(2, byteArrayInputStream);
            strArr[i11] = new String(f(iM, byteArrayInputStream), StandardCharsets.UTF_8);
        }
        for (int i12 = 0; i12 < i10; i12++) {
            s sVar = sVarArr[i12];
            if (!sVar.f2754b.equals(strArr[i12])) {
                throw new IllegalStateException("Order of dexfiles in metadata did not match baseline");
            }
            int i13 = iArr[i12];
            sVar.f2757e = i13;
            sVar.f2760h = g(byteArrayInputStream, i13);
        }
        return sVarArr;
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [int[], java.io.Serializable] */
    public static s[] k(ByteArrayInputStream byteArrayInputStream, byte[] bArr, int i10, s[] sVarArr) throws IOException {
        if (byteArrayInputStream.available() == 0) {
            return new s[0];
        }
        if (i10 != sVarArr.length) {
            throw new IllegalStateException("Mismatched number of dex files found in metadata");
        }
        for (int i11 = 0; i11 < i10; i11++) {
            m(2, byteArrayInputStream);
            String str = new String(f((int) m(2, byteArrayInputStream), byteArrayInputStream), StandardCharsets.UTF_8);
            long jM = m(4, byteArrayInputStream);
            int iM = (int) m(2, byteArrayInputStream);
            s sVar = null;
            if (sVarArr.length > 0) {
                int iIndexOf = str.indexOf("!");
                if (iIndexOf < 0) {
                    iIndexOf = str.indexOf(":");
                }
                String strSubstring = iIndexOf > 0 ? str.substring(iIndexOf + 1) : str;
                int i12 = 0;
                while (true) {
                    if (i12 >= sVarArr.length) {
                        break;
                    }
                    if (sVarArr[i12].f2754b.equals(strSubstring)) {
                        sVar = sVarArr[i12];
                        break;
                    }
                    i12++;
                }
            }
            if (sVar == null) {
                throw new IllegalStateException("Missing profile key: ".concat(str));
            }
            sVar.f2756d = jM;
            ?? G = g(byteArrayInputStream, iM);
            if (Arrays.equals(bArr, f18909h)) {
                sVar.f2757e = iM;
                sVar.f2760h = G;
            }
        }
        return sVarArr;
    }

    public static s[] l(FileInputStream fileInputStream, byte[] bArr, String str) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        if (!Arrays.equals(bArr, f18906e)) {
            throw new IllegalStateException("Unsupported version");
        }
        int iM = (int) m(1, fileInputStream);
        byte[] bArrH = h(fileInputStream, (int) m(4, fileInputStream), (int) m(4, fileInputStream));
        if (fileInputStream.read() > 0) {
            throw new IllegalStateException("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrH);
        try {
            s[] sVarArrN = n(byteArrayInputStream, str, iM);
            byteArrayInputStream.close();
            return sVarArrN;
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

    public static long m(int i10, InputStream inputStream) throws IOException {
        byte[] bArrF = f(i10, inputStream);
        long j10 = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            j10 += (bArrF[i11] & 255) << (i11 * 8);
        }
        return j10;
    }

    /* JADX WARN: Type inference failed for: r7v3, types: [int[], java.io.Serializable] */
    public static s[] n(ByteArrayInputStream byteArrayInputStream, String str, int i10) throws IOException {
        TreeMap treeMap;
        if (byteArrayInputStream.available() == 0) {
            return new s[0];
        }
        s[] sVarArr = new s[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            int iM = (int) m(2, byteArrayInputStream);
            int iM2 = (int) m(2, byteArrayInputStream);
            sVarArr[i11] = new s(str, new String(f(iM, byteArrayInputStream), StandardCharsets.UTF_8), m(4, byteArrayInputStream), iM2, (int) m(4, byteArrayInputStream), (int) m(4, byteArrayInputStream), new int[iM2], new TreeMap());
        }
        for (int i12 = 0; i12 < i10; i12++) {
            s sVar = sVarArr[i12];
            int iAvailable = byteArrayInputStream.available() - sVar.f2758f;
            int iM3 = 0;
            while (true) {
                int iAvailable2 = byteArrayInputStream.available();
                treeMap = (TreeMap) sVar.f2761i;
                if (iAvailable2 <= iAvailable) {
                    break;
                }
                iM3 += (int) m(2, byteArrayInputStream);
                treeMap.put(Integer.valueOf(iM3), 1);
                for (int iM4 = (int) m(2, byteArrayInputStream); iM4 > 0; iM4--) {
                    m(2, byteArrayInputStream);
                    int iM5 = (int) m(1, byteArrayInputStream);
                    if (iM5 != 6 && iM5 != 7) {
                        while (iM5 > 0) {
                            m(1, byteArrayInputStream);
                            for (int iM6 = (int) m(1, byteArrayInputStream); iM6 > 0; iM6--) {
                                m(2, byteArrayInputStream);
                            }
                            iM5--;
                        }
                    }
                }
            }
            if (byteArrayInputStream.available() != iAvailable) {
                throw new IllegalStateException("Read too much data during profile line parse");
            }
            sVar.f2760h = g(byteArrayInputStream, sVar.f2757e);
            int i13 = sVar.f2759g;
            BitSet bitSetValueOf = BitSet.valueOf(f((((i13 * 2) + 7) & (-8)) / 8, byteArrayInputStream));
            for (int i14 = 0; i14 < i13; i14++) {
                int i15 = bitSetValueOf.get(i14) ? 2 : 0;
                if (bitSetValueOf.get(i14 + i13)) {
                    i15 |= 4;
                }
                if (i15 != 0) {
                    Integer num = (Integer) treeMap.get(Integer.valueOf(i14));
                    if (num == null) {
                        num = 0;
                    }
                    treeMap.put(Integer.valueOf(i14), Integer.valueOf(i15 | num.intValue()));
                }
            }
        }
        return sVarArr;
    }

    /* JADX WARN: Finally extract failed */
    public static boolean o(ByteArrayOutputStream byteArrayOutputStream, byte[] bArr, s[] sVarArr) throws IllegalAccessException, NoSuchMethodException, IOException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int i10;
        long j10;
        int i11;
        byte[] bArr2 = f18905d;
        int i12 = 4;
        int i13 = 0;
        if (!Arrays.equals(bArr, bArr2)) {
            byte[] bArr3 = f18906e;
            if (Arrays.equals(bArr, bArr3)) {
                byte[] bArrB = b(sVarArr, bArr3);
                t(byteArrayOutputStream, sVarArr.length, 1);
                t(byteArrayOutputStream, bArrB.length, 4);
                byte[] bArrA = a(bArrB);
                t(byteArrayOutputStream, bArrA.length, 4);
                byteArrayOutputStream.write(bArrA);
                return true;
            }
            byte[] bArr4 = f18908g;
            if (Arrays.equals(bArr, bArr4)) {
                t(byteArrayOutputStream, sVarArr.length, 1);
                for (s sVar : sVarArr) {
                    int size = ((TreeMap) sVar.f2761i).size() * 4;
                    String strD = d(sVar.f2753a, sVar.f2754b, bArr4);
                    Charset charset = StandardCharsets.UTF_8;
                    u(byteArrayOutputStream, strD.getBytes(charset).length);
                    u(byteArrayOutputStream, ((int[]) sVar.f2760h).length);
                    t(byteArrayOutputStream, size, 4);
                    t(byteArrayOutputStream, sVar.f2755c, 4);
                    byteArrayOutputStream.write(strD.getBytes(charset));
                    Iterator it = ((TreeMap) sVar.f2761i).keySet().iterator();
                    while (it.hasNext()) {
                        u(byteArrayOutputStream, ((Integer) it.next()).intValue());
                        u(byteArrayOutputStream, 0);
                    }
                    for (int i14 : (int[]) sVar.f2760h) {
                        u(byteArrayOutputStream, i14);
                    }
                }
                return true;
            }
            byte[] bArr5 = f18907f;
            if (Arrays.equals(bArr, bArr5)) {
                byte[] bArrB2 = b(sVarArr, bArr5);
                t(byteArrayOutputStream, sVarArr.length, 1);
                t(byteArrayOutputStream, bArrB2.length, 4);
                byte[] bArrA2 = a(bArrB2);
                t(byteArrayOutputStream, bArrA2.length, 4);
                byteArrayOutputStream.write(bArrA2);
                return true;
            }
            byte[] bArr6 = f18909h;
            if (!Arrays.equals(bArr, bArr6)) {
                return false;
            }
            u(byteArrayOutputStream, sVarArr.length);
            for (s sVar2 : sVarArr) {
                String strD2 = d(sVar2.f2753a, sVar2.f2754b, bArr6);
                Charset charset2 = StandardCharsets.UTF_8;
                u(byteArrayOutputStream, strD2.getBytes(charset2).length);
                TreeMap treeMap = (TreeMap) sVar2.f2761i;
                u(byteArrayOutputStream, treeMap.size());
                u(byteArrayOutputStream, ((int[]) sVar2.f2760h).length);
                t(byteArrayOutputStream, sVar2.f2755c, 4);
                byteArrayOutputStream.write(strD2.getBytes(charset2));
                Iterator it2 = treeMap.keySet().iterator();
                while (it2.hasNext()) {
                    u(byteArrayOutputStream, ((Integer) it2.next()).intValue());
                }
                for (int i15 : (int[]) sVar2.f2760h) {
                    u(byteArrayOutputStream, i15);
                }
            }
            return true;
        }
        ArrayList arrayList = new ArrayList(3);
        ArrayList arrayList2 = new ArrayList(3);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        try {
            u(byteArrayOutputStream2, sVarArr.length);
            int i16 = 2;
            for (s sVar3 : sVarArr) {
                t(byteArrayOutputStream2, sVar3.f2755c, 4);
                t(byteArrayOutputStream2, sVar3.f2756d, 4);
                t(byteArrayOutputStream2, sVar3.f2759g, 4);
                String strD3 = d(sVar3.f2753a, sVar3.f2754b, bArr2);
                Charset charset3 = StandardCharsets.UTF_8;
                int length = strD3.getBytes(charset3).length;
                u(byteArrayOutputStream2, length);
                i16 = i16 + 14 + length;
                byteArrayOutputStream2.write(strD3.getBytes(charset3));
            }
            byte[] byteArray = byteArrayOutputStream2.toByteArray();
            String str = ", does not match actual size ";
            String str2 = "Expected size ";
            if (i16 != byteArray.length) {
                throw new IllegalStateException("Expected size " + i16 + ", does not match actual size " + byteArray.length);
            }
            j jVar = new j(1, byteArray, false);
            byteArrayOutputStream2.close();
            arrayList.add(jVar);
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
            int i17 = 0;
            int i18 = 0;
            while (i17 < sVarArr.length) {
                try {
                    s sVar4 = sVarArr[i17];
                    u(byteArrayOutputStream3, i17);
                    u(byteArrayOutputStream3, sVar4.f2757e);
                    i18 = i18 + i12 + (sVar4.f2757e * 2);
                    int[] iArr = (int[]) sVar4.f2760h;
                    int length2 = iArr.length;
                    int i19 = 0;
                    while (i13 < length2) {
                        int i20 = iArr[i13];
                        u(byteArrayOutputStream3, i20 - i19);
                        i13++;
                        i19 = i20;
                    }
                    i17++;
                    i12 = 4;
                    i13 = 0;
                } catch (Throwable th2) {
                    try {
                        byteArrayOutputStream3.close();
                        throw th2;
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                            throw th2;
                        } catch (Exception unused) {
                            throw th2;
                        }
                    }
                }
            }
            byte[] byteArray2 = byteArrayOutputStream3.toByteArray();
            if (i18 != byteArray2.length) {
                throw new IllegalStateException("Expected size " + i18 + ", does not match actual size " + byteArray2.length);
            }
            j jVar2 = new j(3, byteArray2, true);
            byteArrayOutputStream3.close();
            arrayList.add(jVar2);
            ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
            int i21 = 0;
            int i22 = 0;
            while (i21 < sVarArr.length) {
                try {
                    s sVar5 = sVarArr[i21];
                    Iterator it3 = ((TreeMap) sVar5.f2761i).entrySet().iterator();
                    int iIntValue = 0;
                    while (it3.hasNext()) {
                        iIntValue |= ((Integer) ((Map.Entry) it3.next()).getValue()).intValue();
                    }
                    ByteArrayOutputStream byteArrayOutputStream5 = new ByteArrayOutputStream();
                    try {
                        q(byteArrayOutputStream5, sVar5);
                        byte[] byteArray3 = byteArrayOutputStream5.toByteArray();
                        byteArrayOutputStream5.close();
                        ByteArrayOutputStream byteArrayOutputStream6 = new ByteArrayOutputStream();
                        try {
                            r(byteArrayOutputStream6, sVar5);
                            byte[] byteArray4 = byteArrayOutputStream6.toByteArray();
                            byteArrayOutputStream6.close();
                            u(byteArrayOutputStream4, i21);
                            int length3 = byteArray3.length + 2 + byteArray4.length;
                            int i23 = i22 + 6;
                            String str3 = str;
                            String str4 = str2;
                            t(byteArrayOutputStream4, length3, 4);
                            u(byteArrayOutputStream4, iIntValue);
                            byteArrayOutputStream4.write(byteArray3);
                            byteArrayOutputStream4.write(byteArray4);
                            i22 = i23 + length3;
                            i21++;
                            str = str3;
                            str2 = str4;
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                }
            }
            String str5 = str;
            String str6 = str2;
            byte[] byteArray5 = byteArrayOutputStream4.toByteArray();
            if (i22 != byteArray5.length) {
                throw new IllegalStateException(str6 + i22 + str5 + byteArray5.length);
            }
            j jVar3 = new j(4, byteArray5, true);
            byteArrayOutputStream4.close();
            arrayList.add(jVar3);
            long j11 = 4;
            long size2 = j11 + j11 + 4 + (arrayList.size() * 16);
            t(byteArrayOutputStream, arrayList.size(), 4);
            int i24 = 0;
            while (i24 < arrayList.size()) {
                j jVar4 = (j) arrayList.get(i24);
                int i25 = jVar4.f18920a;
                if (i25 != 1) {
                    if (i25 == 2) {
                        j10 = 1;
                    } else if (i25 == 3) {
                        j10 = 2;
                    } else if (i25 == 4) {
                        j10 = 3;
                    } else {
                        if (i25 != 5) {
                            throw null;
                        }
                        j10 = 4;
                    }
                    i10 = 4;
                } else {
                    i10 = 4;
                    j10 = 0;
                }
                t(byteArrayOutputStream, j10, i10);
                t(byteArrayOutputStream, size2, i10);
                byte[] bArr7 = jVar4.f18921b;
                if (jVar4.f18922c) {
                    long length4 = bArr7.length;
                    arrayList2.add(a(bArr7));
                    t(byteArrayOutputStream, r6.length, 4);
                    t(byteArrayOutputStream, length4, 4);
                    size2 += r6.length;
                    i11 = 1;
                } else {
                    arrayList2.add(bArr7);
                    t(byteArrayOutputStream, bArr7.length, 4);
                    t(byteArrayOutputStream, 0L, 4);
                    size2 += bArr7.length;
                    i11 = 1;
                }
                i24 += i11;
            }
            for (int i26 = 0; i26 < arrayList2.size(); i26++) {
                byteArrayOutputStream.write((byte[]) arrayList2.get(i26));
            }
            return true;
        } catch (Throwable th4) {
            try {
                byteArrayOutputStream2.close();
                throw th4;
            } catch (Throwable th5) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                    throw th4;
                } catch (Exception unused2) {
                    throw th4;
                }
            }
        }
    }

    public static void p(ByteArrayOutputStream byteArrayOutputStream, s sVar, String str) throws IOException {
        Charset charset = StandardCharsets.UTF_8;
        u(byteArrayOutputStream, str.getBytes(charset).length);
        u(byteArrayOutputStream, sVar.f2757e);
        t(byteArrayOutputStream, sVar.f2758f, 4);
        t(byteArrayOutputStream, sVar.f2755c, 4);
        t(byteArrayOutputStream, sVar.f2759g, 4);
        byteArrayOutputStream.write(str.getBytes(charset));
    }

    public static void q(ByteArrayOutputStream byteArrayOutputStream, s sVar) throws IOException {
        byte[] bArr = new byte[(((sVar.f2759g * 2) + 7) & (-8)) / 8];
        for (Map.Entry entry : ((TreeMap) sVar.f2761i).entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            int iIntValue2 = ((Integer) entry.getValue()).intValue();
            if ((iIntValue2 & 2) != 0) {
                int i10 = iIntValue / 8;
                bArr[i10] = (byte) (bArr[i10] | (1 << (iIntValue % 8)));
            }
            if ((iIntValue2 & 4) != 0) {
                int i11 = iIntValue + sVar.f2759g;
                int i12 = i11 / 8;
                bArr[i12] = (byte) ((1 << (i11 % 8)) | bArr[i12]);
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void r(ByteArrayOutputStream byteArrayOutputStream, s sVar) throws IOException {
        int i10 = 0;
        for (Map.Entry entry : ((TreeMap) sVar.f2761i).entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            if ((((Integer) entry.getValue()).intValue() & 1) != 0) {
                u(byteArrayOutputStream, iIntValue - i10);
                u(byteArrayOutputStream, 0);
                i10 = iIntValue;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:132:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x01e0 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0307 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:244:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x0112 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:319:0x0188 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0172  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void s(Context context, Executor executor, b bVar, boolean z) {
        AssetManager assetManager;
        int i10;
        FileInputStream fileInputStreamB;
        IOException iOException;
        int i11;
        s[] sVarArrL;
        s[] sVarArr;
        a aVar;
        s[] sVarArr2;
        String str;
        byte[] bArr;
        Object obj;
        Object obj2;
        int i12;
        int i13;
        ByteArrayInputStream byteArrayInputStream;
        Throwable th2;
        FileOutputStream fileOutputStream;
        byte[] bArr2;
        boolean z4;
        byte[] bArr3;
        ByteArrayOutputStream byteArrayOutputStream;
        int i14;
        a aVar2;
        FileInputStream fileInputStreamB2;
        boolean z10;
        int i15 = 6;
        Context applicationContext = context.getApplicationContext();
        String packageName = applicationContext.getPackageName();
        ApplicationInfo applicationInfo = applicationContext.getApplicationInfo();
        AssetManager assets = applicationContext.getAssets();
        String name = new File(applicationInfo.sourceDir).getName();
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            File filesDir = context.getFilesDir();
            Object obj3 = null;
            if (z) {
                assetManager = assets;
            } else {
                File file = new File(filesDir, "profileinstaller_profileWrittenFor_lastUpdateTime.dat");
                if (file.exists()) {
                    try {
                        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
                        try {
                            long j10 = dataInputStream.readLong();
                            dataInputStream.close();
                            assetManager = assets;
                            z10 = j10 == packageInfo.lastUpdateTime;
                            if (z10) {
                                bVar.c(2, null);
                            }
                        } catch (Throwable th3) {
                            assetManager = assets;
                            try {
                                dataInputStream.close();
                            } catch (Throwable th4) {
                                try {
                                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th3, th4);
                                } catch (Exception unused) {
                                }
                            }
                            try {
                                throw th3;
                            } catch (IOException unused2) {
                                z10 = false;
                                if (z10) {
                                }
                                context.getPackageName();
                                i10 = Build.VERSION.SDK_INT;
                                int i16 = 3;
                                if (i10 >= 19) {
                                }
                                z4 = false;
                                i.c(context, z4 && z);
                            }
                        }
                    } catch (IOException unused3) {
                        assetManager = assets;
                    }
                    if (z10) {
                        context.getPackageName();
                        i.c(context, false);
                        return;
                    }
                } else {
                    assetManager = assets;
                }
                z10 = false;
                if (z10) {
                }
            }
            context.getPackageName();
            i10 = Build.VERSION.SDK_INT;
            int i162 = 3;
            if (i10 >= 19) {
                executor.execute(new v(bVar, i162, obj3, i15));
            } else {
                File file2 = new File(new File("/data/misc/profiles/cur/0", packageName), "primary.prof");
                a aVar3 = new a(assetManager, executor, bVar, name, file2);
                byte[] bArr4 = (byte[]) aVar3.f18897d;
                if (bArr4 == null) {
                    aVar3.c(3, Integer.valueOf(i10));
                } else if (file2.canWrite()) {
                    aVar3.f18894a = true;
                    byte[] bArr5 = f18903b;
                    AssetManager assetManager2 = assetManager;
                    try {
                        try {
                            fileInputStreamB = aVar3.b(assetManager2, "dexopt/baseline.prof");
                        } catch (FileNotFoundException e7) {
                            bVar.c(6, e7);
                            fileInputStreamB = null;
                            if (fileInputStreamB != null) {
                            }
                            sVarArr = (s[]) aVar3.f18901h;
                            if (sVarArr == null) {
                            }
                            i.c(context, z4 && z);
                        } catch (IOException e10) {
                            bVar.c(7, e10);
                            fileInputStreamB = null;
                            if (fileInputStreamB != null) {
                            }
                            sVarArr = (s[]) aVar3.f18901h;
                            if (sVarArr == null) {
                            }
                            i.c(context, z4 && z);
                        }
                        if (fileInputStreamB != null) {
                            try {
                            } catch (IOException e11) {
                                i11 = 7;
                                bVar.c(7, e11);
                                try {
                                    fileInputStreamB.close();
                                } catch (IOException e12) {
                                    iOException = e12;
                                    bVar.c(i11, iOException);
                                    sVarArrL = null;
                                    aVar3.f18901h = sVarArrL;
                                    sVarArr = (s[]) aVar3.f18901h;
                                    if (sVarArr == null) {
                                    }
                                    i.c(context, z4 && z);
                                }
                                sVarArrL = null;
                                aVar3.f18901h = sVarArrL;
                                sVarArr = (s[]) aVar3.f18901h;
                                if (sVarArr == null) {
                                }
                                i.c(context, z4 && z);
                            } catch (IllegalStateException e13) {
                                try {
                                    bVar.c(8, e13);
                                    try {
                                        fileInputStreamB.close();
                                    } catch (IOException e14) {
                                        iOException = e14;
                                        i11 = 7;
                                        bVar.c(i11, iOException);
                                        sVarArrL = null;
                                        aVar3.f18901h = sVarArrL;
                                        sVarArr = (s[]) aVar3.f18901h;
                                        if (sVarArr == null) {
                                            aVar = aVar3;
                                            b bVar2 = (b) aVar.f18896c;
                                            sVarArr2 = (s[]) aVar.f18901h;
                                            if (sVarArr2 != null) {
                                            }
                                        }
                                        i.c(context, z4 && z);
                                    }
                                    sVarArrL = null;
                                    aVar3.f18901h = sVarArrL;
                                    sVarArr = (s[]) aVar3.f18901h;
                                    if (sVarArr == null) {
                                    }
                                    i.c(context, z4 && z);
                                } catch (Throwable th5) {
                                    th = th5;
                                    Throwable th6 = th;
                                    try {
                                        fileInputStreamB.close();
                                        throw th6;
                                    } catch (IOException e15) {
                                        bVar.c(7, e15);
                                        throw th6;
                                    }
                                }
                            }
                            if (!Arrays.equals(bArr5, f(4, fileInputStreamB))) {
                                throw new IllegalStateException("Invalid magic");
                            }
                            sVarArrL = l(fileInputStreamB, f(4, fileInputStreamB), (String) aVar3.f18900g);
                            try {
                                fileInputStreamB.close();
                            } catch (IOException e16) {
                                bVar.c(7, e16);
                            }
                            aVar3.f18901h = sVarArrL;
                        }
                        sVarArr = (s[]) aVar3.f18901h;
                        if (sVarArr == null || (i14 = Build.VERSION.SDK_INT) < 24 || i14 > 33) {
                            aVar = aVar3;
                            b bVar22 = (b) aVar.f18896c;
                            sVarArr2 = (s[]) aVar.f18901h;
                            if (sVarArr2 != null || (bArr3 = (byte[]) aVar.f18897d) == null) {
                                str = "addSuppressed";
                                bArr = (byte[]) aVar.f18898e;
                                if (bArr == null) {
                                    if (!aVar.f18894a) {
                                        throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                    }
                                    try {
                                        try {
                                            try {
                                                try {
                                                    byteArrayInputStream = new ByteArrayInputStream(bArr);
                                                    try {
                                                        fileOutputStream = new FileOutputStream((File) aVar.f18899f);
                                                        try {
                                                            bArr2 = new byte[512];
                                                        } catch (Throwable th7) {
                                                            try {
                                                                fileOutputStream.close();
                                                                throw th7;
                                                            } catch (Throwable th8) {
                                                                try {
                                                                    try {
                                                                        Throwable.class.getDeclaredMethod(str, Throwable.class).invoke(th7, th8);
                                                                        throw th7;
                                                                    } catch (Exception unused4) {
                                                                        throw th7;
                                                                    }
                                                                } catch (Throwable th9) {
                                                                    th = th9;
                                                                    th2 = th;
                                                                    try {
                                                                        byteArrayInputStream.close();
                                                                        throw th2;
                                                                    } catch (Throwable th10) {
                                                                        try {
                                                                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th10);
                                                                            throw th2;
                                                                        } catch (FileNotFoundException e17) {
                                                                            e = e17;
                                                                            obj2 = null;
                                                                            i13 = 6;
                                                                            aVar.c(i13, e);
                                                                            aVar.f18898e = obj2;
                                                                            aVar.f18901h = obj2;
                                                                            z4 = false;
                                                                            if (z4) {
                                                                            }
                                                                            i.c(context, z4 && z);
                                                                        } catch (IOException e18) {
                                                                            e = e18;
                                                                            i12 = 7;
                                                                            try {
                                                                                aVar.c(i12, e);
                                                                                obj2 = null;
                                                                                aVar.f18898e = obj2;
                                                                                aVar.f18901h = obj2;
                                                                                z4 = false;
                                                                                if (z4) {
                                                                                }
                                                                                i.c(context, z4 && z);
                                                                            } catch (Throwable th11) {
                                                                                th = th11;
                                                                                obj = null;
                                                                                aVar.f18898e = obj;
                                                                                aVar.f18901h = obj;
                                                                                throw th;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    } catch (Throwable th12) {
                                                        th = th12;
                                                    }
                                                } catch (FileNotFoundException e19) {
                                                    e = e19;
                                                }
                                            } catch (FileNotFoundException e20) {
                                                e = e20;
                                                obj2 = null;
                                            }
                                        } catch (IOException e21) {
                                            e = e21;
                                        }
                                        while (true) {
                                            int i17 = byteArrayInputStream.read(bArr2);
                                            if (i17 > 0) {
                                                fileOutputStream.write(bArr2, 0, i17);
                                            } else {
                                                aVar.c(1, null);
                                                try {
                                                    fileOutputStream.close();
                                                    try {
                                                        byteArrayInputStream.close();
                                                        aVar.f18898e = null;
                                                        aVar.f18901h = null;
                                                        z4 = true;
                                                    } catch (FileNotFoundException e22) {
                                                        e = e22;
                                                        obj2 = null;
                                                        i13 = 6;
                                                        aVar.c(i13, e);
                                                        aVar.f18898e = obj2;
                                                        aVar.f18901h = obj2;
                                                        z4 = false;
                                                        if (z4) {
                                                        }
                                                        i.c(context, z4 && z);
                                                    } catch (IOException e23) {
                                                        e = e23;
                                                        i12 = 7;
                                                        aVar.c(i12, e);
                                                        obj2 = null;
                                                        aVar.f18898e = obj2;
                                                        aVar.f18901h = obj2;
                                                        z4 = false;
                                                        if (z4) {
                                                        }
                                                        i.c(context, z4 && z);
                                                    }
                                                    if (z4) {
                                                        e(packageInfo, filesDir);
                                                    }
                                                } catch (Throwable th13) {
                                                    th2 = th13;
                                                    byteArrayInputStream.close();
                                                    throw th2;
                                                }
                                            }
                                        }
                                    } catch (Throwable th14) {
                                        th = th14;
                                        obj = null;
                                        aVar.f18898e = obj;
                                        aVar.f18901h = obj;
                                        throw th;
                                    }
                                }
                                z4 = false;
                                if (z4) {
                                }
                            } else {
                                if (!aVar.f18894a) {
                                    throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                }
                                try {
                                    byteArrayOutputStream = new ByteArrayOutputStream();
                                    try {
                                        byteArrayOutputStream.write(bArr5);
                                        byteArrayOutputStream.write(bArr3);
                                    } catch (Throwable th15) {
                                        try {
                                            byteArrayOutputStream.close();
                                            str = "addSuppressed";
                                        } catch (Throwable th16) {
                                            try {
                                                str = "addSuppressed";
                                                try {
                                                    Throwable.class.getDeclaredMethod(str, Throwable.class).invoke(th15, th16);
                                                } catch (Exception unused5) {
                                                }
                                            } catch (Exception unused6) {
                                                str = "addSuppressed";
                                                throw th15;
                                            }
                                            throw th15;
                                        }
                                        try {
                                            throw th15;
                                        } catch (IOException e24) {
                                            e = e24;
                                            bVar22.c(7, e);
                                            aVar.f18901h = null;
                                            bArr = (byte[]) aVar.f18898e;
                                            if (bArr == null) {
                                            }
                                            z4 = false;
                                            if (z4) {
                                            }
                                            i.c(context, z4 && z);
                                        } catch (IllegalStateException e25) {
                                            e = e25;
                                            bVar22.c(8, e);
                                            aVar.f18901h = null;
                                            bArr = (byte[]) aVar.f18898e;
                                            if (bArr == null) {
                                            }
                                            z4 = false;
                                            if (z4) {
                                            }
                                            i.c(context, z4 && z);
                                        }
                                    }
                                } catch (IOException e26) {
                                    e = e26;
                                    str = "addSuppressed";
                                } catch (IllegalStateException e27) {
                                    e = e27;
                                    str = "addSuppressed";
                                }
                                if (o(byteArrayOutputStream, bArr3, sVarArr2)) {
                                    aVar.f18898e = byteArrayOutputStream.toByteArray();
                                    byteArrayOutputStream.close();
                                    str = "addSuppressed";
                                    aVar.f18901h = null;
                                    bArr = (byte[]) aVar.f18898e;
                                    if (bArr == null) {
                                    }
                                    z4 = false;
                                    if (z4) {
                                    }
                                } else {
                                    bVar22.c(5, null);
                                    aVar.f18901h = null;
                                    byteArrayOutputStream.close();
                                    str = "addSuppressed";
                                    bArr = (byte[]) aVar.f18898e;
                                    if (bArr == null) {
                                    }
                                    z4 = false;
                                    if (z4) {
                                    }
                                }
                            }
                        } else if (i14 == 24 || i14 == 25) {
                            try {
                                fileInputStreamB2 = aVar3.b(assetManager2, "dexopt/baseline.profm");
                            } catch (FileNotFoundException e28) {
                                bVar.c(9, e28);
                            } catch (IOException e29) {
                                bVar.c(7, e29);
                            } catch (IllegalStateException e30) {
                                aVar3.f18901h = null;
                                bVar.c(8, e30);
                            }
                            if (fileInputStreamB2 != null) {
                                try {
                                    if (!Arrays.equals(f18904c, f(4, fileInputStreamB2))) {
                                        throw new IllegalStateException("Invalid magic");
                                    }
                                    aVar3.f18901h = i(fileInputStreamB2, f(4, fileInputStreamB2), bArr4, sVarArr);
                                    fileInputStreamB2.close();
                                    aVar2 = aVar3;
                                    if (aVar2 == null) {
                                        aVar = aVar2;
                                    }
                                    b bVar222 = (b) aVar.f18896c;
                                    sVarArr2 = (s[]) aVar.f18901h;
                                    if (sVarArr2 != null) {
                                        str = "addSuppressed";
                                        bArr = (byte[]) aVar.f18898e;
                                        if (bArr == null) {
                                        }
                                        z4 = false;
                                        if (z4) {
                                        }
                                    }
                                } finally {
                                }
                            } else {
                                if (fileInputStreamB2 != null) {
                                    fileInputStreamB2.close();
                                }
                                aVar2 = null;
                                if (aVar2 == null) {
                                }
                                b bVar2222 = (b) aVar.f18896c;
                                sVarArr2 = (s[]) aVar.f18901h;
                                if (sVarArr2 != null) {
                                }
                            }
                        } else {
                            switch (i14) {
                            }
                        }
                        i.c(context, z4 && z);
                    } catch (Throwable th17) {
                        th = th17;
                    }
                } else {
                    aVar3.c(4, null);
                }
            }
            z4 = false;
            i.c(context, z4 && z);
        } catch (PackageManager.NameNotFoundException e31) {
            bVar.c(7, e31);
            i.c(context, false);
        }
    }

    public static void t(ByteArrayOutputStream byteArrayOutputStream, long j10, int i10) throws IOException {
        byte[] bArr = new byte[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            bArr[i11] = (byte) ((j10 >> (i11 * 8)) & 255);
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void u(ByteArrayOutputStream byteArrayOutputStream, int i10) throws IOException {
        t(byteArrayOutputStream, i10, 2);
    }
}
