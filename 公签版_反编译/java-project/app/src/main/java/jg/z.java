package jg;

import j$.lang.Iterable;
import j$.nio.charset.StandardCharsets;
import j$.util.Collection;
import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import j$.util.stream.StreamSupport;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.math.MathContext;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collections;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.function.IntToLongFunction;
import java.util.zip.CRC32;

/* loaded from: classes.dex */
public final class z implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final SeekableByteChannel f9984a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f9985b;

    /* renamed from: c, reason: collision with root package name */
    public int f9986c;

    /* renamed from: d, reason: collision with root package name */
    public final CRC32 f9987d;

    /* renamed from: e, reason: collision with root package name */
    public final CRC32 f9988e;

    /* renamed from: f, reason: collision with root package name */
    public long f9989f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f9990g;

    /* renamed from: h, reason: collision with root package name */
    public y f9991h;

    /* renamed from: i, reason: collision with root package name */
    public yg.b[] f9992i;

    /* renamed from: j, reason: collision with root package name */
    public List f9993j;

    /* renamed from: k, reason: collision with root package name */
    public final HashMap f9994k;
    public final a l;

    public z(File file, char[] cArr) throws IOException {
        SeekableByteChannel seekableByteChannelNewByteChannel = Files.newByteChannel(file.toPath(), EnumSet.of(StandardOpenOption.CREATE, StandardOpenOption.WRITE, StandardOpenOption.TRUNCATE_EXISTING), new FileAttribute[0]);
        this.f9985b = new ArrayList();
        this.f9987d = new CRC32();
        this.f9988e = new CRC32();
        this.f9993j = Collections.singletonList(new v(u.LZMA2, null));
        this.f9994k = new HashMap();
        this.f9984a = seekableByteChannelNewByteChannel;
        seekableByteChannelNewByteChannel.position(32L);
        if (cArr != null) {
            this.l = new a(cArr);
        }
    }

    public static n A(File file, String str) throws IOException {
        n nVar = new n();
        nVar.f9927c = file.isDirectory();
        nVar.f9925a = str;
        try {
            BasicFileAttributes attributes = Files.readAttributes(file.toPath(), (Class<BasicFileAttributes>) androidx.media3.exoplayer.video.i.b(), new LinkOption[0]);
            FileTime fileTimeLastModifiedTime = attributes.lastModifiedTime();
            boolean z = fileTimeLastModifiedTime != null;
            nVar.f9930f = z;
            if (z) {
                nVar.f9933i = fileTimeLastModifiedTime;
            }
            FileTime fileTimeCreationTime = attributes.creationTime();
            boolean z4 = fileTimeCreationTime != null;
            nVar.f9929e = z4;
            if (z4) {
                nVar.f9932h = fileTimeCreationTime;
            }
            FileTime fileTimeLastAccessTime = attributes.lastAccessTime();
            boolean z10 = fileTimeLastAccessTime != null;
            nVar.f9931g = z10;
            if (z10) {
                nVar.f9934j = fileTimeLastAccessTime;
            }
        } catch (IOException unused) {
            Date date = new Date(file.lastModified());
            MathContext mathContext = vg.b.f16995a;
            FileTime fileTimeFromMillis = FileTime.fromMillis(date.getTime());
            boolean z11 = fileTimeFromMillis != null;
            nVar.f9930f = z11;
            if (z11) {
                nVar.f9933i = fileTimeFromMillis;
            }
        }
        return nVar;
    }

    public static void M(DataOutputStream dataOutputStream, BitSet bitSet, int i10) throws IOException {
        int i11 = 7;
        int i12 = 0;
        for (int i13 = 0; i13 < i10; i13++) {
            i12 |= (bitSet.get(i13) ? 1 : 0) << i11;
            i11--;
            if (i11 < 0) {
                dataOutputStream.write(i12);
                i11 = 7;
                i12 = 0;
            }
        }
        if (i11 != 7) {
            dataOutputStream.write(i12);
        }
    }

    public static void N(DataOutput dataOutput, long j10) throws IOException {
        int i10 = 0;
        int i11 = 0;
        int i12 = 128;
        while (true) {
            if (i10 >= 8) {
                break;
            }
            int i13 = i10 + 1;
            if (j10 < (1 << (i13 * 7))) {
                i11 = (int) (i11 | (j10 >>> (i10 * 8)));
                break;
            } else {
                i11 |= i12;
                i12 >>>= 1;
                i10 = i13;
            }
        }
        dataOutput.write(i11);
        while (i10 > 0) {
            dataOutput.write((int) (255 & j10));
            j10 >>>= 8;
            i10--;
        }
    }

    public final void J() throws IOException {
        int i10;
        if (this.f9990g) {
            throw new IOException("This archive has already been finished");
        }
        this.f9990g = true;
        long jPosition = this.f9984a.position();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        dataOutputStream.write(1);
        dataOutputStream.write(4);
        int i11 = this.f9986c;
        ArrayList arrayList = this.f9985b;
        if (i11 > 0) {
            dataOutputStream.write(6);
            N(dataOutputStream, 0L);
            N(dataOutputStream, this.f9986c & 4294967295L);
            dataOutputStream.write(9);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                n nVar = (n) it.next();
                if (nVar.f9926b) {
                    N(dataOutputStream, nVar.f9940q);
                }
            }
            dataOutputStream.write(10);
            dataOutputStream.write(1);
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                n nVar2 = (n) it2.next();
                if (nVar2.f9926b) {
                    dataOutputStream.writeInt(Integer.reverseBytes((int) nVar2.f9938o));
                }
            }
            dataOutputStream.write(0);
            dataOutputStream.write(7);
            dataOutputStream.write(11);
            N(dataOutputStream, this.f9986c);
            dataOutputStream.write(0);
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                n nVar3 = (n) it3.next();
                if (nVar3.f9926b) {
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    int i12 = 0;
                    for (v vVar : K(nVar3)) {
                        i12++;
                        byte[] bArr = vVar.f9980a.f9979a;
                        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                        byte[] bArrC = ((d) l.f9913a.get(vVar.f9980a)).c(vVar.f9981b);
                        int length = bArrCopyOf.length;
                        if (bArrC.length > 0) {
                            length |= 32;
                        }
                        byteArrayOutputStream2.write(length);
                        byteArrayOutputStream2.write(bArrCopyOf);
                        if (bArrC.length > 0) {
                            byteArrayOutputStream2.write(bArrC.length);
                            byteArrayOutputStream2.write(bArrC);
                        }
                    }
                    N(dataOutputStream, i12);
                    dataOutputStream.write(byteArrayOutputStream2.toByteArray());
                    long j10 = 0;
                    while (j10 < i12 - 1) {
                        long j11 = 1 + j10;
                        N(dataOutputStream, j11);
                        N(dataOutputStream, j10);
                        j10 = j11;
                    }
                }
            }
            dataOutputStream.write(12);
            Iterator it4 = arrayList.iterator();
            while (it4.hasNext()) {
                n nVar4 = (n) it4.next();
                if (nVar4.f9926b) {
                    long[] jArr = (long[]) this.f9994k.get(nVar4);
                    if (jArr != null) {
                        for (long j12 : jArr) {
                            N(dataOutputStream, j12);
                        }
                    }
                    N(dataOutputStream, nVar4.f9939p);
                }
            }
            dataOutputStream.write(10);
            dataOutputStream.write(1);
            Iterator it5 = arrayList.iterator();
            while (it5.hasNext()) {
                n nVar5 = (n) it5.next();
                if (nVar5.f9926b) {
                    dataOutputStream.writeInt(Integer.reverseBytes((int) nVar5.f9937n));
                }
            }
            i10 = 0;
            dataOutputStream.write(0);
        } else {
            i10 = 0;
        }
        dataOutputStream.write(8);
        dataOutputStream.write(i10);
        dataOutputStream.write(i10);
        dataOutputStream.write(5);
        N(dataOutputStream, arrayList.size());
        if (Collection.EL.stream(arrayList).anyMatch(new eh.h(2))) {
            dataOutputStream.write(14);
            BitSet bitSet = new BitSet(arrayList.size());
            for (int i13 = 0; i13 < arrayList.size(); i13++) {
                bitSet.set(i13, !((n) arrayList.get(i13)).f9926b);
            }
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream2 = new DataOutputStream(byteArrayOutputStream3);
            M(dataOutputStream2, bitSet, arrayList.size());
            dataOutputStream2.flush();
            byte[] byteArray = byteArrayOutputStream3.toByteArray();
            N(dataOutputStream, byteArray.length);
            dataOutputStream.write(byteArray);
        }
        BitSet bitSet2 = new BitSet(0);
        Iterator it6 = arrayList.iterator();
        boolean z = false;
        int i14 = 0;
        while (it6.hasNext()) {
            n nVar6 = (n) it6.next();
            if (!nVar6.f9926b) {
                boolean z4 = !nVar6.f9927c;
                bitSet2.set(i14, z4);
                z |= z4;
                i14++;
            }
        }
        if (z) {
            dataOutputStream.write(15);
            ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream3 = new DataOutputStream(byteArrayOutputStream4);
            M(dataOutputStream3, bitSet2, i14);
            dataOutputStream3.flush();
            byte[] byteArray2 = byteArrayOutputStream4.toByteArray();
            N(dataOutputStream, byteArray2.length);
            dataOutputStream.write(byteArray2);
        }
        BitSet bitSet3 = new BitSet(0);
        Iterator it7 = arrayList.iterator();
        boolean z10 = false;
        int i15 = 0;
        while (it7.hasNext()) {
            n nVar7 = (n) it7.next();
            if (!nVar7.f9926b) {
                boolean z11 = nVar7.f9928d;
                bitSet3.set(i15, z11);
                z10 |= z11;
                i15++;
            }
        }
        if (z10) {
            dataOutputStream.write(16);
            ByteArrayOutputStream byteArrayOutputStream5 = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream4 = new DataOutputStream(byteArrayOutputStream5);
            M(dataOutputStream4, bitSet3, i15);
            dataOutputStream4.flush();
            byte[] byteArray3 = byteArrayOutputStream5.toByteArray();
            N(dataOutputStream, byteArray3.length);
            dataOutputStream.write(byteArray3);
        }
        dataOutputStream.write(17);
        ByteArrayOutputStream byteArrayOutputStream6 = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream5 = new DataOutputStream(byteArrayOutputStream6);
        dataOutputStream5.write(0);
        Iterator it8 = arrayList.iterator();
        while (it8.hasNext()) {
            dataOutputStream5.write(((n) it8.next()).f9925a.getBytes(StandardCharsets.UTF_16LE));
            dataOutputStream5.writeShort(0);
        }
        dataOutputStream5.flush();
        byte[] byteArray4 = byteArrayOutputStream6.toByteArray();
        N(dataOutputStream, byteArray4.length);
        dataOutputStream.write(byteArray4);
        Iterator it9 = arrayList.iterator();
        int i16 = 0;
        while (it9.hasNext()) {
            if (((n) it9.next()).f9929e) {
                i16++;
            }
        }
        if (i16 > 0) {
            dataOutputStream.write(18);
            ByteArrayOutputStream byteArrayOutputStream7 = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream6 = new DataOutputStream(byteArrayOutputStream7);
            if (i16 != arrayList.size()) {
                dataOutputStream6.write(0);
                BitSet bitSet4 = new BitSet(arrayList.size());
                for (int i17 = 0; i17 < arrayList.size(); i17++) {
                    bitSet4.set(i17, ((n) arrayList.get(i17)).f9929e);
                }
                M(dataOutputStream6, bitSet4, arrayList.size());
            } else {
                dataOutputStream6.write(1);
            }
            dataOutputStream6.write(0);
            Iterator it10 = arrayList.iterator();
            while (it10.hasNext()) {
                n nVar8 = (n) it10.next();
                boolean z12 = nVar8.f9929e;
                if (z12) {
                    if (!z12) {
                        throw new UnsupportedOperationException("The entry doesn't have this timestamp");
                    }
                    dataOutputStream6.writeLong(Long.reverseBytes(vg.b.b(nVar8.f9932h)));
                }
            }
            dataOutputStream6.flush();
            byte[] byteArray5 = byteArrayOutputStream7.toByteArray();
            N(dataOutputStream, byteArray5.length);
            dataOutputStream.write(byteArray5);
        }
        Iterator it11 = arrayList.iterator();
        int i18 = 0;
        while (it11.hasNext()) {
            if (((n) it11.next()).f9931g) {
                i18++;
            }
        }
        if (i18 > 0) {
            dataOutputStream.write(19);
            ByteArrayOutputStream byteArrayOutputStream8 = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream7 = new DataOutputStream(byteArrayOutputStream8);
            if (i18 != arrayList.size()) {
                dataOutputStream7.write(0);
                BitSet bitSet5 = new BitSet(arrayList.size());
                for (int i19 = 0; i19 < arrayList.size(); i19++) {
                    bitSet5.set(i19, ((n) arrayList.get(i19)).f9931g);
                }
                M(dataOutputStream7, bitSet5, arrayList.size());
            } else {
                dataOutputStream7.write(1);
            }
            dataOutputStream7.write(0);
            Iterator it12 = arrayList.iterator();
            while (it12.hasNext()) {
                n nVar9 = (n) it12.next();
                boolean z13 = nVar9.f9931g;
                if (z13) {
                    if (!z13) {
                        throw new UnsupportedOperationException("The entry doesn't have this timestamp");
                    }
                    dataOutputStream7.writeLong(Long.reverseBytes(vg.b.b(nVar9.f9934j)));
                }
            }
            dataOutputStream7.flush();
            byte[] byteArray6 = byteArrayOutputStream8.toByteArray();
            N(dataOutputStream, byteArray6.length);
            dataOutputStream.write(byteArray6);
        }
        Iterator it13 = arrayList.iterator();
        int i20 = 0;
        while (it13.hasNext()) {
            if (((n) it13.next()).f9930f) {
                i20++;
            }
        }
        if (i20 > 0) {
            dataOutputStream.write(20);
            ByteArrayOutputStream byteArrayOutputStream9 = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream8 = new DataOutputStream(byteArrayOutputStream9);
            if (i20 != arrayList.size()) {
                dataOutputStream8.write(0);
                BitSet bitSet6 = new BitSet(arrayList.size());
                for (int i21 = 0; i21 < arrayList.size(); i21++) {
                    bitSet6.set(i21, ((n) arrayList.get(i21)).f9930f);
                }
                M(dataOutputStream8, bitSet6, arrayList.size());
            } else {
                dataOutputStream8.write(1);
            }
            dataOutputStream8.write(0);
            Iterator it14 = arrayList.iterator();
            while (it14.hasNext()) {
                n nVar10 = (n) it14.next();
                boolean z14 = nVar10.f9930f;
                if (z14) {
                    if (!z14) {
                        throw new UnsupportedOperationException("The entry doesn't have this timestamp");
                    }
                    dataOutputStream8.writeLong(Long.reverseBytes(vg.b.b(nVar10.f9933i)));
                }
            }
            dataOutputStream8.flush();
            byte[] byteArray7 = byteArrayOutputStream9.toByteArray();
            N(dataOutputStream, byteArray7.length);
            dataOutputStream.write(byteArray7);
        }
        Iterator it15 = arrayList.iterator();
        int i22 = 0;
        while (it15.hasNext()) {
            if (((n) it15.next()).f9935k) {
                i22++;
            }
        }
        if (i22 > 0) {
            dataOutputStream.write(21);
            ByteArrayOutputStream byteArrayOutputStream10 = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream9 = new DataOutputStream(byteArrayOutputStream10);
            if (i22 != arrayList.size()) {
                dataOutputStream9.write(0);
                BitSet bitSet7 = new BitSet(arrayList.size());
                for (int i23 = 0; i23 < arrayList.size(); i23++) {
                    bitSet7.set(i23, ((n) arrayList.get(i23)).f9935k);
                }
                M(dataOutputStream9, bitSet7, arrayList.size());
            } else {
                dataOutputStream9.write(1);
            }
            dataOutputStream9.write(0);
            Iterator it16 = arrayList.iterator();
            while (it16.hasNext()) {
                n nVar11 = (n) it16.next();
                if (nVar11.f9935k) {
                    dataOutputStream9.writeInt(Integer.reverseBytes(nVar11.l));
                }
            }
            dataOutputStream9.flush();
            byte[] byteArray8 = byteArrayOutputStream10.toByteArray();
            N(dataOutputStream, byteArray8.length);
            dataOutputStream.write(byteArray8);
        }
        dataOutputStream.write(0);
        dataOutputStream.write(0);
        dataOutputStream.flush();
        byte[] byteArray9 = byteArrayOutputStream.toByteArray();
        this.f9984a.write(ByteBuffer.wrap(byteArray9));
        CRC32 crc32 = new CRC32();
        crc32.update(byteArray9);
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(32).order(ByteOrder.LITTLE_ENDIAN);
        this.f9984a.position(0L);
        byteBufferOrder.put(t.f9955j);
        byteBufferOrder.put((byte) 0).put((byte) 2);
        byteBufferOrder.putInt(0);
        byteBufferOrder.putLong(jPosition - 32).putLong(byteArray9.length & 4294967295L).putInt((int) crc32.getValue());
        crc32.reset();
        crc32.update(byteBufferOrder.array(), 12, 20);
        byteBufferOrder.putInt(8, (int) crc32.getValue());
        byteBufferOrder.flip();
        this.f9984a.write(byteBufferOrder);
    }

    public final Iterable K(n nVar) {
        List list = nVar.r;
        if (list == null) {
            list = this.f9993j;
        }
        a aVar = this.l;
        return aVar != null ? (Iterable) Stream.CC.concat(Stream.CC.of(new v(u.AES256SHA256, aVar)), StreamSupport.stream(Iterable.EL.spliterator(list), false)).collect(Collectors.toList()) : list;
    }

    public final void L(int i10, byte[] bArr) throws IOException {
        if (i10 > 0) {
            if (this.f9991h == null) {
                ArrayList arrayList = this.f9985b;
                if (arrayList.isEmpty()) {
                    throw new IllegalStateException("No current 7z entry");
                }
                OutputStream jVar = new j(this);
                ArrayList arrayList2 = new ArrayList();
                boolean z = true;
                for (v vVar : K((n) ta.q.h(1, arrayList))) {
                    if (!z) {
                        yg.b bVar = new yg.b(jVar);
                        arrayList2.add(bVar);
                        jVar = bVar;
                    }
                    u uVar = vVar.f9980a;
                    d dVar = (d) l.f9913a.get(uVar);
                    if (dVar == null) {
                        throw new IOException("Unsupported compression method " + uVar);
                    }
                    jVar = dVar.b(jVar, vVar.f9981b);
                    z = false;
                }
                if (!arrayList2.isEmpty()) {
                    this.f9992i = (yg.b[]) arrayList2.toArray(new yg.b[0]);
                }
                this.f9991h = new y(this, jVar);
            }
            this.f9991h.write(bArr, 0, i10);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            if (!this.f9990g) {
                J();
            }
        } finally {
            this.f9984a.close();
        }
    }

    /* JADX WARN: Type inference failed for: r2v7, types: [jg.x] */
    public final void r() throws IOException {
        long j10;
        y yVar = this.f9991h;
        if (yVar != null) {
            yVar.flush();
            this.f9991h.close();
        }
        n nVar = (n) ta.q.h(1, this.f9985b);
        long j11 = this.f9989f;
        CRC32 crc32 = this.f9988e;
        CRC32 crc322 = this.f9987d;
        if (j11 > 0) {
            nVar.f9926b = true;
            this.f9986c++;
            y yVar2 = this.f9991h;
            synchronized (yVar2) {
                j10 = yVar2.f19201a;
            }
            nVar.f9939p = j10;
            nVar.f9940q = this.f9989f;
            nVar.f9937n = crc322.getValue();
            nVar.f9938o = crc32.getValue();
            nVar.f9936m = true;
            yg.b[] bVarArr = this.f9992i;
            if (bVarArr != null) {
                long[] jArr = new long[bVarArr.length];
                Arrays.setAll(jArr, (IntToLongFunction) new IntToLongFunction() { // from class: jg.x
                    @Override // java.util.function.IntToLongFunction
                    public final long applyAsLong(int i10) {
                        long j12;
                        yg.b bVar = this.f9982a.f9992i[i10];
                        synchronized (bVar) {
                            j12 = bVar.f19201a;
                        }
                        return j12;
                    }
                });
                this.f9994k.put(nVar, jArr);
            }
        } else {
            nVar.f9926b = false;
            nVar.f9939p = 0L;
            nVar.f9940q = 0L;
            nVar.f9936m = false;
        }
        this.f9991h = null;
        this.f9992i = null;
        crc322.reset();
        crc32.reset();
        this.f9989f = 0L;
    }
}
