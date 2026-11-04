package kg;

import eh.h;
import j$.time.TimeConversions;
import j$.util.Collection;
import j$.util.Comparator$CC;
import j$.util.Objects;
import j$.util.stream.Collectors;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.file.attribute.FileTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import jg.q;

/* loaded from: classes.dex */
public final class d extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f10304a;

    /* renamed from: b, reason: collision with root package name */
    public long f10305b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f10306c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f10307d;

    /* renamed from: e, reason: collision with root package name */
    public final int f10308e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f10309f;

    /* renamed from: g, reason: collision with root package name */
    public long f10310g;

    /* renamed from: h, reason: collision with root package name */
    public long f10311h;

    /* renamed from: i, reason: collision with root package name */
    public ArrayList f10312i;

    /* renamed from: j, reason: collision with root package name */
    public int f10313j;

    /* renamed from: k, reason: collision with root package name */
    public c f10314k;
    public final lg.a l;

    /* renamed from: m, reason: collision with root package name */
    public HashMap f10315m;

    /* renamed from: n, reason: collision with root package name */
    public final ArrayList f10316n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(InputStream inputStream) {
        Charset charsetDefaultCharset;
        super(inputStream);
        int i10 = sg.a.f14562a;
        Charset charsetDefaultCharset2 = Charset.defaultCharset();
        this.f10304a = new byte[1];
        if (charsetDefaultCharset2 == null) {
            Charset.defaultCharset();
        }
        this.f10306c = new byte[256];
        this.f10315m = new HashMap();
        this.f10316n = new ArrayList();
        int i11 = lg.c.f10728a;
        try {
            charsetDefaultCharset = Charset.defaultCharset();
        } catch (IllegalArgumentException | NullPointerException unused) {
            charsetDefaultCharset = Charset.defaultCharset();
        }
        this.l = new lg.a(charsetDefaultCharset);
        this.f10307d = new byte[512];
        this.f10308e = 10240;
    }

    public final void A() throws IOException {
        List<f> listEmptyList;
        this.f10313j = -1;
        this.f10312i = new ArrayList();
        c cVar = this.f10314k;
        ArrayList arrayList = cVar.f10297e;
        if (arrayList == null || arrayList.isEmpty()) {
            listEmptyList = Collections.emptyList();
        } else {
            listEmptyList = (List) Collection.EL.stream(cVar.f10297e).filter(new h(3)).sorted(Comparator$CC.comparingLong(new q(1))).collect(Collectors.toList());
            int size = listEmptyList.size();
            int i10 = 0;
            while (i10 < size) {
                f fVar = (f) listEmptyList.get(i10);
                i10++;
                if (i10 < size && fVar.f10317a + fVar.f10318b > ((f) listEmptyList.get(i10)).f10317a) {
                    throw new IOException(g.b.l(cVar.f10293a, " overlap each other.", new StringBuilder("Corrupted TAR archive. Sparse blocks for ")));
                }
                if (fVar.f10317a + fVar.f10318b < 0) {
                    throw new IOException(g.b.l(cVar.f10293a, " too large.", new StringBuilder("Unreadable TAR archive. Offset and numbytes for sparse block in ")));
                }
            }
            if (!listEmptyList.isEmpty()) {
                f fVar2 = (f) listEmptyList.get(size - 1);
                if (fVar2.f10317a + fVar2.f10318b > (!cVar.d() ? cVar.f10295c : cVar.f10299g)) {
                    throw new IOException("Corrupted TAR archive. Sparse block extends beyond real size of the entry");
                }
            }
        }
        e eVar = new e();
        long j10 = 0;
        for (f fVar3 : listEmptyList) {
            long j11 = fVar3.f10317a - j10;
            if (j11 < 0) {
                throw new IOException("Corrupted struct sparse detected");
            }
            if (j11 > 0) {
                ArrayList arrayList2 = this.f10312i;
                xg.a aVar = new xg.a();
                aVar.f15098b = new tg.a(1, eVar);
                aVar.f18463e = Math.max(-1L, fVar3.f10317a - j10);
                arrayList2.add(new xg.b(aVar));
            }
            if (fVar3.f10318b > 0) {
                ArrayList arrayList3 = this.f10312i;
                xg.a aVar2 = new xg.a();
                aVar2.P0(((FilterInputStream) this).in);
                aVar2.f18463e = Math.max(-1L, fVar3.f10318b);
                arrayList3.add(new xg.b(aVar2));
            }
            j10 = fVar3.f10317a + fVar3.f10318b;
        }
        if (this.f10312i.isEmpty()) {
            return;
        }
        this.f10313j = 0;
    }

    public final void J(long j10) {
        if (j10 != -1) {
            this.f10305b += j10;
        }
    }

    public final byte[] K() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            byte[] bArr = this.f10306c;
            int i10 = read(bArr);
            if (i10 < 0) {
                break;
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
        L();
        if (this.f10314k == null) {
            return null;
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        int length = byteArray.length;
        while (length > 0 && byteArray[length - 1] == 0) {
            length--;
        }
        return length != byteArray.length ? Arrays.copyOf(byteArray, length) : byteArray;
    }

    public final c L() throws IOException {
        boolean z;
        if (this.f10309f) {
            return null;
        }
        if (this.f10314k != null) {
            int i10 = rg.d.f13776a;
            sg.b.a(this, Long.MAX_VALUE, new ah.a(1));
            if (!N()) {
                long j10 = this.f10310g;
                if (j10 > 0 && j10 % this.f10307d.length != 0) {
                    long jAvailable = ((FilterInputStream) this).in.available();
                    long j11 = this.f10310g;
                    byte[] bArr = this.f10307d;
                    long length = (((j11 / bArr.length) + 1) * bArr.length) - j11;
                    long jA = sg.b.a(((FilterInputStream) this).in, length, new ah.a(1));
                    if (((FilterInputStream) this).in instanceof FileInputStream) {
                        jA = Math.min(jA, jAvailable);
                    }
                    if (jA != length) {
                        throw new IOException("Truncated TAR archive");
                    }
                    J(jA);
                }
            }
        }
        byte[] bArrM = M();
        if (bArrM == null) {
            this.f10314k = null;
            return null;
        }
        try {
            HashMap map = this.f10315m;
            lg.a aVar = this.l;
            c cVar = new c(false);
            try {
                cVar.f(map, bArrM, aVar);
                this.f10314k = cVar;
                this.f10311h = 0L;
                this.f10310g = cVar.f10295c;
                if (cVar.f10296d == 75) {
                    byte[] bArrK = K();
                    if (bArrK == null) {
                        return null;
                    }
                    c cVar2 = this.f10314k;
                    this.l.decode(bArrK);
                    cVar2.getClass();
                }
                if (this.f10314k.f10296d == 76) {
                    byte[] bArrK2 = K();
                    if (bArrK2 == null) {
                        return null;
                    }
                    String strDecode = this.l.decode(bArrK2);
                    this.f10314k.g(strDecode);
                    if (this.f10314k.b() && !strDecode.endsWith("/")) {
                        this.f10314k.g(strDecode.concat("/"));
                    }
                }
                if (this.f10314k.f10296d == 103) {
                    this.f10315m = g.e(this, this.f10316n, this.f10315m, this.f10310g);
                    L();
                    if (this.f10314k == null) {
                        throw new IOException("Error detected parsing the pax header");
                    }
                }
                try {
                    byte b10 = this.f10314k.f10296d;
                    if (b10 == 120 || b10 == 88) {
                        O();
                    } else if (!this.f10315m.isEmpty()) {
                        r(this.f10315m, this.f10316n);
                    }
                    c cVar3 = this.f10314k;
                    if (cVar3.f10296d == 83) {
                        if (cVar3.f10298f) {
                            do {
                                byte[] bArrM2 = M();
                                if (bArrM2 == null) {
                                    throw new IOException("premature end of tar archive. Didn't find extended_header after header with extended flag.");
                                }
                                ArrayList arrayList = new ArrayList(g.g(0, 21, bArrM2));
                                z = bArrM2[504] == 1;
                                this.f10314k.f10297e.addAll(arrayList);
                            } while (z);
                        }
                        A();
                    }
                    c cVar4 = this.f10314k;
                    this.f10310g = cVar4.f10295c;
                    return cVar4;
                } catch (NumberFormatException e7) {
                    throw new IOException("Error detected parsing the pax header", e7);
                }
            } catch (IllegalArgumentException e10) {
                throw new IOException("Corrupted TAR archive.", e10);
            }
        } catch (IllegalArgumentException e11) {
            throw new IOException("Error detected parsing the header", e11);
        }
    }

    public final byte[] M() throws IOException {
        boolean z;
        byte[] bArrP = P();
        boolean z4 = false;
        if (bArrP != null) {
            int length = this.f10307d.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (bArrP[i10] != 0) {
                    z = false;
                    break;
                }
            }
            z = true;
        } else {
            z = true;
        }
        this.f10309f = z;
        if (!z || bArrP == null) {
            return bArrP;
        }
        boolean zMarkSupported = ((FilterInputStream) this).in.markSupported();
        if (zMarkSupported) {
            ((FilterInputStream) this).in.mark(this.f10307d.length);
        }
        try {
            byte[] bArrP2 = P();
            if (bArrP2 != null) {
                int length2 = this.f10307d.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    if (bArrP2[i11] != 0) {
                        break;
                    }
                }
                z4 = true;
            } else {
                z4 = true;
            }
            if (!z4 && zMarkSupported) {
            }
            long j10 = this.f10305b % this.f10308e;
            if (j10 > 0) {
                InputStream inputStream = ((FilterInputStream) this).in;
                long j11 = this.f10308e - j10;
                int i12 = rg.d.f13776a;
                J(sg.b.a(inputStream, j11, new ah.a(1)));
            }
            return null;
        } finally {
            if (zMarkSupported) {
                this.f10305b -= this.f10307d.length;
                ((FilterInputStream) this).in.reset();
            }
        }
    }

    public final boolean N() {
        c cVar = this.f10314k;
        return cVar != null && cVar.b();
    }

    public final void O() throws IOException {
        ArrayList arrayList = new ArrayList();
        HashMap mapE = g.e(this, arrayList, this.f10315m, this.f10310g);
        long j10 = 0;
        char c7 = 1;
        if (mapE.containsKey("GNU.sparse.map")) {
            String str = (String) mapE.get("GNU.sparse.map");
            ArrayList arrayList2 = new ArrayList();
            String[] strArrSplit = str.split(",");
            if (strArrSplit.length % 2 == 1) {
                throw new IOException("Corrupted TAR archive. Bad format in GNU.sparse.map PAX Header");
            }
            for (int i10 = 0; i10 < strArrSplit.length; i10 += 2) {
                long jE = rg.b.e(strArrSplit[i10]);
                if (jE < 0) {
                    throw new IOException("Corrupted TAR archive. Sparse struct offset contains negative value");
                }
                long jE2 = rg.b.e(strArrSplit[i10 + 1]);
                if (jE2 < 0) {
                    throw new IOException("Corrupted TAR archive. Sparse struct numbytes contains negative value");
                }
                arrayList2.add(new f(jE, jE2));
            }
            arrayList = new ArrayList(Collections.unmodifiableList(arrayList2));
        }
        L();
        if (this.f10314k == null) {
            throw new IOException("premature end of tar archive. Didn't find any entry after PAX header.");
        }
        r(mapE, arrayList);
        if (this.f10314k.f10301i) {
            InputStream inputStream = ((FilterInputStream) this).in;
            int length = this.f10307d.length;
            ArrayList arrayList3 = new ArrayList();
            long[] jArrF = g.f(inputStream);
            long j11 = jArrF[0];
            if (j11 < 0) {
                throw new IOException("Corrupted TAR archive. Negative value in sparse headers block");
            }
            long j12 = jArrF[1];
            while (true) {
                long j13 = j11 - 1;
                if (j11 <= j10) {
                    long j14 = length;
                    int i11 = rg.d.f13776a;
                    sg.b.a(inputStream, j14 - (j12 % j14), new ah.a(1));
                    this.f10314k.f10297e = arrayList3;
                    break;
                }
                long[] jArrF2 = g.f(inputStream);
                long j15 = jArrF2[0];
                if (j15 < j10) {
                    throw new IOException("Corrupted TAR archive. Sparse header block offset contains negative value");
                }
                long j16 = j12 + jArrF2[c7];
                long[] jArrF3 = g.f(inputStream);
                long j17 = jArrF3[0];
                if (j17 < j10) {
                    throw new IOException("Corrupted TAR archive. Sparse header block numbytes contains negative value");
                }
                j12 = j16 + jArrF3[1];
                arrayList3.add(new f(j15, j17));
                j11 = j13;
                j10 = 0;
                c7 = 1;
            }
        }
        A();
    }

    public final byte[] P() throws IOException {
        int i10;
        InputStream inputStream = ((FilterInputStream) this).in;
        byte[] bArr = this.f10307d;
        int i11 = rg.d.f13776a;
        int length = bArr.length;
        if (length < 0 || length > bArr.length || length < 0) {
            throw new IndexOutOfBoundsException();
        }
        byte[] bArr2 = sg.b.f14563a;
        if (length == 0) {
            i10 = 0;
        } else {
            Objects.requireNonNull(inputStream);
            if (length < 0) {
                throw new IllegalArgumentException(da.b.a(length, "Length must not be negative: "));
            }
            int i12 = length;
            while (i12 > 0) {
                int i13 = inputStream.read(bArr, length - i12, i12);
                if (-1 == i13) {
                    break;
                }
                i12 -= i13;
            }
            i10 = length - i12;
        }
        J(i10);
        byte[] bArr3 = this.f10307d;
        if (i10 != bArr3.length) {
            return null;
        }
        return bArr3;
    }

    public final int Q(int i10, int i11, byte[] bArr) throws IOException {
        ArrayList arrayList = this.f10312i;
        if (arrayList == null || arrayList.isEmpty()) {
            return ((FilterInputStream) this).in.read(bArr, i10, i11);
        }
        if (this.f10313j >= this.f10312i.size()) {
            return -1;
        }
        int i12 = ((InputStream) this.f10312i.get(this.f10313j)).read(bArr, i10, i11);
        if (this.f10313j == this.f10312i.size() - 1) {
            return i12;
        }
        if (i12 == -1) {
            this.f10313j++;
            return Q(i10, i11, bArr);
        }
        if (i12 >= i11) {
            return i12;
        }
        this.f10313j++;
        int iQ = Q(i10 + i12, i11 - i12, bArr);
        return iQ == -1 ? i12 : i12 + iQ;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        if (N()) {
            return 0;
        }
        c cVar = this.f10314k;
        long j10 = (!cVar.d() ? cVar.f10295c : cVar.f10299g) - this.f10311h;
        if (j10 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ArrayList arrayList = this.f10312i;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((InputStream) it.next()).close();
            }
        }
        ((FilterInputStream) this).in.close();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i10) {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    public final void r(HashMap map, ArrayList arrayList) throws IOException {
        String str;
        String str2;
        c cVar = this.f10314k;
        cVar.getClass();
        for (Map.Entry entry : map.entrySet()) {
            str = (String) entry.getKey();
            str2 = (String) entry.getValue();
            str.getClass();
            switch (str) {
                case "SCHILY.devmajor":
                    int iD = rg.b.d(str2);
                    if (iD < 0) {
                        throw new IOException("Corrupted TAR archive. Dev-Major is negative");
                    }
                    if (iD < 0) {
                        throw new IllegalArgumentException(da.b.a(iD, "Major device number is out of range: "));
                    }
                    break;
                case "SCHILY.devminor":
                    int iD2 = rg.b.d(str2);
                    if (iD2 < 0) {
                        throw new IOException("Corrupted TAR archive. Dev-Minor is negative");
                    }
                    if (iD2 < 0) {
                        throw new IllegalArgumentException(da.b.a(iD2, "Minor device number is out of range: "));
                    }
                    break;
                case "GNU.sparse.realsize":
                    cVar.f10300h = true;
                    cVar.f10301i = true;
                    if (map.containsKey("GNU.sparse.name")) {
                        cVar.f10293a = (String) map.get("GNU.sparse.name");
                    }
                    if (map.containsKey("GNU.sparse.realsize")) {
                        cVar.f10299g = rg.b.d((String) map.get("GNU.sparse.realsize"));
                        break;
                    } else {
                        break;
                    }
                case "GNU.sparse.size":
                    cVar.f10300h = true;
                    cVar.f10299g = rg.b.d((String) map.get("GNU.sparse.size"));
                    if (map.containsKey("GNU.sparse.name")) {
                        cVar.f10293a = (String) map.get("GNU.sparse.name");
                        break;
                    } else {
                        break;
                    }
                case "gid":
                    rg.b.e(str2);
                    break;
                case "uid":
                    rg.b.e(str2);
                    break;
                case "path":
                    cVar.g(str2);
                    break;
                case "size":
                    long jE = rg.b.e(str2);
                    if (jE < 0) {
                        throw new IOException("Corrupted TAR archive. Entry size is negative");
                    }
                    if (jE < 0) {
                        throw new IllegalArgumentException(ta.q.j(jE, "Size is out of range: "));
                    }
                    cVar.f10295c = jE;
                    break;
                case "atime":
                    FileTime.from(TimeConversions.convert(c.e(str2)));
                    break;
                case "ctime":
                    FileTime.from(TimeConversions.convert(c.e(str2)));
                    break;
                case "gname":
                case "uname":
                case "linkpath":
                    break;
                case "mtime":
                    FileTime fileTimeFrom = FileTime.from(TimeConversions.convert(c.e(str2)));
                    Objects.requireNonNull(fileTimeFrom, "time");
                    eg.a.q(fileTimeFrom);
                    break;
                case "LIBARCHIVE.creationtime":
                    FileTime.from(TimeConversions.convert(c.e(str2)));
                    break;
                case "SCHILY.filetype":
                    if ("sparse".equals(str2)) {
                        cVar.f10302j = true;
                        if (map.containsKey("SCHILY.realsize")) {
                            cVar.f10299g = rg.b.e((String) map.get("SCHILY.realsize"));
                            break;
                        } else {
                            break;
                        }
                    } else {
                        break;
                    }
                default:
                    cVar.f10303k.put(str, str2);
                    break;
            }
        }
        this.f10314k.f10297e = arrayList;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        byte[] bArr = this.f10304a;
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j10) throws IOException {
        long jSkip;
        long jSkip2 = 0;
        if (j10 <= 0 || N()) {
            return 0L;
        }
        long jAvailable = ((FilterInputStream) this).in.available();
        c cVar = this.f10314k;
        long jMin = Math.min(j10, (!cVar.d() ? cVar.f10295c : cVar.f10299g) - this.f10311h);
        if (this.f10314k.d()) {
            ArrayList arrayList = this.f10312i;
            if (arrayList == null || arrayList.isEmpty()) {
                jSkip = ((FilterInputStream) this).in.skip(jMin);
            } else {
                while (jSkip2 < jMin && this.f10313j < this.f10312i.size()) {
                    jSkip2 += ((InputStream) this.f10312i.get(this.f10313j)).skip(jMin - jSkip2);
                    if (jSkip2 < jMin) {
                        this.f10313j++;
                    }
                }
                jSkip = jSkip2;
            }
        } else {
            InputStream inputStream = ((FilterInputStream) this).in;
            int i10 = rg.d.f13776a;
            jSkip = sg.b.a(inputStream, jMin, new ah.a(1));
            if (((FilterInputStream) this).in instanceof FileInputStream) {
                jSkip = Math.min(jSkip, jAvailable);
            }
            if (jSkip != jMin) {
                throw new IOException("Truncated TAR archive");
            }
        }
        J(jSkip);
        this.f10311h += jSkip;
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        long j10;
        int iQ;
        if (i11 == 0) {
            return 0;
        }
        if (this.f10309f || N()) {
            return -1;
        }
        c cVar = this.f10314k;
        if (cVar != null) {
            long j11 = this.f10311h;
            if (!cVar.d()) {
                j10 = cVar.f10295c;
            } else {
                j10 = cVar.f10299g;
            }
            if (j11 >= j10) {
                return -1;
            }
            int iMin = Math.min(i11, available());
            if (this.f10314k.d()) {
                iQ = Q(i10, iMin, bArr);
            } else {
                iQ = ((FilterInputStream) this).in.read(bArr, i10, iMin);
            }
            if (iQ != -1) {
                long j12 = iQ;
                J(j12);
                this.f10311h += j12;
            } else if (iMin <= 0) {
                this.f10309f = true;
            } else {
                throw new IOException("Truncated TAR archive");
            }
            return iQ;
        }
        throw new IllegalStateException("No current tar entry");
    }
}
