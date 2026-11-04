package ef;

import a9.o;
import androidx.fragment.app.b0;
import androidx.leanback.widget.i;
import com.android.apksig.apk.ApkUtils;
import com.android.apksig.internal.apk.AndroidBinXmlParser;
import com.bumptech.glide.d;
import com.hsae.autosdk.source.SourceConst;
import ff.c;
import ff.f;
import g3.j;
import gf.e;
import h5.m;
import ha.j2;
import ha.l2;
import j$.nio.charset.StandardCharsets;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import l2.l0;
import l5.y;
import mf.h;
import mf.k;
import mf.l;
import org.bouncycastle.crypto.hpke.HPKE;
import s1.g;

/* loaded from: classes.dex */
public final class b implements Closeable {
    public static final Locale l = Locale.US;

    /* renamed from: a, reason: collision with root package name */
    public boolean f4959a;

    /* renamed from: b, reason: collision with root package name */
    public h f4960b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4961c;

    /* renamed from: d, reason: collision with root package name */
    public String f4962d;

    /* renamed from: e, reason: collision with root package name */
    public c f4963e;

    /* renamed from: f, reason: collision with root package name */
    public List f4964f;

    /* renamed from: g, reason: collision with root package name */
    public ArrayList f4965g;

    /* renamed from: h, reason: collision with root package name */
    public ArrayList f4966h;

    /* renamed from: i, reason: collision with root package name */
    public final ZipFile f4967i;

    /* renamed from: j, reason: collision with root package name */
    public final File f4968j;

    /* renamed from: k, reason: collision with root package name */
    public FileChannel f4969k;

    public b(File file) {
        this.f4968j = file;
        this.f4967i = new ZipFile(file);
    }

    public final List A() throws IOException {
        M();
        List<ff.h> list = this.f4964f;
        if (list.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (ff.h hVar : list) {
            String str = hVar.f5831a;
            boolean zEndsWith = str.endsWith(".xml");
            int i10 = hVar.f5832b;
            if (zEndsWith) {
                byte[] bArrL = L(str);
                if (bArrL != null) {
                    N();
                    ba.h hVar2 = new ba.h(2);
                    O(bArrL, hVar2);
                    String str2 = hVar2.f2697c;
                    f fVar = str2 != null ? new f(str2, i10, L(str2)) : null;
                    String str3 = hVar2.f2696b;
                    arrayList.add(new ff.a(str3 != null ? new f(str3, i10, L(str3)) : null, fVar));
                }
            } else {
                arrayList.add(new f(str, i10, L(str)));
            }
        }
        return arrayList;
    }

    public final ArrayList J() throws e, IOException, CertificateException {
        if (this.f4965g == null) {
            this.f4965g = new ArrayList();
            ZipFile zipFile = this.f4967i;
            Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
            ArrayList arrayList = new ArrayList();
            while (enumerationEntries.hasMoreElements()) {
                ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                if (!zipEntryNextElement.isDirectory()) {
                    String upperCase = zipEntryNextElement.getName().toUpperCase();
                    if (upperCase.endsWith(".RSA") || upperCase.endsWith(".DSA")) {
                        InputStream inputStream = zipFile.getInputStream(zipEntryNextElement);
                        try {
                            byte[] bArrZ = o.Z(inputStream);
                            inputStream.close();
                            arrayList.add(new a(upperCase, bArrZ));
                        } catch (Throwable th2) {
                            inputStream.close();
                            throw th2;
                        }
                    }
                }
            }
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                try {
                    try {
                        a9.a aVarF = new hf.b(ByteBuffer.wrap(((a) it.next()).f4958a), 0).f();
                        if (aVarF == null) {
                            throw new e("Empty input");
                        }
                        if (gf.c.g(aVarF, p000if.a.class) == null) {
                            throw null;
                        }
                        throw new ClassCastException();
                    } catch (hf.a e7) {
                        throw new e("Failed to decode top-level data value", e7);
                    }
                } catch (e e10) {
                    throw new CertificateException(e10);
                }
            }
        }
        return this.f4965g;
    }

    public final ArrayList K() throws NoSuchAlgorithmException, CertificateException {
        int i10 = 22;
        int i11 = 1;
        if (this.f4966h == null) {
            ArrayList arrayList = new ArrayList();
            FileChannel channel = new FileInputStream(this.f4968j).getChannel();
            this.f4969k = channel;
            ByteBuffer byteBufferOrder = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size()).order(ByteOrder.LITTLE_ENDIAN);
            int iLimit = byteBufferOrder.limit();
            if (iLimit < 22) {
                throw new RuntimeException("Not zip file");
            }
            ByteBuffer byteBufferA0 = null;
            i iVar = null;
            for (int i12 = iLimit - 22; i12 > Math.max(0, iLimit - 102400); i12--) {
                if (byteBufferOrder.getInt(i12) == 101010256) {
                    byteBufferOrder.position(i12 + 4);
                    iVar = new i(5);
                    byteBufferOrder.getShort();
                    byteBufferOrder.getShort();
                    byteBufferOrder.getShort();
                    byteBufferOrder.getShort();
                    byteBufferOrder.getInt();
                    iVar.f1647b = (int) (4294967295L & byteBufferOrder.getInt());
                    byteBufferOrder.getShort();
                }
            }
            if (iVar != null) {
                long j10 = iVar.f1647b & 4294967295L;
                g.P(byteBufferOrder, j10 - 16);
                byte[] bArr = new byte[16];
                byteBufferOrder.get(bArr);
                if (new String(bArr).equals("APK Sig Block 42")) {
                    g.P(byteBufferOrder, j10 - 24);
                    int iR = com.bumptech.glide.c.r(byteBufferOrder.getLong());
                    long j11 = iR;
                    g.P(byteBufferOrder, (j10 - j11) - 8);
                    long j12 = byteBufferOrder.getLong();
                    if (j12 < 0) {
                        throw new ArithmeticException("unsigned long overflow");
                    }
                    if (j11 == j12) {
                        byteBufferA0 = g.a0(byteBufferOrder, iR - 16);
                    }
                }
            }
            if (byteBufferA0 != null) {
                ByteBuffer byteBufferOrder2 = byteBufferA0.order(ByteOrder.LITTLE_ENDIAN);
                ArrayList arrayList2 = new ArrayList();
                while (byteBufferOrder2.remaining() >= 8) {
                    int i13 = byteBufferOrder2.getInt();
                    int iR2 = com.bumptech.glide.c.r(byteBufferOrder2.getInt());
                    if (i13 == 1896449818) {
                        ByteBuffer byteBufferA02 = g.a0(byteBufferOrder2, iR2);
                        while (byteBufferA02.hasRemaining()) {
                            ByteBuffer byteBufferX = d.X(byteBufferA02);
                            ByteBuffer byteBufferX2 = d.X(byteBufferX);
                            ByteBuffer byteBufferX3 = d.X(byteBufferX2);
                            ArrayList arrayList3 = new ArrayList();
                            while (byteBufferX3.hasRemaining()) {
                                ByteBuffer byteBufferX4 = d.X(byteBufferX3);
                                byteBufferX4.getInt();
                                byteBufferX4.get(new byte[byteBufferX4.remaining()]);
                                arrayList3.add(new l2(i10));
                            }
                            ByteBuffer byteBufferX5 = d.X(byteBufferX2);
                            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                            ArrayList arrayList4 = new ArrayList();
                            while (byteBufferX5.hasRemaining()) {
                                ByteBuffer byteBufferX6 = d.X(byteBufferX5);
                                byte[] bArr2 = new byte[byteBufferX6.remaining()];
                                byteBufferX6.get(bArr2);
                                arrayList4.add((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(bArr2)));
                            }
                            ByteBuffer byteBufferX7 = d.X(byteBufferX2);
                            while (byteBufferX7.hasRemaining()) {
                                d.X(byteBufferX7).getInt();
                            }
                            ByteBuffer byteBufferX8 = d.X(byteBufferX);
                            ArrayList arrayList5 = new ArrayList();
                            while (byteBufferX8.hasRemaining()) {
                                ByteBuffer byteBufferX9 = d.X(byteBufferX8);
                                byteBufferX9.getInt();
                                byteBufferX9.get(new byte[com.bumptech.glide.c.r(byteBufferX9.getInt())]);
                                arrayList5.add(new j2(23));
                            }
                            d.X(byteBufferX);
                            arrayList2.add(new nf.a(arrayList4));
                        }
                    } else {
                        byteBufferOrder2.position(byteBufferOrder2.position() + iR2);
                    }
                }
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ArrayList arrayList6 = ((nf.a) it.next()).f11359a;
                    ArrayList arrayList7 = new ArrayList(arrayList6.size());
                    Iterator it2 = arrayList6.iterator();
                    while (it2.hasNext()) {
                        X509Certificate x509Certificate = (X509Certificate) it2.next();
                        byte[] encoded = x509Certificate.getEncoded();
                        try {
                            MessageDigest messageDigest = MessageDigest.getInstance("md5");
                            messageDigest.update(encoded);
                            BigInteger bigInteger = new BigInteger(i11, messageDigest.digest());
                            Object[] objArr = new Object[i11];
                            objArr[0] = bigInteger;
                            String str = String.format("%032x", objArr);
                            StringBuilder sb2 = new StringBuilder(encoded.length);
                            for (byte b10 : encoded) {
                                String hexString = Integer.toHexString(((char) b10) & 255);
                                if (hexString.length() < 2) {
                                    sb2.append(0);
                                }
                                sb2.append(hexString.toUpperCase());
                            }
                            String string = sb2.toString();
                            try {
                                MessageDigest messageDigest2 = MessageDigest.getInstance("md5");
                                messageDigest2.update(string.getBytes(StandardCharsets.UTF_8));
                                String str2 = String.format("%032x", new BigInteger(1, messageDigest2.digest()));
                                String upperCase = x509Certificate.getSigAlgName().toUpperCase();
                                x509Certificate.getSigAlgOID();
                                arrayList7.add(new ff.e(upperCase, x509Certificate.getNotBefore(), x509Certificate.getNotAfter(), str2, str));
                                i11 = 1;
                            } catch (NoSuchAlgorithmException e7) {
                                throw new RuntimeException(e7.getMessage());
                            }
                        } catch (NoSuchAlgorithmException e10) {
                            throw new RuntimeException(e10.getMessage());
                        }
                    }
                    arrayList.add(new ff.d(arrayList7));
                    i11 = 1;
                }
            }
            this.f4966h = arrayList;
        }
        return this.f4966h;
    }

    public final byte[] L(String str) throws IOException {
        ZipFile zipFile = this.f4967i;
        ZipEntry entry = zipFile.getEntry(str);
        if (entry == null) {
            return null;
        }
        InputStream inputStream = zipFile.getInputStream(entry);
        try {
            return o.Z(inputStream);
        } finally {
            inputStream.close();
        }
    }

    public final void M() {
        if (this.f4961c) {
            return;
        }
        N();
        kf.f fVar = new kf.f();
        j jVar = new j(this.f4960b);
        m mVar = new m(27, new kf.e[]{fVar, jVar});
        byte[] bArrL = L(ApkUtils.ANDROID_MANIFEST_ZIP_ENTRY_NAME);
        if (bArrL == null) {
            throw new b0("Manifest file not found", 6);
        }
        O(bArrL, mVar);
        this.f4962d = ((StringBuilder) fVar.f10291d).toString();
        ff.b bVar = (ff.b) jVar.f6036c;
        bVar.getClass();
        this.f4963e = new c(bVar);
        this.f4964f = (List) jVar.f6037d;
        this.f4961c = true;
    }

    public final void N() throws IOException {
        mf.i iVar;
        int i10;
        mf.c cVar;
        if (this.f4959a) {
            return;
        }
        this.f4959a = true;
        byte[] bArrL = L("resources.arsc");
        if (bArrL == null) {
            this.f4960b = new h();
            Collections.emptySet();
            return;
        }
        kf.b bVar = new kf.b(ByteBuffer.wrap(bArrL));
        mf.i iVar2 = (mf.i) bVar.a();
        lf.g gVar = (lf.g) bVar.a();
        ByteBuffer byteBuffer = (ByteBuffer) bVar.f10280d;
        bVar.f10279c = qf.b.c(byteBuffer, gVar);
        bVar.f10281e = new h();
        mf.c cVar2 = (mf.c) bVar.a();
        int i11 = 0;
        while (i11 < (iVar2.f11219d & 4294967295L)) {
            mf.f fVar = new mf.f(cVar2);
            long jPosition = byteBuffer.position();
            int i12 = cVar2.f11201e;
            short s8 = cVar2.f10715b;
            if (i12 > 0) {
                i10 = i11;
                iVar = iVar2;
                g.P(byteBuffer, (i12 + jPosition) - s8);
                fVar.f11210b = qf.b.c(byteBuffer, (lf.g) bVar.a());
            } else {
                iVar = iVar2;
                i10 = i11;
            }
            int i13 = cVar2.f11202f;
            if (i13 > 0) {
                g.P(byteBuffer, (jPosition + i13) - s8);
                fVar.f11211c = qf.b.c(byteBuffer, (lf.g) bVar.a());
            }
            while (true) {
                if (byteBuffer.hasRemaining()) {
                    lf.a aVarA = bVar.a();
                    long jPosition2 = byteBuffer.position();
                    short s10 = aVarA.f10714a;
                    if (s10 != 0) {
                        switch (s10) {
                            case 512:
                                cVar = (mf.c) aVarA;
                                break;
                            case 513:
                                k kVar = (k) aVarA;
                                long[] jArr = new long[kVar.f11229e];
                                for (int i14 = 0; i14 < kVar.f11229e; i14++) {
                                    jArr[i14] = byteBuffer.getInt() & 4294967295L;
                                }
                                mf.j jVar = new mf.j(kVar);
                                jVar.f11220a = fVar.f11210b.f10503a[((short) (kVar.f11228d & 255)) - 1];
                                g.P(byteBuffer, (kVar.f11230f + jPosition2) - kVar.f10715b);
                                ByteBuffer byteBufferSlice = byteBuffer.slice();
                                byteBufferSlice.order((ByteOrder) bVar.f10278b);
                                jVar.f11224e = byteBufferSlice;
                                jVar.f11223d = fVar.f11211c;
                                jVar.f11225f = jArr;
                                jVar.f11226g = (l0) bVar.f10279c;
                                HashMap map = fVar.f11213e;
                                List arrayList = (List) map.get(Short.valueOf(jVar.f11221b));
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                    map.put(Short.valueOf(jVar.f11221b), arrayList);
                                }
                                arrayList.add(jVar);
                                ((HashSet) bVar.f10282f).add(jVar.f11222c);
                                g.P(byteBuffer, jPosition2 + kVar.a());
                                break;
                            case 514:
                                mf.m mVar = (mf.m) aVarA;
                                long[] jArr2 = new long[mVar.f11236e];
                                for (int i15 = 0; i15 < mVar.f11236e; i15++) {
                                    jArr2[i15] = byteBuffer.getInt() & 4294967295L;
                                }
                                l lVar = new l(mVar);
                                lVar.f11232a = jArr2;
                                lVar.f11233b = fVar.f11210b.f10503a[((short) (mVar.f11235d & 255)) - 1];
                                fVar.f11212d.put(Short.valueOf(lVar.f11234c), lVar);
                                g.P(byteBuffer, jPosition2 + mVar.a());
                                break;
                            case 515:
                                mf.a aVar = (mf.a) aVarA;
                                for (long j10 = 0; j10 < aVar.f11199d; j10++) {
                                    byteBuffer.getInt();
                                    int i16 = 0;
                                    while (true) {
                                        if (i16 >= 128) {
                                            break;
                                        }
                                        if (byteBuffer.getChar() == 0) {
                                            byteBuffer.position(byteBuffer.position() + ((127 - i16) * 2));
                                        } else {
                                            i16++;
                                        }
                                    }
                                }
                                g.P(byteBuffer, jPosition2 + aVarA.a());
                                break;
                            default:
                                throw new b0(da.b.a(s10, "unexpected chunk type: 0x"), 6);
                        }
                    } else {
                        byteBuffer.position(byteBuffer.remaining() + byteBuffer.position());
                    }
                } else {
                    cVar = null;
                }
            }
            cVar2 = cVar;
            ((h) bVar.f10281e).f11218a.put(Short.valueOf(fVar.f11209a), fVar);
            i11 = i10 + 1;
            iVar2 = iVar;
        }
        this.f4960b = (h) bVar.f10281e;
    }

    public final void O(byte[] bArr, kf.e eVar) throws IOException {
        lf.a aVarB;
        String[] strArr;
        int i10 = 6;
        int i11 = 4;
        char c7 = 0;
        N();
        kf.a aVar = new kf.a(ByteBuffer.wrap(bArr), this.f4960b);
        Locale locale = l;
        if (locale != null) {
            aVar.f10276f = locale;
        }
        aVar.f10274d = eVar;
        if (aVar.b() == null || (aVarB = aVar.b()) == null) {
            return;
        }
        Charset charset = qf.b.f13189a;
        short s8 = aVarB.f10714a;
        if (1 != s8) {
            throw new b0("Expect chunk type:" + Integer.toHexString(1) + ", but got:" + Integer.toHexString(s8), 6);
        }
        ByteBuffer byteBuffer = aVar.f10273c;
        aVar.f10271a = qf.b.c(byteBuffer, (lf.g) aVarB);
        lf.a aVarB2 = aVar.b();
        if (aVarB2 == null) {
            return;
        }
        if (aVarB2.f10714a == 384) {
            int iA = ((of.b) aVarB2).a() / 4;
            long[] jArr = new long[iA];
            for (int i12 = 0; i12 < iA; i12++) {
                jArr[i12] = byteBuffer.getInt() & 4294967295L;
            }
            aVar.f10272b = new String[iA];
            for (int i13 = 0; i13 < iA; i13++) {
                String[] strArr2 = aVar.f10272b;
                long j10 = jArr[i13];
                String str = (String) of.a.f11772a.get(Integer.valueOf((int) j10));
                if (str == null) {
                    str = "AttrId:0x" + Long.toHexString(j10);
                }
                strArr2[i13] = str;
            }
            aVarB2 = aVar.b();
        }
        while (aVarB2 != null) {
            long jPosition = byteBuffer.position();
            short s10 = aVarB2.f10714a;
            switch (s10) {
                case 256:
                    int i14 = byteBuffer.getInt();
                    int i15 = byteBuffer.getInt();
                    ba.h hVar = new ba.h(i11);
                    if (i14 > 0) {
                        hVar.f2696b = aVar.f10271a.f10503a[i14];
                    }
                    if (i15 > 0) {
                        hVar.f2697c = aVar.f10271a.f10503a[i15];
                    }
                    aVar.f10274d.g(hVar);
                    break;
                case 257:
                    int i16 = byteBuffer.getInt();
                    int i17 = byteBuffer.getInt();
                    ba.h hVar2 = new ba.h(3);
                    if (i16 > 0) {
                        hVar2.f2696b = aVar.f10271a.f10503a[i16];
                    }
                    if (i17 > 0) {
                        hVar2.f2697c = aVar.f10271a.f10503a[i17];
                    }
                    aVar.f10274d.i(hVar2);
                    break;
                case AndroidBinXmlParser.Chunk.RES_XML_TYPE_START_ELEMENT /* 258 */:
                    int i18 = byteBuffer.getInt();
                    int i19 = byteBuffer.getInt();
                    v3.f fVar = new v3.f(24, c7);
                    if (i18 > 0) {
                        fVar.f16474b = aVar.f10271a.f10503a[i18];
                    }
                    fVar.f16475c = aVar.f10271a.f10503a[i19];
                    byteBuffer.getShort();
                    byteBuffer.getShort();
                    int i20 = byteBuffer.getShort() & HPKE.aead_EXPORT_ONLY;
                    byteBuffer.getShort();
                    byteBuffer.getShort();
                    byteBuffer.getShort();
                    y yVar = new y(i20);
                    for (int i21 = 0; i21 < i20; i21++) {
                        int i22 = byteBuffer.getInt();
                        int i23 = byteBuffer.getInt();
                        kf.b bVar = new kf.b();
                        if (i22 > 0) {
                            bVar.f10278b = aVar.f10271a.f10503a[i22];
                        }
                        String str2 = aVar.f10271a.f10503a[i23];
                        bVar.f10279c = str2;
                        if (str2.isEmpty() && (strArr = aVar.f10272b) != null && i23 < strArr.length) {
                            bVar.f10279c = strArr[i23];
                        }
                        int i24 = byteBuffer.getInt();
                        if (i24 > 0) {
                            bVar.f10280d = aVar.f10271a.f10503a[i24];
                        }
                        ab.a aVarB3 = qf.b.b(byteBuffer, aVar.f10271a);
                        bVar.f10281e = aVarB3;
                        if (aVar.f10274d != null) {
                            Locale locale2 = aVar.f10276f;
                            String strA = (String) bVar.f10280d;
                            if (strA == null) {
                                strA = aVarB3 != null ? aVarB3.f(aVar.f10275e, locale2) : "";
                            }
                            if (kf.a.f10270g.contains((String) bVar.f10279c) && strA != null && strA.length() != 0) {
                                int length = strA.length();
                                int i25 = 0;
                                while (true) {
                                    if (i25 >= length) {
                                        try {
                                            strA = kf.a.a((String) bVar.f10279c, strA);
                                        } catch (Exception unused) {
                                        }
                                    } else if (Character.isDigit(strA.charAt(i25))) {
                                        i25++;
                                    }
                                }
                            }
                            bVar.f10282f = strA;
                            ((kf.b[]) yVar.f10629b)[i21] = bVar;
                        }
                    }
                    fVar.f16476d = yVar;
                    kf.e eVar2 = aVar.f10274d;
                    if (eVar2 != null) {
                        eVar2.m(fVar);
                        break;
                    } else {
                        break;
                    }
                    break;
                case 259:
                    ba.h hVar3 = new ba.h(5);
                    int i26 = byteBuffer.getInt();
                    int i27 = byteBuffer.getInt();
                    if (i26 > 0) {
                        hVar3.f2696b = aVar.f10271a.f10503a[i26];
                    }
                    hVar3.f2697c = aVar.f10271a.f10503a[i27];
                    kf.e eVar3 = aVar.f10274d;
                    if (eVar3 != null) {
                        eVar3.f(hVar3);
                        break;
                    } else {
                        break;
                    }
                case SourceConst.IOCTL_FUNCTION_MIC1 /* 260 */:
                    int i28 = byteBuffer.getInt();
                    if (i28 > 0) {
                        String str3 = aVar.f10271a.f10503a[i28];
                    }
                    qf.b.b(byteBuffer, aVar.f10271a);
                    break;
                default:
                    if (s10 < 256 || s10 > 383) {
                        throw new b0(da.b.a(s10, "Unexpected chunk type:"), i10);
                    }
                    byteBuffer.position(byteBuffer.position() + aVarB2.a());
                    break;
                    break;
            }
            g.P(byteBuffer, jPosition + aVarB2.a());
            aVarB2 = aVar.b();
            i10 = 6;
            c7 = 0;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            ZipFile zipFile = this.f4967i;
            try {
                FileChannel fileChannel = this.f4969k;
                if (fileChannel != null) {
                    fileChannel.close();
                }
                if (zipFile != null) {
                    zipFile.close();
                }
                r();
            } finally {
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                try {
                    r();
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

    public final void r() {
        this.f4965g = null;
        this.f4960b = null;
        this.f4964f = null;
    }

    public b(String str) {
        this(new File(str));
    }
}
