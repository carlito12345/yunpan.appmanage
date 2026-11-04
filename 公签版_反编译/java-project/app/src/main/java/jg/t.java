package jg;

import a2.w0;
import j$.lang.Iterable;
import j$.nio.charset.StandardCharsets;
import j$.util.Collection;
import j$.util.Map;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.Channels;
import java.nio.channels.SeekableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.function.IntFunction;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import org.bouncycastle.crypto.signers.PSSSigner;

/* loaded from: classes.dex */
public final class t implements Closeable {

    /* renamed from: j, reason: collision with root package name */
    public static final byte[] f9955j = {55, 122, PSSSigner.TRAILER_IMPLICIT, -81, 39, 28};

    /* renamed from: a, reason: collision with root package name */
    public final String f9956a;

    /* renamed from: b, reason: collision with root package name */
    public SeekableByteChannel f9957b;

    /* renamed from: c, reason: collision with root package name */
    public final e f9958c;

    /* renamed from: f, reason: collision with root package name */
    public InputStream f9961f;

    /* renamed from: g, reason: collision with root package name */
    public byte[] f9962g;

    /* renamed from: i, reason: collision with root package name */
    public final int f9964i;

    /* renamed from: d, reason: collision with root package name */
    public int f9959d = -1;

    /* renamed from: e, reason: collision with root package name */
    public int f9960e = -1;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f9963h = new ArrayList();

    /* JADX WARN: Code restructure failed: missing block: B:302:0x06c6, code lost:
    
        throw new java.io.IOException("Error parsing file names");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public t(SeekableByteChannel seekableByteChannel, String str, byte[] bArr, int i10) throws IllegalAccessException, NoSuchMethodException, InstantiationException, IOException, SecurityException, IllegalArgumentException, InvocationTargetException {
        m[] mVarArr;
        int i11;
        long j10;
        int i12 = 0;
        int i13 = 1;
        this.f9957b = seekableByteChannel;
        this.f9956a = str;
        this.f9964i = i10;
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(12).order(ByteOrder.LITTLE_ENDIAN);
        O(byteBufferOrder);
        byte[] bArr2 = new byte[6];
        byteBufferOrder.get(bArr2);
        if (!Arrays.equals(bArr2, f9955j)) {
            throw new IOException("Bad 7z signature");
        }
        byte b10 = byteBufferOrder.get();
        byte b11 = byteBufferOrder.get();
        if (b10 != 0) {
            throw new IOException(String.format("Unsupported 7z version (%d,%d)", Byte.valueOf(b10), Byte.valueOf(b11)));
        }
        long j11 = byteBufferOrder.getInt() & 4294967295L;
        if (j11 == 0) {
            long jPosition = this.f9957b.position();
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(20);
            O(byteBufferAllocate);
            this.f9957b.position(jPosition);
            while (byteBufferAllocate.hasRemaining()) {
                if (byteBufferAllocate.get() != 0) {
                }
            }
            throw new IOException("archive seems to be invalid.\nYou may want to retry and enable the tryToRecoverBrokenArchives if the archive could be a multi volume archive that has been closed prematurely.");
        }
        int i14 = xg.d.f18475g;
        xg.c cVar = new xg.c();
        cVar.f18472e = new CRC32();
        cVar.f15098b = new tg.a(1, new f(this.f9957b, 20L));
        cVar.f18473f = 20L;
        cVar.f18474g = j11;
        DataInputStream dataInputStream = new DataInputStream(new xg.d(cVar));
        try {
            long jReverseBytes = Long.reverseBytes(dataInputStream.readLong());
            if (jReverseBytes < 0 || jReverseBytes + 32 > this.f9957b.size()) {
                throw new IOException("nextHeaderOffset is out of bounds");
            }
            long jReverseBytes2 = Long.reverseBytes(dataInputStream.readLong());
            long j12 = jReverseBytes + jReverseBytes2;
            if (j12 < jReverseBytes || j12 + 32 > this.f9957b.size()) {
                throw new IOException("nextHeaderSize is out of bounds");
            }
            a0 a0Var = new a0(jReverseBytes, jReverseBytes2, Integer.reverseBytes(dataInputStream.readInt()) & 4294967295L);
            dataInputStream.close();
            long j13 = a0Var.f9879b;
            r(j13, "nextHeaderSize");
            int i15 = (int) j13;
            this.f9957b.position(a0Var.f9878a + 32);
            long jPosition2 = this.f9957b.position();
            CheckedInputStream checkedInputStream = new CheckedInputStream(Channels.newInputStream(this.f9957b), new CRC32());
            long j14 = i15;
            if (checkedInputStream.skip(j14) != j14) {
                throw new IOException("Problem computing NextHeader CRC-32");
            }
            if (a0Var.f9880c != checkedInputStream.getChecksum().getValue()) {
                throw new IOException("NextHeader CRC-32 mismatch");
            }
            this.f9957b.position(jPosition2);
            e eVar = new e();
            ByteBuffer byteBufferOrder2 = ByteBuffer.allocate(i15).order(ByteOrder.LITTLE_ENDIAN);
            O(byteBufferOrder2);
            int iL = L(byteBufferOrder2);
            long j15 = 1;
            int i16 = this.f9964i;
            if (iL == 23) {
                int iPosition = byteBufferOrder2.position();
                r rVar = new r();
                R(byteBufferOrder2, rVar);
                rVar.a(i16);
                byteBufferOrder2.position(iPosition);
                P(byteBufferOrder2, eVar);
                if (zg.a.b(eVar.f9896e)) {
                    throw new IOException("no folders, can't read encoded header");
                }
                if (zg.a.b(eVar.f9893b)) {
                    throw new IOException("no packed streams, can't read encoded header");
                }
                m mVar = eVar.f9896e[0];
                this.f9957b.position(eVar.f9892a + 32);
                f fVar = new f(this.f9957b, eVar.f9893b[0]);
                InputStream dVar = fVar;
                for (g gVar : mVar.a()) {
                    if (gVar.f9904b != j15 || gVar.f9905c != j15) {
                        throw new IOException("Multi input/output stream coders are not yet supported");
                    }
                    if (mVar.f9915a != null) {
                        int i17 = 0;
                        while (true) {
                            g[] gVarArr = mVar.f9915a;
                            if (i17 >= gVarArr.length) {
                                break;
                            }
                            if (gVarArr[i17] == gVar) {
                                j10 = mVar.f9920f[i17];
                                break;
                            }
                            i17++;
                        }
                        j10 = 0;
                    } else {
                        j10 = 0;
                    }
                    dVar = l.a(this.f9956a, dVar, j10, gVar, bArr, this.f9964i);
                    mVar = mVar;
                    j15 = 1;
                }
                m mVar2 = mVar;
                if (mVar2.f9921g) {
                    int i18 = xg.d.f18475g;
                    xg.c cVar2 = new xg.c();
                    cVar2.f18472e = new CRC32();
                    cVar2.P0(dVar);
                    cVar2.f18473f = mVar2.b();
                    cVar2.f18474g = mVar2.f9922h;
                    dVar = new xg.d(cVar2);
                }
                int iR = r(mVar2.b(), "unpackSize");
                byte[] bArrA = rg.d.a(iR, dVar);
                if (bArrA.length < iR) {
                    throw new IOException("premature end of stream");
                }
                dVar.close();
                byteBufferOrder2 = ByteBuffer.wrap(bArrA).order(ByteOrder.LITTLE_ENDIAN);
                eVar = new e();
                iL = L(byteBufferOrder2);
            }
            if (iL != 1) {
                throw new IOException("Broken or unsupported archive: no Header");
            }
            int iPosition2 = byteBufferOrder2.position();
            r rVar2 = new r();
            int iL2 = L(byteBufferOrder2);
            if (iL2 == 2) {
                for (long jQ = Q(byteBufferOrder2); jQ != 0; jQ = Q(byteBufferOrder2)) {
                    long jR = r(Q(byteBufferOrder2), "propertySize");
                    if (S(byteBufferOrder2, jR) < jR) {
                        throw new IOException("invalid property size");
                    }
                }
                iL2 = L(byteBufferOrder2);
            }
            if (iL2 == 3) {
                throw new IOException("Additional streams unsupported");
            }
            int i19 = 4;
            if (iL2 == 4) {
                R(byteBufferOrder2, rVar2);
                iL2 = L(byteBufferOrder2);
            }
            int i20 = 8;
            if (iL2 == 5) {
                rVar2.f9951h = r(Q(byteBufferOrder2), "numFiles");
                int iCardinality = -1;
                while (true) {
                    int iL3 = L(byteBufferOrder2);
                    if (iL3 == 0) {
                        rVar2.f9952i = rVar2.f9951h - Math.max(iCardinality, i12);
                        iL2 = L(byteBufferOrder2);
                    } else {
                        int i21 = i16;
                        long jQ2 = Q(byteBufferOrder2);
                        switch (iL3) {
                            case 14:
                                iCardinality = N(byteBufferOrder2, rVar2.f9951h).cardinality();
                                break;
                            case 15:
                                if (iCardinality == -1) {
                                    throw new IOException("Header format error: kEmptyStream must appear before kEmptyFile");
                                }
                                N(byteBufferOrder2, iCardinality);
                                break;
                            case 16:
                                if (iCardinality == -1) {
                                    throw new IOException("Header format error: kEmptyStream must appear before kAnti");
                                }
                                N(byteBufferOrder2, iCardinality);
                                break;
                            case 17:
                                if (L(byteBufferOrder2) != 0) {
                                    throw new IOException("Not implemented");
                                }
                                int iR2 = r(jQ2 - 1, "file names length");
                                if ((iR2 & 1) != 0) {
                                    throw new IOException("File names length invalid");
                                }
                                int i22 = 0;
                                for (int i23 = 0; i23 < iR2; i23 += 2) {
                                    A(byteBufferOrder2, 2);
                                    if (byteBufferOrder2.getChar() == 0) {
                                        i22++;
                                    }
                                }
                                if (i22 != rVar2.f9951h) {
                                    throw new IOException(android.support.v4.media.session.a.s(g.b.n("Invalid number of file names (", i22, " instead of "), rVar2.f9951h, ")"));
                                }
                                break;
                            case 18:
                                int iCardinality2 = M(byteBufferOrder2, rVar2.f9951h).cardinality();
                                if (L(byteBufferOrder2) != 0) {
                                    throw new IOException("Not implemented");
                                }
                                long j16 = iCardinality2 * 8;
                                if (S(byteBufferOrder2, j16) < j16) {
                                    throw new IOException("invalid creation dates size");
                                }
                                break;
                            case 19:
                                int iCardinality3 = M(byteBufferOrder2, rVar2.f9951h).cardinality();
                                if (L(byteBufferOrder2) != 0) {
                                    throw new IOException("Not implemented");
                                }
                                long j17 = iCardinality3 * 8;
                                if (S(byteBufferOrder2, j17) < j17) {
                                    throw new IOException("invalid access dates size");
                                }
                                break;
                            case 20:
                                int iCardinality4 = M(byteBufferOrder2, rVar2.f9951h).cardinality();
                                if (L(byteBufferOrder2) != 0) {
                                    throw new IOException("Not implemented");
                                }
                                long j18 = iCardinality4 * 8;
                                if (S(byteBufferOrder2, j18) < j18) {
                                    throw new IOException("invalid modification dates size");
                                }
                                break;
                            case 21:
                                int iCardinality5 = M(byteBufferOrder2, rVar2.f9951h).cardinality();
                                if (L(byteBufferOrder2) != 0) {
                                    throw new IOException("Not implemented");
                                }
                                long j19 = iCardinality5 * 4;
                                if (S(byteBufferOrder2, j19) < j19) {
                                    throw new IOException("invalid windows attributes size");
                                }
                                break;
                            case 22:
                            case 23:
                            default:
                                if (S(byteBufferOrder2, jQ2) < jQ2) {
                                    throw new IOException(da.b.a(iL3, "Incomplete property of type "));
                                }
                                break;
                            case 24:
                                throw new IOException("kStartPos is unsupported, please report");
                            case 25:
                                if (S(byteBufferOrder2, jQ2) < jQ2) {
                                    throw new IOException("Incomplete kDummy property");
                                }
                                break;
                        }
                        i16 = i21;
                        i12 = 0;
                    }
                }
            }
            int i24 = i16;
            if (iL2 != 0) {
                throw new IOException(da.b.a(iL2, "Badly terminated header, found "));
            }
            rVar2.a(i24);
            byteBufferOrder2.position(iPosition2);
            int iL4 = L(byteBufferOrder2);
            if (iL4 == 2) {
                for (long jQ3 = Q(byteBufferOrder2); jQ3 != 0; jQ3 = Q(byteBufferOrder2)) {
                    int iQ = (int) Q(byteBufferOrder2);
                    A(byteBufferOrder2, iQ);
                    byteBufferOrder2.get(new byte[iQ]);
                }
                iL4 = L(byteBufferOrder2);
            }
            if (iL4 == 3) {
                throw new IOException("Additional streams unsupported");
            }
            if (iL4 == 4) {
                P(byteBufferOrder2, eVar);
                iL4 = L(byteBufferOrder2);
            }
            if (iL4 == 5) {
                int iQ2 = (int) Q(byteBufferOrder2);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                BitSet bitSetN = null;
                BitSet bitSetN2 = null;
                BitSet bitSetN3 = null;
                while (true) {
                    int iL5 = L(byteBufferOrder2);
                    if (iL5 == 0) {
                        int i25 = 0;
                        int i26 = 0;
                        for (int i27 = 0; i27 < iQ2; i27 += i13) {
                            n nVar = (n) linkedHashMap.get(Integer.valueOf(i27));
                            if (nVar != null) {
                                boolean z = bitSetN == null || !bitSetN.get(i27);
                                nVar.f9926b = z;
                                if (z) {
                                    v3.f fVar2 = eVar.f9897f;
                                    if (fVar2 == null) {
                                        throw new IOException("Archive contains file with streams but no subStreamsInfo");
                                    }
                                    nVar.f9927c = false;
                                    nVar.f9928d = false;
                                    nVar.f9936m = ((BitSet) fVar2.f16475c).get(i26);
                                    v3.f fVar3 = eVar.f9897f;
                                    nVar.f9937n = ((long[]) fVar3.f16476d)[i26];
                                    long j20 = ((long[]) fVar3.f16474b)[i26];
                                    nVar.f9939p = j20;
                                    if (j20 < 0) {
                                        throw new IOException("broken archive, entry with negative size");
                                    }
                                    i26 += i13;
                                } else {
                                    nVar.f9927c = bitSetN2 == null || !bitSetN2.get(i25);
                                    nVar.f9928d = bitSetN3 != null && bitSetN3.get(i25);
                                    nVar.f9936m = false;
                                    nVar.f9939p = 0L;
                                    i25 += i13;
                                }
                            }
                        }
                        eVar.f9898g = (n[]) Collection.EL.stream(linkedHashMap.values()).filter(new eh.h(i13)).toArray(new IntFunction() { // from class: jg.p
                            @Override // java.util.function.IntFunction
                            public final Object apply(int i28) {
                                return new n[i28];
                            }
                        });
                        int length = Array.getLength(eVar.f9896e);
                        int[] iArr = new int[length];
                        int length2 = 0;
                        for (int i28 = 0; i28 < length; i28 += i13) {
                            iArr[i28] = length2;
                            length2 += eVar.f9896e[i28].f9919e.length;
                        }
                        int length3 = eVar.f9893b.length;
                        long[] jArr = new long[length3];
                        long j21 = 0;
                        for (int i29 = 0; i29 < length3; i29 += i13) {
                            jArr[i29] = j21;
                            j21 += eVar.f9893b[i29];
                        }
                        int[] iArr2 = new int[length];
                        int[] iArr3 = new int[eVar.f9898g.length];
                        int i30 = 0;
                        int i31 = 0;
                        int i32 = 0;
                        while (true) {
                            n[] nVarArr = eVar.f9898g;
                            if (i30 < nVarArr.length) {
                                if (nVarArr[i30].f9926b || i31 != 0) {
                                    if (i31 == 0) {
                                        while (true) {
                                            mVarArr = eVar.f9896e;
                                            if (i32 < mVarArr.length) {
                                                iArr2[i32] = i30;
                                                if (mVarArr[i32].f9923i <= 0) {
                                                    i32 += i13;
                                                }
                                            }
                                        }
                                        if (i32 >= mVarArr.length) {
                                            throw new IOException("Too few folders in archive");
                                        }
                                    }
                                    iArr3[i30] = i32;
                                    if (eVar.f9898g[i30].f9926b && (i31 = i31 + i13) >= eVar.f9896e[i32].f9923i) {
                                        i32 += i13;
                                        i31 = 0;
                                    }
                                } else {
                                    iArr3[i30] = -1;
                                }
                                i30 += i13;
                            } else {
                                eVar.f9899h = new w0(iArr, jArr, iArr2, iArr3, 7);
                                L(byteBufferOrder2);
                            }
                        }
                    } else {
                        long jQ4 = Q(byteBufferOrder2);
                        if (iL5 != 25) {
                            switch (iL5) {
                                case 14:
                                    bitSetN = N(byteBufferOrder2, iQ2);
                                    break;
                                case 15:
                                    o oVar = new o(0, eVar);
                                    int i33 = ig.a.f8692a;
                                    hg.a.a(bitSetN, oVar);
                                    bitSetN2 = N(byteBufferOrder2, bitSetN.cardinality());
                                    break;
                                case 16:
                                    o oVar2 = new o(1, eVar);
                                    int i34 = ig.a.f8692a;
                                    hg.a.a(bitSetN, oVar2);
                                    bitSetN3 = N(byteBufferOrder2, bitSetN.cardinality());
                                    break;
                                case 17:
                                    L(byteBufferOrder2);
                                    int i35 = (int) (jQ4 - 1);
                                    byte[] bArr3 = new byte[i35];
                                    A(byteBufferOrder2, i35);
                                    byteBufferOrder2.get(bArr3);
                                    int i36 = 0;
                                    int i37 = 0;
                                    int i38 = 0;
                                    while (i38 < i35) {
                                        if (bArr3[i38] == 0 && bArr3[i38 + 1] == 0) {
                                            J(linkedHashMap, i37);
                                            ((n) linkedHashMap.get(Integer.valueOf(i37))).f9925a = new String(bArr3, i36, i38 - i36, StandardCharsets.UTF_16LE);
                                            i11 = 2;
                                            i37++;
                                            i36 = i38 + 2;
                                        } else {
                                            i11 = 2;
                                        }
                                        i38 += i11;
                                    }
                                    if (i36 != i35 || i37 != iQ2) {
                                        break;
                                    } else {
                                        break;
                                    }
                                    break;
                                case 18:
                                    BitSet bitSetM = M(byteBufferOrder2, iQ2);
                                    L(byteBufferOrder2);
                                    for (int i39 = 0; i39 < iQ2; i39 += i13) {
                                        J(linkedHashMap, i39);
                                        n nVar2 = (n) linkedHashMap.get(Integer.valueOf(i39));
                                        boolean z4 = bitSetM.get(i39);
                                        nVar2.f9929e = z4;
                                        if (z4) {
                                            A(byteBufferOrder2, i20);
                                            nVar2.f9932h = vg.b.a(byteBufferOrder2.getLong());
                                        }
                                    }
                                    break;
                                case 19:
                                    BitSet bitSetM2 = M(byteBufferOrder2, iQ2);
                                    L(byteBufferOrder2);
                                    for (int i40 = 0; i40 < iQ2; i40 += i13) {
                                        J(linkedHashMap, i40);
                                        n nVar3 = (n) linkedHashMap.get(Integer.valueOf(i40));
                                        boolean z10 = bitSetM2.get(i40);
                                        nVar3.f9931g = z10;
                                        if (z10) {
                                            A(byteBufferOrder2, i20);
                                            nVar3.f9934j = vg.b.a(byteBufferOrder2.getLong());
                                        }
                                    }
                                    break;
                                case 20:
                                    BitSet bitSetM3 = M(byteBufferOrder2, iQ2);
                                    L(byteBufferOrder2);
                                    for (int i41 = 0; i41 < iQ2; i41 += i13) {
                                        J(linkedHashMap, i41);
                                        n nVar4 = (n) linkedHashMap.get(Integer.valueOf(i41));
                                        boolean z11 = bitSetM3.get(i41);
                                        nVar4.f9930f = z11;
                                        if (z11) {
                                            A(byteBufferOrder2, i20);
                                            nVar4.f9933i = vg.b.a(byteBufferOrder2.getLong());
                                        }
                                    }
                                    break;
                                case 21:
                                    BitSet bitSetM4 = M(byteBufferOrder2, iQ2);
                                    L(byteBufferOrder2);
                                    for (int i42 = 0; i42 < iQ2; i42 += i13) {
                                        J(linkedHashMap, i42);
                                        n nVar5 = (n) linkedHashMap.get(Integer.valueOf(i42));
                                        boolean z12 = bitSetM4.get(i42);
                                        nVar5.f9935k = z12;
                                        if (z12) {
                                            A(byteBufferOrder2, i19);
                                            nVar5.l = byteBufferOrder2.getInt();
                                        }
                                    }
                                    break;
                                default:
                                    S(byteBufferOrder2, jQ4);
                                    break;
                            }
                        } else {
                            S(byteBufferOrder2, jQ4);
                        }
                        i19 = 4;
                        i20 = 8;
                        i13 = 1;
                    }
                }
            }
            eVar.f9897f = null;
            this.f9958c = eVar;
            if (bArr != null) {
                this.f9962g = Arrays.copyOf(bArr, bArr.length);
            } else {
                this.f9962g = null;
            }
        } finally {
        }
    }

    public static void A(ByteBuffer byteBuffer, int i10) throws EOFException {
        int iRemaining = byteBuffer.remaining();
        if (iRemaining < i10) {
            throw new EOFException(String.format("remaining %,d < expectRemaining %,d", Integer.valueOf(iRemaining), Integer.valueOf(i10)));
        }
    }

    public static void J(LinkedHashMap linkedHashMap, int i10) {
        Map.EL.computeIfAbsent(linkedHashMap, Integer.valueOf(i10), new a2.n(2));
    }

    public static int L(ByteBuffer byteBuffer) throws EOFException {
        if (byteBuffer.hasRemaining()) {
            return byteBuffer.get() & 255;
        }
        throw new EOFException();
    }

    public static BitSet M(ByteBuffer byteBuffer, int i10) {
        if (L(byteBuffer) == 0) {
            return N(byteBuffer, i10);
        }
        BitSet bitSet = new BitSet(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            bitSet.set(i11, true);
        }
        return bitSet;
    }

    public static BitSet N(ByteBuffer byteBuffer, int i10) throws EOFException {
        BitSet bitSet = new BitSet(i10);
        int i11 = 0;
        int iL = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            if (i11 == 0) {
                iL = L(byteBuffer);
                i11 = 128;
            }
            bitSet.set(i12, (iL & i11) != 0);
            i11 >>>= 1;
        }
        return bitSet;
    }

    /* JADX WARN: Removed duplicated region for block: B:174:0x0154 A[EDGE_INSN: B:174:0x0154->B:73:0x0154 BREAK  A[LOOP:5: B:58:0x0133->B:72:0x0151], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0151 A[LOOP:5: B:58:0x0133->B:72:0x0151, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void P(ByteBuffer byteBuffer, e eVar) throws IOException {
        long j10;
        int i10;
        long jQ;
        long jQ2;
        byte[] bArr;
        int iL = L(byteBuffer);
        if (iL == 6) {
            eVar.f9892a = Q(byteBuffer);
            int iQ = (int) Q(byteBuffer);
            int iL2 = L(byteBuffer);
            if (iL2 == 9) {
                eVar.f9893b = new long[iQ];
                int i11 = 0;
                while (true) {
                    long[] jArr = eVar.f9893b;
                    if (i11 >= jArr.length) {
                        break;
                    }
                    jArr[i11] = Q(byteBuffer);
                    i11++;
                }
                iL2 = L(byteBuffer);
            }
            if (iL2 == 10) {
                eVar.f9894c = M(byteBuffer, iQ);
                eVar.f9895d = new long[iQ];
                for (int i12 = 0; i12 < iQ; i12++) {
                    if (eVar.f9894c.get(i12)) {
                        long[] jArr2 = eVar.f9895d;
                        A(byteBuffer, 4);
                        jArr2[i12] = byteBuffer.getInt() & 4294967295L;
                    }
                }
                L(byteBuffer);
            }
            iL = L(byteBuffer);
        }
        if (iL == 7) {
            L(byteBuffer);
            int iQ2 = (int) Q(byteBuffer);
            m[] mVarArr = new m[iQ2];
            eVar.f9896e = mVarArr;
            L(byteBuffer);
            for (int i13 = 0; i13 < iQ2; i13++) {
                m mVar = new m();
                int iQ3 = (int) Q(byteBuffer);
                g[] gVarArr = new g[iQ3];
                long j11 = 0;
                long j12 = 0;
                int i14 = 0;
                while (i14 < iQ3) {
                    int iL3 = L(byteBuffer);
                    int i15 = iL3 & 15;
                    boolean z = (iL3 & 16) == 0;
                    boolean z4 = (iL3 & 32) != 0;
                    boolean z10 = (iL3 & 128) != 0;
                    byte[] bArr2 = new byte[i15];
                    A(byteBuffer, i15);
                    byteBuffer.get(bArr2);
                    if (z) {
                        jQ = 1;
                        jQ2 = 1;
                    } else {
                        jQ = Q(byteBuffer);
                        jQ2 = Q(byteBuffer);
                    }
                    long j13 = j11 + jQ;
                    j12 += jQ2;
                    if (z4) {
                        int iQ4 = (int) Q(byteBuffer);
                        bArr = new byte[iQ4];
                        A(byteBuffer, iQ4);
                        byteBuffer.get(bArr);
                    } else {
                        bArr = null;
                    }
                    byte[] bArr3 = bArr;
                    if (z10) {
                        throw new IOException("Alternative methods are unsupported, please report. The reference implementation doesn't support them either.");
                    }
                    gVarArr[i14] = new g(bArr2, jQ, jQ2, bArr3);
                    i14++;
                    j11 = j13;
                }
                mVar.f9915a = gVarArr;
                mVar.f9916b = j11;
                mVar.f9917c = j12;
                long j14 = j12 - 1;
                int i16 = (int) j14;
                androidx.media3.exoplayer.video.y[] yVarArr = new androidx.media3.exoplayer.video.y[i16];
                for (int i17 = 0; i17 < i16; i17++) {
                    yVarArr[i17] = new androidx.media3.exoplayer.video.y(Q(byteBuffer), Q(byteBuffer), 2);
                }
                mVar.f9918d = yVarArr;
                long j15 = j11 - j14;
                int i18 = (int) j15;
                long[] jArr3 = new long[i18];
                if (j15 == 1) {
                    int i19 = 0;
                    while (i19 < ((int) j11)) {
                        if (mVar.f9918d != null) {
                            i10 = 0;
                            while (true) {
                                androidx.media3.exoplayer.video.y[] yVarArr2 = mVar.f9918d;
                                if (i10 >= yVarArr2.length) {
                                    break;
                                } else if (yVarArr2[i10].f1983b == i19) {
                                    break;
                                } else {
                                    i10++;
                                }
                            }
                            if (i10 >= 0) {
                                break;
                            } else {
                                i19++;
                            }
                        } else {
                            i10 = -1;
                            if (i10 >= 0) {
                            }
                        }
                    }
                    jArr3[0] = i19;
                } else {
                    for (int i20 = 0; i20 < i18; i20++) {
                        jArr3[i20] = Q(byteBuffer);
                    }
                }
                mVar.f9919e = jArr3;
                mVarArr[i13] = mVar;
            }
            L(byteBuffer);
            for (int i21 = 0; i21 < iQ2; i21++) {
                m mVar2 = mVarArr[i21];
                r(mVar2.f9917c, "totalOutputStreams");
                mVar2.f9920f = new long[(int) mVar2.f9917c];
                for (int i22 = 0; i22 < mVar2.f9917c; i22++) {
                    mVar2.f9920f[i22] = Q(byteBuffer);
                }
            }
            if (L(byteBuffer) == 10) {
                BitSet bitSetM = M(byteBuffer, iQ2);
                for (int i23 = 0; i23 < iQ2; i23++) {
                    if (bitSetM.get(i23)) {
                        m mVar3 = mVarArr[i23];
                        mVar3.f9921g = true;
                        A(byteBuffer, 4);
                        mVar3.f9922h = byteBuffer.getInt() & 4294967295L;
                    } else {
                        mVarArr[i23].f9921g = false;
                    }
                }
                L(byteBuffer);
            }
            iL = L(byteBuffer);
        } else {
            eVar.f9896e = m.f9914j;
        }
        if (iL == 8) {
            for (m mVar4 : eVar.f9896e) {
                mVar4.f9923i = 1;
            }
            long length = eVar.f9896e.length;
            int iL4 = L(byteBuffer);
            if (iL4 == 13) {
                long j16 = 0;
                for (m mVar5 : eVar.f9896e) {
                    long jQ3 = Q(byteBuffer);
                    mVar5.f9923i = (int) jQ3;
                    j16 += jQ3;
                }
                long j17 = j16;
                iL4 = L(byteBuffer);
                length = j17;
            }
            v3.f fVar = new v3.f((int) length);
            int i24 = 0;
            for (m mVar6 : eVar.f9896e) {
                if (mVar6.f9923i != 0) {
                    long[] jArr4 = (long[]) fVar.f16474b;
                    if (iL4 == 9) {
                        int i25 = i24;
                        int i26 = 0;
                        j10 = 0;
                        while (i26 < mVar6.f9923i - 1) {
                            long jQ4 = Q(byteBuffer);
                            jArr4[i25] = jQ4;
                            j10 += jQ4;
                            i26++;
                            i25++;
                        }
                        i24 = i25;
                    } else {
                        j10 = 0;
                    }
                    if (j10 > mVar6.b()) {
                        throw new IOException("sum of unpack sizes of folder exceeds total unpack size");
                    }
                    jArr4[i24] = mVar6.b() - j10;
                    i24++;
                }
            }
            if (iL4 == 9) {
                iL4 = L(byteBuffer);
            }
            int i27 = 0;
            for (m mVar7 : eVar.f9896e) {
                int i28 = mVar7.f9923i;
                if (i28 != 1 || !mVar7.f9921g) {
                    i27 += i28;
                }
            }
            if (iL4 == 10) {
                BitSet bitSetM2 = M(byteBuffer, i27);
                long[] jArr5 = new long[i27];
                for (int i29 = 0; i29 < i27; i29++) {
                    if (bitSetM2.get(i29)) {
                        A(byteBuffer, 4);
                        jArr5[i29] = byteBuffer.getInt() & 4294967295L;
                    }
                }
                int i30 = 0;
                int i31 = 0;
                for (m mVar8 : eVar.f9896e) {
                    int i32 = mVar8.f9923i;
                    BitSet bitSet = (BitSet) fVar.f16475c;
                    long[] jArr6 = (long[]) fVar.f16476d;
                    if (i32 == 1 && mVar8.f9921g) {
                        bitSet.set(i30, true);
                        jArr6[i30] = mVar8.f9922h;
                        i30++;
                    } else {
                        int i33 = i31;
                        int i34 = i30;
                        for (int i35 = 0; i35 < mVar8.f9923i; i35++) {
                            bitSet.set(i34, bitSetM2.get(i33));
                            jArr6[i34] = jArr5[i33];
                            i34++;
                            i33++;
                        }
                        i30 = i34;
                        i31 = i33;
                    }
                }
                L(byteBuffer);
            }
            eVar.f9897f = fVar;
            L(byteBuffer);
        }
    }

    public static long Q(ByteBuffer byteBuffer) {
        long jL = L(byteBuffer);
        int i10 = 128;
        long jL2 = 0;
        for (int i11 = 0; i11 < 8; i11++) {
            if ((i10 & jL) == 0) {
                return ((jL & (i10 - 1)) << (i11 * 8)) | jL2;
            }
            jL2 |= L(byteBuffer) << (i11 * 8);
            i10 >>>= 1;
        }
        return jL2;
    }

    public static long S(ByteBuffer byteBuffer, long j10) {
        if (j10 < 1) {
            return 0L;
        }
        int iPosition = byteBuffer.position();
        long jRemaining = byteBuffer.remaining();
        if (jRemaining < j10) {
            j10 = jRemaining;
        }
        byteBuffer.position(iPosition + ((int) j10));
        return j10;
    }

    public static int r(long j10, String str) throws IOException {
        if (j10 > 2147483647L || j10 < 0) {
            throw new IOException(String.format("Cannot handle % %,d", str, Long.valueOf(j10)));
        }
        return (int) j10;
    }

    public final n K() {
        u uVar;
        long j10;
        int i10 = this.f9959d;
        e eVar = this.f9958c;
        n[] nVarArr = eVar.f9898g;
        int i11 = 1;
        if (i10 >= nVarArr.length - 1) {
            return null;
        }
        int i12 = i10 + 1;
        this.f9959d = i12;
        n nVar = nVarArr[i12];
        String str = nVar.f9925a;
        w0 w0Var = eVar.f9899h;
        if (w0Var == null) {
            throw new IOException("Archive doesn't contain stream information to read entries");
        }
        int i13 = ((int[]) w0Var.f349e)[i12];
        ArrayList arrayList = this.f9963h;
        if (i13 < 0) {
            arrayList.clear();
        } else {
            if (this.f9960e != i13) {
                this.f9960e = i13;
                arrayList.clear();
                InputStream inputStream = this.f9961f;
                if (inputStream != null) {
                    inputStream.close();
                    this.f9961f = null;
                }
                m mVar = eVar.f9896e[i13];
                w0 w0Var2 = eVar.f9899h;
                int i14 = ((int[]) w0Var2.f346b)[i13];
                this.f9957b.position(eVar.f9892a + 32 + ((long[]) w0Var2.f347c)[i14]);
                fh.c cVar = new fh.c(this, new BufferedInputStream(new f(this.f9957b, eVar.f9893b[i14])));
                LinkedList linkedList = new LinkedList();
                InputStream dVar = cVar;
                for (g gVar : mVar.a()) {
                    if (gVar.f9904b != 1 || gVar.f9905c != 1) {
                        throw new IOException("Multi input/output stream coders are not yet supported");
                    }
                    byte[] bArr = gVar.f9903a;
                    u[] uVarArr = (u[]) u.class.getEnumConstants();
                    int length = uVarArr.length;
                    int i15 = 0;
                    while (true) {
                        if (i15 >= length) {
                            uVar = null;
                            break;
                        }
                        u uVar2 = uVarArr[i15];
                        if (Arrays.equals(uVar2.f9979a, bArr)) {
                            uVar = uVar2;
                            break;
                        }
                        i15++;
                    }
                    if (mVar.f9915a != null) {
                        int i16 = 0;
                        while (true) {
                            g[] gVarArr = mVar.f9915a;
                            if (i16 >= gVarArr.length) {
                                break;
                            }
                            if (gVarArr[i16] == gVar) {
                                j10 = mVar.f9920f[i16];
                                break;
                            }
                            i16++;
                        }
                    } else {
                        j10 = 0;
                    }
                    dVar = l.a(this.f9956a, dVar, j10, gVar, this.f9962g, this.f9964i);
                    linkedList.addFirst(new v(uVar, ((d) l.f9913a.get(uVar)).d(gVar)));
                }
                nVar.getClass();
                LinkedList linkedList2 = new LinkedList();
                Iterable.EL.forEach(linkedList, new com.yunpan.appmanage.db.b(i11, linkedList2));
                nVar.r = Collections.unmodifiableList(linkedList2);
                if (mVar.f9921g) {
                    int i17 = xg.d.f18475g;
                    xg.c cVar2 = new xg.c();
                    cVar2.f18472e = new CRC32();
                    cVar2.P0(dVar);
                    cVar2.f18473f = mVar.b();
                    cVar2.f18474g = mVar.f9922h;
                    dVar = new xg.d(cVar2);
                }
                this.f9961f = dVar;
            } else if (i12 > 0) {
                List list = nVarArr[i10].r;
                if (list != null) {
                    nVar.getClass();
                    LinkedList linkedList3 = new LinkedList();
                    Iterable.EL.forEach(list, new com.yunpan.appmanage.db.b(i11, linkedList3));
                    nVar.r = Collections.unmodifiableList(linkedList3);
                } else {
                    nVar.r = null;
                }
            }
            int i18 = xg.b.f18466i;
            xg.a aVar = new xg.a();
            aVar.P0(this.f9961f);
            aVar.f18463e = Math.max(-1L, nVar.f9939p);
            aVar.f18465g = false;
            xg.h bVar = new xg.b(aVar);
            if (nVar.f9936m) {
                int i19 = xg.d.f18475g;
                xg.c cVar3 = new xg.c();
                cVar3.f18472e = new CRC32();
                cVar3.f15098b = new tg.a(1, bVar);
                cVar3.f18474g = nVar.f9937n;
                bVar = new xg.d(cVar3);
            }
            arrayList.add(bVar);
        }
        return nVar;
    }

    public final void O(ByteBuffer byteBuffer) throws EOFException {
        byteBuffer.rewind();
        SeekableByteChannel seekableByteChannel = this.f9957b;
        int i10 = rg.d.f13776a;
        int iRemaining = byteBuffer.remaining();
        byte[] bArr = sg.b.f14563a;
        int iRemaining2 = byteBuffer.remaining();
        while (byteBuffer.remaining() > 0 && -1 != seekableByteChannel.read(byteBuffer)) {
        }
        if (iRemaining2 - byteBuffer.remaining() < iRemaining) {
            throw new EOFException();
        }
        byteBuffer.flip();
    }

    public final void R(ByteBuffer byteBuffer, r rVar) throws IOException {
        ByteBuffer byteBuffer2;
        r rVar2;
        int i10;
        int iCardinality;
        BitSet bitSet;
        int i11;
        ByteBuffer byteBuffer3 = byteBuffer;
        r rVar3 = rVar;
        int iL = L(byteBuffer);
        long j10 = 0;
        if (iL == 6) {
            long jQ = Q(byteBuffer);
            if (jQ >= 0) {
                long j11 = 32 + jQ;
                if (j11 <= this.f9957b.size() && j11 >= 0) {
                    rVar3.f9944a = r(Q(byteBuffer), "numPackStreams");
                    int iL2 = L(byteBuffer);
                    if (iL2 == 9) {
                        long j12 = 0;
                        for (int i12 = 0; i12 < rVar3.f9944a; i12++) {
                            long jQ2 = Q(byteBuffer);
                            j12 += jQ2;
                            long j13 = j11 + j12;
                            if (jQ2 < 0 || j13 > this.f9957b.size() || j13 < jQ) {
                                throw new IOException("packSize (" + jQ2 + ") is out of range");
                            }
                        }
                        iL2 = L(byteBuffer);
                    }
                    if (iL2 == 10) {
                        long jCardinality = M(byteBuffer3, rVar3.f9944a).cardinality() * 4;
                        if (S(byteBuffer3, jCardinality) < jCardinality) {
                            throw new IOException("invalid number of CRCs in PackInfo");
                        }
                        iL2 = L(byteBuffer);
                    }
                    if (iL2 != 0) {
                        throw new IOException(g.b.i("Badly terminated PackInfo (", iL2, ")"));
                    }
                    iL = L(byteBuffer);
                }
            }
            throw new IOException("packPos (" + jQ + ") is out of range");
        }
        if (iL == 7) {
            int iL3 = L(byteBuffer);
            if (iL3 != 11) {
                throw new IOException(da.b.a(iL3, "Expected kFolder, got "));
            }
            rVar3.f9949f = r(Q(byteBuffer), "numFolders");
            if (L(byteBuffer) != 0) {
                throw new IOException("External unsupported");
            }
            LinkedList linkedList = new LinkedList();
            int i13 = 0;
            while (true) {
                int i14 = rVar3.f9949f;
                if (i13 < i14) {
                    int iR = r(Q(byteBuffer), "numCoders");
                    if (iR == 0) {
                        throw new IOException("Folder without coders");
                    }
                    rVar3.f9945b += iR;
                    long jR = j10;
                    long jR2 = jR;
                    int i15 = 0;
                    while (i15 < iR) {
                        int iL4 = L(byteBuffer);
                        int i16 = iL4 & 15;
                        A(byteBuffer3, i16);
                        byteBuffer3.get(new byte[i16]);
                        boolean z = (iL4 & 16) == 0;
                        boolean z4 = (iL4 & 32) != 0;
                        if ((iL4 & 128) != 0) {
                            throw new IOException("Alternative methods are unsupported, please report. The reference implementation doesn't support them either.");
                        }
                        if (z) {
                            jR++;
                            jR2++;
                            i11 = iR;
                        } else {
                            i11 = iR;
                            jR += r(Q(byteBuffer), "numInStreams");
                            jR2 += r(Q(byteBuffer), "numOutStreams");
                        }
                        if (z4) {
                            long jR3 = r(Q(byteBuffer), "propertiesSize");
                            if (S(byteBuffer3, jR3) < jR3) {
                                throw new IOException("invalid propertiesSize in folder");
                            }
                        }
                        i15++;
                        iR = i11;
                    }
                    r(jR, "totalInStreams");
                    r(jR2, "totalOutStreams");
                    rVar3.f9946c += jR2;
                    rVar3.f9947d += jR;
                    if (jR2 == 0) {
                        throw new IOException("Total output streams can't be 0");
                    }
                    int iR2 = r(jR2 - 1, "numBindPairs");
                    long j14 = iR2;
                    if (jR < j14) {
                        throw new IOException("Total input streams can't be less than the number of bind pairs");
                    }
                    BitSet bitSet2 = new BitSet((int) jR);
                    for (int i17 = 0; i17 < iR2; i17++) {
                        int iR3 = r(Q(byteBuffer), "inIndex");
                        if (jR <= iR3) {
                            throw new IOException("inIndex is bigger than number of inStreams");
                        }
                        bitSet2.set(iR3);
                        if (jR2 <= r(Q(byteBuffer), "outIndex")) {
                            throw new IOException("outIndex is bigger than number of outStreams");
                        }
                    }
                    int iR4 = r(jR - j14, "numPackedStreams");
                    if (iR4 != 1) {
                        for (int i18 = 0; i18 < iR4; i18++) {
                            if (r(Q(byteBuffer), "packedStreamIndex") >= jR) {
                                throw new IOException("packedStreamIndex is bigger than number of totalInStreams");
                            }
                        }
                    } else if (bitSet2.nextClearBit(0) == -1) {
                        throw new IOException("Couldn't find stream's bind pair index");
                    }
                    linkedList.add(Integer.valueOf((int) jR2));
                    i13++;
                    byteBuffer3 = byteBuffer;
                    rVar3 = rVar;
                    j10 = 0;
                } else {
                    rVar2 = rVar3;
                    i10 = 0;
                    if (rVar2.f9947d - (rVar2.f9946c - i14) < rVar2.f9944a) {
                        throw new IOException("archive doesn't contain enough packed streams");
                    }
                    int iL5 = L(byteBuffer);
                    if (iL5 != 12) {
                        throw new IOException(da.b.a(iL5, "Expected kCodersUnpackSize, got "));
                    }
                    Iterator it = linkedList.iterator();
                    while (it.hasNext()) {
                        int iIntValue = ((Integer) it.next()).intValue();
                        for (int i19 = 0; i19 < iIntValue; i19++) {
                            if (Q(byteBuffer) < 0) {
                                throw new IllegalArgumentException("negative unpackSize");
                            }
                        }
                    }
                    int iL6 = L(byteBuffer);
                    if (iL6 == 10) {
                        byteBuffer2 = byteBuffer;
                        BitSet bitSetM = M(byteBuffer2, rVar2.f9949f);
                        rVar2.f9950g = bitSetM;
                        long jCardinality2 = bitSetM.cardinality() * 4;
                        if (S(byteBuffer2, jCardinality2) < jCardinality2) {
                            throw new IOException("invalid number of CRCs in UnpackInfo");
                        }
                        iL6 = L(byteBuffer);
                    } else {
                        byteBuffer2 = byteBuffer;
                    }
                    if (iL6 != 0) {
                        throw new IOException("Badly terminated UnpackInfo");
                    }
                    iL = L(byteBuffer);
                }
            }
        } else {
            byteBuffer2 = byteBuffer3;
            rVar2 = rVar3;
            i10 = 0;
        }
        if (iL == 8) {
            int iL7 = L(byteBuffer);
            LinkedList linkedList2 = new LinkedList();
            if (iL7 == 13) {
                for (int i20 = 0; i20 < rVar2.f9949f; i20++) {
                    linkedList2.add(Integer.valueOf(r(Q(byteBuffer), "numStreams")));
                }
                rVar2.f9948e = Collection.EL.stream(linkedList2).mapToLong(new q(0)).sum();
                iL7 = L(byteBuffer);
            } else {
                rVar2.f9948e = rVar2.f9949f;
            }
            r(rVar2.f9948e, "totalUnpackStreams");
            if (iL7 == 9) {
                Iterator it2 = linkedList2.iterator();
                while (it2.hasNext()) {
                    int iIntValue2 = ((Integer) it2.next()).intValue();
                    if (iIntValue2 != 0) {
                        for (int i21 = 0; i21 < iIntValue2 - 1; i21++) {
                            if (Q(byteBuffer) < 0) {
                                throw new IOException("negative unpackSize");
                            }
                        }
                    }
                }
                iL7 = L(byteBuffer);
            }
            if (linkedList2.isEmpty()) {
                BitSet bitSet3 = rVar2.f9950g;
                iCardinality = bitSet3 == null ? rVar2.f9949f : rVar2.f9949f - bitSet3.cardinality();
            } else {
                Iterator it3 = linkedList2.iterator();
                int i22 = 0;
                while (it3.hasNext()) {
                    int iIntValue3 = ((Integer) it3.next()).intValue();
                    if (iIntValue3 == 1 && (bitSet = rVar2.f9950g) != null) {
                        int i23 = i10 + 1;
                        if (bitSet.get(i10)) {
                            i10 = i23;
                        } else {
                            i10 = i23;
                        }
                    }
                    i22 += iIntValue3;
                }
                iCardinality = i22;
            }
            if (iL7 == 10) {
                r(iCardinality, "numDigests");
                long jCardinality3 = M(byteBuffer2, iCardinality).cardinality() * 4;
                if (S(byteBuffer2, jCardinality3) < jCardinality3) {
                    throw new IOException("invalid number of missing CRCs in SubStreamInfo");
                }
                iL7 = L(byteBuffer);
            }
            if (iL7 != 0) {
                throw new IOException("Badly terminated SubStreamsInfo");
            }
            iL = L(byteBuffer);
        }
        if (iL != 0) {
            throw new IOException("Badly terminated StreamsInfo");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        SeekableByteChannel seekableByteChannel = this.f9957b;
        if (seekableByteChannel != null) {
            try {
                seekableByteChannel.close();
            } finally {
                this.f9957b = null;
                byte[] bArr = this.f9962g;
                if (bArr != null) {
                    Arrays.fill(bArr, (byte) 0);
                }
                this.f9962g = null;
            }
        }
    }

    public final int read(byte[] bArr) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        InputStream byteArrayInputStream;
        int length = bArr.length;
        if (length == 0) {
            return 0;
        }
        if (this.f9958c.f9898g[this.f9959d].f9939p == 0) {
            byteArrayInputStream = new ByteArrayInputStream(rg.b.f13774a);
        } else {
            ArrayList arrayList = this.f9963h;
            if (arrayList.isEmpty()) {
                throw new IllegalStateException("No current 7z entry (call getNextEntry() first).");
            }
            while (arrayList.size() > 1) {
                InputStream inputStream = (InputStream) arrayList.remove(0);
                try {
                    sg.b.a(inputStream, Long.MAX_VALUE, new ah.a(1));
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } catch (Throwable th2) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th3) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                            } catch (Exception unused) {
                            }
                        }
                    }
                    throw th2;
                }
            }
            byteArrayInputStream = (InputStream) arrayList.get(0);
        }
        return byteArrayInputStream.read(bArr, 0, length);
    }

    public final String toString() {
        return this.f9958c.toString();
    }
}
