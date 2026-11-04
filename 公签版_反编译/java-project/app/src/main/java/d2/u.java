package d2;

import a2.r1;
import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Pair;
import com.hsae.autosdk.p001os.SocConst;
import f2.c1;
import j$.util.Objects;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.mozilla.universalchardet.prober.HebrewProber;
import u1.f0;
import u7.f1;
import u7.j0;
import u7.o1;
import ua.i8;

/* loaded from: classes.dex */
public abstract class u extends y1.a {

    /* renamed from: y1, reason: collision with root package name */
    public static final byte[] f4316y1 = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, HebrewProber.SPACE, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, SocConst.Upgrade.CUPID_CMD, -61, 39, 93, 120};
    public final x1.g A;
    public final j B;
    public final MediaCodec.BufferInfo C;
    public final ArrayDeque D;
    public final r1 E;
    public final AtomicInteger F;
    public r1.p G;
    public r1.p H;
    public a1.i I;
    public a1.i K;
    public y1.b0 L;
    public MediaCrypto M;
    public boolean M0;
    public final long N;
    public boolean N0;
    public float O;
    public boolean O0;
    public float P;
    public boolean P0;
    public boolean Q0;
    public n R;
    public long R0;
    public r1.p S;
    public boolean S0;
    public MediaFormat T;
    public long T0;
    public int U0;
    public boolean V;
    public int V0;
    public ByteBuffer W0;
    public float X;
    public boolean X0;
    public ArrayDeque Y;
    public boolean Y0;
    public s Z;
    public boolean Z0;

    /* renamed from: a1, reason: collision with root package name */
    public boolean f4317a1;

    /* renamed from: b1, reason: collision with root package name */
    public boolean f4318b1;

    /* renamed from: c1, reason: collision with root package name */
    public int f4319c1;

    /* renamed from: d1, reason: collision with root package name */
    public int f4320d1;

    /* renamed from: e1, reason: collision with root package name */
    public int f4321e1;

    /* renamed from: f1, reason: collision with root package name */
    public boolean f4322f1;
    public boolean g1;

    /* renamed from: h0, reason: collision with root package name */
    public q f4323h0;

    /* renamed from: h1, reason: collision with root package name */
    public boolean f4324h1;

    /* renamed from: i1, reason: collision with root package name */
    public long f4325i1;

    /* renamed from: j1, reason: collision with root package name */
    public boolean f4326j1;

    /* renamed from: k1, reason: collision with root package name */
    public boolean f4327k1;

    /* renamed from: l1, reason: collision with root package name */
    public boolean f4328l1;

    /* renamed from: m1, reason: collision with root package name */
    public boolean f4329m1;

    /* renamed from: n1, reason: collision with root package name */
    public y1.k f4330n1;

    /* renamed from: o1, reason: collision with root package name */
    public y1.c f4331o1;

    /* renamed from: p1, reason: collision with root package name */
    public t f4332p1;

    /* renamed from: q1, reason: collision with root package name */
    public long f4333q1;

    /* renamed from: r1, reason: collision with root package name */
    public boolean f4334r1;

    /* renamed from: s1, reason: collision with root package name */
    public boolean f4335s1;

    /* renamed from: t, reason: collision with root package name */
    public final Context f4336t;

    /* renamed from: t0, reason: collision with root package name */
    public int f4337t0;

    /* renamed from: t1, reason: collision with root package name */
    public boolean f4338t1;

    /* renamed from: u1, reason: collision with root package name */
    public long f4339u1;

    /* renamed from: v, reason: collision with root package name */
    public final m f4340v;

    /* renamed from: v1, reason: collision with root package name */
    public y1.b f4341v1;

    /* renamed from: w, reason: collision with root package name */
    public final l f4342w;

    /* renamed from: w1, reason: collision with root package name */
    public y1.b f4343w1;

    /* renamed from: x, reason: collision with root package name */
    public final float f4344x;

    /* renamed from: x1, reason: collision with root package name */
    public j0 f4345x1;

    /* renamed from: y, reason: collision with root package name */
    public final x1.g f4346y;
    public final x1.g z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(Context context, int i10, m mVar, float f10) {
        super(i10);
        l lVar = l.f4292b;
        this.f4336t = context.getApplicationContext();
        this.f4340v = mVar;
        this.f4342w = lVar;
        this.f4344x = f10;
        this.F = new AtomicInteger();
        this.f4346y = new x1.g(0);
        this.z = new x1.g(0);
        this.A = new x1.g(2);
        j jVar = new j();
        this.B = jVar;
        this.C = new MediaCodec.BufferInfo();
        this.O = 1.0f;
        this.P = 1.0f;
        this.N = -9223372036854775807L;
        this.D = new ArrayDeque();
        this.f4332p1 = t.f4309g;
        jVar.k(0);
        jVar.f18087e.order(ByteOrder.nativeOrder());
        this.E = new r1();
        this.X = -1.0f;
        this.f4337t0 = 0;
        this.f4319c1 = 0;
        this.U0 = -1;
        this.V0 = -1;
        this.T0 = -9223372036854775807L;
        this.f4325i1 = -9223372036854775807L;
        this.f4333q1 = -9223372036854775807L;
        this.R0 = -9223372036854775807L;
        this.f4320d1 = 0;
        this.f4321e1 = 0;
        this.f4331o1 = new y1.c();
        this.f4338t1 = false;
        this.f4339u1 = 0L;
        int i11 = j0.f15482c;
        this.f4345x1 = f1.f15464j;
        y1.b bVar = y1.b.f18581b;
        this.f4341v1 = bVar;
        this.f4343w1 = bVar;
    }

    @Override // y1.a
    public void A(float f10, float f11) {
        this.O = f10;
        this.P = f11;
        z0(this.S);
    }

    public final void A0() throws MediaCryptoException, y1.k {
        a1.i iVar = this.K;
        iVar.getClass();
        x1.a aVarN = iVar.n();
        if (aVarN instanceof b2.h) {
            try {
                MediaCrypto mediaCrypto = this.M;
                mediaCrypto.getClass();
                ((b2.h) aVarN).getClass();
                mediaCrypto.setMediaDrmSession(null);
            } catch (MediaCryptoException e7) {
                throw f(e7, this.G, false, 6006);
            }
        }
        r0(this.K);
        this.f4320d1 = 0;
        this.f4321e1 = 0;
    }

    @Override // y1.a
    public final int B(r1.p pVar) throws y1.k {
        try {
            return y0(this.f4342w, pVar);
        } catch (y e7) {
            throw f(e7, pVar, false, 4002);
        }
    }

    public final void B0(long j10) {
        r1.p pVar = (r1.p) this.f4332p1.f4313d.f(j10);
        if (pVar == null && this.f4334r1 && this.T != null) {
            pVar = (r1.p) this.f4332p1.f4313d.e();
        }
        if (pVar != null) {
            this.H = pVar;
        } else if (!this.V || this.H == null) {
            return;
        }
        r1.p pVar2 = this.H;
        pVar2.getClass();
        e0(pVar2, this.T);
        this.V = false;
        this.f4334r1 = false;
    }

    @Override // y1.a
    public final int C() {
        return 8;
    }

    public final void E(MediaFormat mediaFormat) {
        if (Build.VERSION.SDK_INT >= 29) {
            for (Map.Entry entry : this.f4341v1.f18582a.entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                if (value == null) {
                    mediaFormat.setString(str, null);
                } else if (value instanceof Integer) {
                    mediaFormat.setInteger(str, ((Integer) value).intValue());
                } else if (value instanceof Long) {
                    mediaFormat.setLong(str, ((Long) value).longValue());
                } else if (value instanceof Float) {
                    mediaFormat.setFloat(str, ((Float) value).floatValue());
                } else if (value instanceof String) {
                    mediaFormat.setString(str, (String) value);
                } else if (value instanceof ByteBuffer) {
                    mediaFormat.setByteBuffer(str, (ByteBuffer) value);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x031b  */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean F(long j10, long j11) {
        j jVar;
        int i10;
        int length;
        int i11;
        int i12;
        a9.o.t(!this.f4327k1);
        j jVar2 = this.B;
        if (jVar2.n()) {
            ByteBuffer byteBuffer = jVar2.f18087e;
            int i13 = this.V0;
            int i14 = jVar2.f4289k;
            long j12 = jVar2.f18089g;
            boolean zV = V(this.l, jVar2.f4288j);
            boolean zC = jVar2.c(4);
            r1.p pVar = this.H;
            pVar.getClass();
            if (!k0(j10, j11, null, byteBuffer, i13, 0, i14, j12, zV, zC, pVar)) {
                return false;
            }
            jVar = jVar2;
            g0(jVar.f4288j);
            jVar.g();
        } else {
            jVar = jVar2;
        }
        ?? r12 = 0;
        if (this.f4326j1) {
            this.f4327k1 = true;
            return false;
        }
        boolean z = true;
        boolean z4 = this.Z0;
        x1.g gVar = this.A;
        if (z4) {
            a9.o.t(jVar.m(gVar));
            this.Z0 = false;
        }
        if (this.f4317a1) {
            if (jVar.n()) {
                return true;
            }
            this.Y0 = false;
            o0();
            this.f4317a1 = false;
            W();
            if (!this.Y0) {
                return false;
            }
        }
        a9.o.t(!this.f4326j1);
        i8 i8Var = this.f18554c;
        i8Var.n();
        gVar.g();
        while (true) {
            gVar.g();
            int iW = w(i8Var, gVar, r12);
            if (iW == -5) {
                d0(i8Var);
                break;
            }
            if (iW != -4) {
                if (iW != -3) {
                    throw new IllegalStateException();
                }
                if (k()) {
                    R().f4315f = this.f4325i1;
                }
            } else {
                if (gVar.c(4)) {
                    this.f4326j1 = z;
                    R().f4315f = this.f4325i1;
                    break;
                }
                this.f4325i1 = Math.max(this.f4325i1, gVar.f18089g);
                if (k() || this.z.c(PKIFailureInfo.duplicateCertReq)) {
                    R().f4315f = this.f4325i1;
                }
                byte[] bArr = null;
                if (this.f4328l1) {
                    r1.p pVar2 = this.G;
                    pVar2.getClass();
                    this.H = pVar2;
                    if (Objects.equals(pVar2.f13523o, "audio/opus") && !this.H.r.isEmpty()) {
                        byte[] bArr2 = (byte[]) this.H.r.get(r12);
                        int i15 = (bArr2[10] & 255) | ((bArr2[11] & 255) << 8);
                        r1.p pVar3 = this.H;
                        pVar3.getClass();
                        r1.o oVar = new r1.o(pVar3);
                        oVar.I = i15;
                        this.H = new r1.p(oVar);
                    }
                    e0(this.H, null);
                    this.f4328l1 = r12;
                }
                gVar.l();
                r1.p pVar4 = this.H;
                if (pVar4 != null && Objects.equals(pVar4.f13523o, "audio/opus")) {
                    if (gVar.c(268435456)) {
                        gVar.f18085c = this.H;
                        T(gVar);
                    }
                    if (this.l - gVar.f18089g <= 80000) {
                        List list = this.H.r;
                        r1 r1Var = this.E;
                        r1Var.getClass();
                        gVar.f18087e.getClass();
                        if (gVar.f18087e.limit() - gVar.f18087e.position() != 0) {
                            if (r1Var.f294b == 2 && (list.size() == z || list.size() == 3)) {
                                bArr = (byte[]) list.get(r12);
                            }
                            ByteBuffer byteBuffer2 = gVar.f18087e;
                            int iPosition = byteBuffer2.position();
                            int iLimit = byteBuffer2.limit();
                            int i16 = iLimit - iPosition;
                            int i17 = (i16 + 255) / 255;
                            int i18 = i17 + 27 + i16;
                            if (r1Var.f294b == 2) {
                                length = bArr != null ? bArr.length + 28 : 47;
                                i10 = length + 44 + i18;
                            } else {
                                i10 = i18;
                                length = 0;
                            }
                            if (r1Var.f293a.capacity() < i10) {
                                r1Var.f293a = ByteBuffer.allocate(i10).order(ByteOrder.LITTLE_ENDIAN);
                            } else {
                                r1Var.f293a.clear();
                            }
                            ByteBuffer byteBuffer3 = r1Var.f293a;
                            if (r1Var.f294b == 2) {
                                if (bArr != null) {
                                    r1.a(byteBuffer3, 0L, 0, 1, true);
                                    i12 = iLimit;
                                    byteBuffer3.put(nh.b.j(bArr.length));
                                    byteBuffer3.put(bArr);
                                    i11 = iPosition;
                                    byteBuffer3.putInt(22, f0.j(byteBuffer3.arrayOffset(), bArr.length + 28, 0, byteBuffer3.array()));
                                    byteBuffer3.position(bArr.length + 28);
                                } else {
                                    i11 = iPosition;
                                    i12 = iLimit;
                                    byteBuffer3.put(r1.f291d);
                                }
                                byteBuffer3.put(r1.f292e);
                            } else {
                                i11 = iPosition;
                                i12 = iLimit;
                            }
                            int iE = r1Var.f295c + ((int) ((v1.o.e(byteBuffer2.get(0), byteBuffer2.limit() > 1 ? byteBuffer2.get(1) : (byte) 0) * 48000) / 1000000));
                            r1Var.f295c = iE;
                            r1.a(byteBuffer3, iE, r1Var.f294b, i17, false);
                            for (int i19 = 0; i19 < i17; i19++) {
                                if (i16 >= 255) {
                                    byteBuffer3.put((byte) -1);
                                    i16 -= 255;
                                } else {
                                    byteBuffer3.put((byte) i16);
                                    i16 = 0;
                                }
                            }
                            int i20 = i12;
                            for (int i21 = i11; i21 < i20; i21++) {
                                byteBuffer3.put(byteBuffer2.get(i21));
                            }
                            byteBuffer2.position(byteBuffer2.limit());
                            byteBuffer3.flip();
                            if (r1Var.f294b == 2) {
                                byteBuffer3.putInt(length + 66, f0.j(byteBuffer3.arrayOffset() + length + 44, byteBuffer3.limit() - byteBuffer3.position(), 0, byteBuffer3.array()));
                            } else {
                                byteBuffer3.putInt(22, f0.j(byteBuffer3.arrayOffset(), byteBuffer3.limit() - byteBuffer3.position(), 0, byteBuffer3.array()));
                            }
                            r1Var.f294b++;
                            r1Var.f293a = byteBuffer3;
                            gVar.g();
                            gVar.k(r1Var.f293a.remaining());
                            gVar.f18087e.put(r1Var.f293a);
                            gVar.l();
                        }
                        if (!jVar.n()) {
                        }
                    }
                } else if (!jVar.n()) {
                    long j13 = this.l;
                    if (V(j13, jVar.f4288j) != V(j13, gVar.f18089g)) {
                        break;
                    }
                } else {
                    if (!jVar.m(gVar)) {
                        break;
                    }
                    r12 = 0;
                    z = true;
                }
            }
        }
        this.Z0 = true;
        if (jVar.n()) {
            jVar.l();
        }
        return jVar.n() || this.f4326j1 || this.f4317a1;
    }

    public abstract y1.d G(q qVar, r1.p pVar, r1.p pVar2, boolean z);

    public p H(IllegalStateException illegalStateException, q qVar) {
        return new p(illegalStateException, qVar);
    }

    public final boolean I() throws MediaCryptoException, y1.k {
        if (this.f4322f1) {
            this.f4320d1 = 1;
            if (this.N0) {
                this.f4321e1 = 3;
                return false;
            }
            this.f4321e1 = 2;
        } else {
            A0();
        }
        return true;
    }

    public final boolean J(long j10, long j11) throws MediaCryptoException, y1.k {
        n nVar = this.R;
        nVar.getClass();
        boolean z = this.V0 >= 0;
        MediaCodec.BufferInfo bufferInfo = this.C;
        if (!z) {
            int iU = nVar.u(bufferInfo);
            if (iU < 0) {
                if (iU != -2) {
                    if (this.Q0 && (this.f4326j1 || this.f4320d1 == 2)) {
                        j0();
                    }
                    long j12 = this.R0;
                    if (j12 != -9223372036854775807L) {
                        long j13 = j12 + 100;
                        this.f18558g.getClass();
                        if (j13 < System.currentTimeMillis()) {
                            j0();
                        }
                    }
                    return false;
                }
                this.f4324h1 = true;
                n nVar2 = this.R;
                nVar2.getClass();
                MediaFormat mediaFormatK = nVar2.k();
                if (this.f4337t0 != 0 && mediaFormatK.getInteger("width") == 32 && mediaFormatK.getInteger("height") == 32) {
                    this.P0 = true;
                } else {
                    if (Build.VERSION.SDK_INT >= 29 && !this.f4345x1.isEmpty()) {
                        j0<String> j0Var = this.f4345x1;
                        y1.b bVar = y1.b.f18581b;
                        HashMap map = new HashMap();
                        for (String str : j0Var) {
                            if (mediaFormatK.containsKey(str)) {
                                int valueTypeForKey = mediaFormatK.getValueTypeForKey(str);
                                if (valueTypeForKey == 1) {
                                    map.put(str, Integer.valueOf(mediaFormatK.getInteger(str)));
                                } else if (valueTypeForKey == 2) {
                                    map.put(str, Long.valueOf(mediaFormatK.getLong(str)));
                                } else if (valueTypeForKey == 3) {
                                    map.put(str, Float.valueOf(mediaFormatK.getFloat(str)));
                                } else if (valueTypeForKey == 4) {
                                    map.put(str, mediaFormatK.getString(str));
                                } else if (valueTypeForKey == 5) {
                                    ByteBuffer byteBuffer = mediaFormatK.getByteBuffer(str);
                                    if (byteBuffer == null) {
                                        map.put(str, null);
                                    } else {
                                        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBuffer.remaining());
                                        byteBufferAllocate.put(byteBuffer.duplicate());
                                        byteBufferAllocate.flip();
                                        map.put(str, byteBufferAllocate);
                                    }
                                }
                            }
                        }
                        y1.b bVar2 = new y1.b(map);
                        if (!bVar2.equals(this.f4343w1)) {
                            this.f4343w1 = bVar2;
                            b0(bVar2);
                        }
                    }
                    this.T = mediaFormatK;
                    this.V = true;
                }
                return true;
            }
            bufferInfo.presentationTimeUs -= this.f4339u1;
            if (this.P0) {
                this.P0 = false;
                nVar.h(iU);
                return true;
            }
            if (bufferInfo.size == 0 && (bufferInfo.flags & 4) != 0) {
                j0();
                return false;
            }
            this.V0 = iU;
            ByteBuffer byteBufferH = nVar.H(iU);
            this.W0 = byteBufferH;
            if (byteBufferH != null) {
                byteBufferH.position(bufferInfo.offset);
                this.W0.limit(bufferInfo.offset + bufferInfo.size);
            }
            B0(bufferInfo.presentationTimeUs);
        }
        boolean z4 = this.f4338t1 || bufferInfo.presentationTimeUs < this.l;
        long j14 = this.f4332p1.f4315f;
        boolean z10 = j14 != -9223372036854775807L && j14 <= bufferInfo.presentationTimeUs;
        this.X0 = z10;
        ByteBuffer byteBuffer2 = this.W0;
        int i10 = this.V0;
        int i11 = bufferInfo.flags;
        long j15 = bufferInfo.presentationTimeUs;
        r1.p pVar = this.H;
        pVar.getClass();
        if (k0(j10, j11, nVar, byteBuffer2, i10, i11, 1, j15, z4, z10, pVar)) {
            g0(bufferInfo.presentationTimeUs);
            boolean z11 = (bufferInfo.flags & 4) != 0;
            if (!z11 && this.g1 && this.X0) {
                this.f18558g.getClass();
                this.R0 = System.currentTimeMillis();
            }
            this.V0 = -1;
            this.W0 = null;
            if (!z11) {
                return true;
            }
            j0();
        }
        return false;
    }

    public final boolean K() throws MediaCryptoException, y1.k {
        n nVar = this.R;
        if (nVar == null || this.f4320d1 == 2 || this.f4326j1) {
            return false;
        }
        int i10 = this.U0;
        x1.g gVar = this.z;
        if (i10 < 0) {
            int iP = nVar.p();
            this.U0 = iP;
            if (iP < 0) {
                return false;
            }
            gVar.f18087e = nVar.C(iP);
            gVar.g();
        }
        if (this.f4320d1 == 1) {
            if (!this.Q0) {
                this.g1 = true;
                nVar.g(this.U0, 0, 0L, 4);
                this.U0 = -1;
                gVar.f18087e = null;
            }
            this.f4320d1 = 2;
            return false;
        }
        if (this.O0) {
            this.O0 = false;
            ByteBuffer byteBuffer = gVar.f18087e;
            byteBuffer.getClass();
            byteBuffer.put(f4316y1);
            nVar.g(this.U0, 38, 0L, 0);
            this.U0 = -1;
            gVar.f18087e = null;
            this.f4322f1 = true;
            return true;
        }
        if (this.f4319c1 == 1) {
            int i11 = 0;
            while (true) {
                r1.p pVar = this.S;
                pVar.getClass();
                if (i11 >= pVar.r.size()) {
                    break;
                }
                byte[] bArr = (byte[]) this.S.r.get(i11);
                ByteBuffer byteBuffer2 = gVar.f18087e;
                byteBuffer2.getClass();
                byteBuffer2.put(bArr);
                i11++;
            }
            this.f4319c1 = 2;
        }
        ByteBuffer byteBuffer3 = gVar.f18087e;
        byteBuffer3.getClass();
        int iPosition = byteBuffer3.position();
        i8 i8Var = this.f18554c;
        i8Var.n();
        try {
            nVar.l(new a2.c0(this, 18, i8Var));
            int i12 = this.F.get();
            if (i12 == -3) {
                if (k()) {
                    R().f4315f = this.f4325i1;
                }
                return false;
            }
            if (i12 == -5) {
                if (this.f4319c1 == 2) {
                    gVar.g();
                    this.f4319c1 = 1;
                }
                d0(i8Var);
                return true;
            }
            if (gVar.c(4)) {
                R().f4315f = this.f4325i1;
                if (this.f4319c1 == 2) {
                    gVar.g();
                    this.f4319c1 = 1;
                }
                this.f4326j1 = true;
                if (!this.f4322f1) {
                    j0();
                    return false;
                }
                if (!this.Q0) {
                    this.g1 = true;
                    nVar.g(this.U0, 0, 0L, 4);
                    this.U0 = -1;
                    gVar.f18087e = null;
                }
                return false;
            }
            if (!this.f4322f1 && !gVar.c(1)) {
                gVar.g();
                if (this.f4319c1 == 2) {
                    this.f4319c1 = 1;
                }
                return true;
            }
            long j10 = gVar.f18089g;
            if (t0(gVar)) {
                return true;
            }
            boolean zC = gVar.c(1073741824);
            if (zC) {
                x1.c cVar = gVar.f18086d;
                if (iPosition == 0) {
                    cVar.getClass();
                } else {
                    if (cVar.f18078d == null) {
                        int[] iArr = new int[1];
                        cVar.f18078d = iArr;
                        cVar.f18083i.numBytesOfClearData = iArr;
                    }
                    int[] iArr2 = cVar.f18078d;
                    iArr2[0] = iArr2[0] + iPosition;
                }
            }
            if (this.f4328l1) {
                t tVarR = R();
                u1.c0 c0Var = tVarR.f4313d;
                r1.p pVar2 = this.G;
                pVar2.getClass();
                c0Var.a(pVar2, j10);
                tVarR.f4314e = true;
                this.f4328l1 = false;
            }
            this.f4325i1 = Math.max(this.f4325i1, j10);
            if (k() || gVar.c(PKIFailureInfo.duplicateCertReq)) {
                R().f4315f = this.f4325i1;
            }
            gVar.l();
            if (gVar.c(268435456)) {
                T(gVar);
            }
            if (this.f4338t1) {
                long j11 = this.f4325i1;
                if (j10 <= j11) {
                    this.f4339u1 = (j11 - j10) + 1 + this.f4339u1;
                }
                this.f4325i1 = j10;
                this.f4338t1 = false;
            }
            i0(gVar);
            int iN = N(gVar);
            long j12 = this.f4339u1 + j10;
            if (zC) {
                nVar.d(this.U0, gVar.f18086d, j12, iN);
            } else {
                int i13 = this.U0;
                ByteBuffer byteBuffer4 = gVar.f18087e;
                byteBuffer4.getClass();
                nVar.g(i13, byteBuffer4.limit(), j12, iN);
            }
            this.U0 = -1;
            gVar.f18087e = null;
            this.f4322f1 = true;
            this.f4319c1 = 0;
            this.f4331o1.f18589c++;
            return true;
        } catch (x1.f e7) {
            Z(e7);
            l0(0);
            L();
            return true;
        }
    }

    public final void L() {
        try {
            n nVar = this.R;
            nVar.getClass();
            nVar.flush();
        } finally {
            p0();
        }
    }

    public final List M(boolean z) {
        r1.p pVar = this.G;
        pVar.getClass();
        l lVar = this.f4342w;
        ArrayList arrayListP = P(lVar, pVar, z);
        if (arrayListP.isEmpty() && z) {
            arrayListP = P(lVar, pVar, false);
            if (!arrayListP.isEmpty()) {
                u1.a.p("Drm session requires secure decoder for " + pVar.f13523o + ", but no secure decoder available. Trying to proceed with " + arrayListP + ".");
            }
        }
        return arrayListP;
    }

    public int N(x1.g gVar) {
        return 0;
    }

    public abstract float O(float f10, r1.p pVar, r1.p[] pVarArr);

    public abstract ArrayList P(l lVar, r1.p pVar, boolean z);

    public long Q(long j10, long j11, boolean z) {
        return super.h(j10, j11);
    }

    public final t R() {
        ArrayDeque arrayDeque = this.D;
        return !arrayDeque.isEmpty() ? (t) arrayDeque.getLast() : this.f4332p1;
    }

    public abstract ba.i S(q qVar, r1.p pVar, MediaCrypto mediaCrypto, float f10);

    public abstract void T(x1.g gVar);

    /* JADX WARN: Removed duplicated region for block: B:27:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x011c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void U(q qVar, MediaCrypto mediaCrypto) {
        int i10;
        this.f4323h0 = qVar;
        r1.p pVar = this.G;
        pVar.getClass();
        String str = qVar.f4294a;
        float f10 = this.P;
        r1.p[] pVarArr = this.f18561j;
        pVarArr.getClass();
        float fO = O(f10, pVar, pVarArr);
        if (fO <= this.f4344x) {
            fO = -1.0f;
        }
        this.f18558g.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        ba.i iVarS = S(qVar, pVar, mediaCrypto, fO);
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 31) {
            z1.i iVar = this.f18557f;
            iVar.getClass();
            LogSessionId logSessionIdA = iVar.a();
            if (!logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                ((MediaFormat) iVarS.f2699b).setString("log-session-id", logSessionIdA.getStringId());
            }
        }
        try {
            Trace.beginSection("createCodec:" + str);
            n nVarS = this.f4340v.s(iVarS);
            this.R = nVarS;
            this.S0 = nVarS.m(new a1.i(14, this));
            Trace.endSection();
            this.f18558g.getClass();
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            if (!qVar.e(this.f4336t, pVar)) {
                String strD = r1.p.d(pVar);
                Locale locale = Locale.US;
                u1.a.p("Format exceeds selected codec's capabilities [" + strD + ", " + str + "]");
            }
            this.X = fO;
            this.S = pVar;
            boolean z = false;
            if (i11 <= 25 && "OMX.Exynos.avc.dec.secure".equals(str)) {
                String str2 = Build.MODEL;
                if (str2.startsWith("SM-T585") || str2.startsWith("SM-A510") || str2.startsWith("SM-A520") || str2.startsWith("SM-J700")) {
                    i10 = 2;
                }
            } else if (i11 >= 24 || !("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str))) {
                i10 = 0;
            } else {
                String str3 = Build.DEVICE;
                if ("flounder".equals(str3) || "flounder_lte".equals(str3) || "grouper".equals(str3) || "tilapia".equals(str3)) {
                    i10 = 1;
                }
            }
            this.f4337t0 = i10;
            this.M0 = i11 == 29 && "c2.android.aac.decoder".equals(str);
            this.N0 = i11 == 23 && "OMX.google.vorbis.decoder".equals(str);
            String str4 = qVar.f4294a;
            if ((i11 <= 25 && "OMX.rk.video_decoder.avc".equals(str4)) || ((i11 <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str4) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str4) || "OMX.bcm.vdec.avc.tunnel".equals(str4) || "OMX.bcm.vdec.avc.tunnel.secure".equals(str4) || "OMX.bcm.vdec.hevc.tunnel".equals(str4) || "OMX.bcm.vdec.hevc.tunnel.secure".equals(str4))) || ("Amazon".equals(Build.MANUFACTURER) && "AFTS".equals(Build.MODEL) && qVar.f4299f))) {
                z = true;
            }
            this.Q0 = z;
            this.R.getClass();
            if (this.f18559h == 2) {
                this.f18558g.getClass();
                this.T0 = SystemClock.elapsedRealtime() + 1000;
            }
            this.f4331o1.f18587a++;
            long j10 = jElapsedRealtime2 - jElapsedRealtime;
            if (i11 >= 31 && !this.f4345x1.isEmpty()) {
                n nVar = this.R;
                nVar.getClass();
                nVar.I(new ArrayList(this.f4345x1));
            }
            a0(jElapsedRealtime2, j10, str);
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
    }

    public final boolean V(long j10, long j11) {
        r1.p pVar;
        return j11 < j10 && ((pVar = this.H) == null || !Objects.equals(pVar.f13523o, "audio/opus") || j10 - j11 > 80000);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void W() {
        r1.p pVar;
        a1.i iVar;
        if (this.R != null || this.Y0 || (pVar = this.G) == null) {
            return;
        }
        boolean z = true;
        boolean z4 = this.K == null && x0(pVar);
        String str = pVar.f13523o;
        if (z4) {
            this.Y0 = false;
            o0();
            boolean zEquals = "audio/mp4a-latm".equals(str);
            j jVar = this.B;
            if (zEquals || "audio/mpeg".equals(str) || "audio/opus".equals(str)) {
                jVar.getClass();
                jVar.l = 32;
            } else {
                jVar.getClass();
                jVar.l = 1;
            }
            this.Y0 = true;
            return;
        }
        r0(this.K);
        if (this.I == null) {
            try {
                iVar = this.I;
                if (iVar == null && (iVar.t() == 3 || this.I.t() == 4)) {
                    a1.i iVar2 = this.I;
                    str.getClass();
                    if (iVar2.E(str)) {
                    }
                    X(this.M, z);
                } else {
                    z = false;
                    X(this.M, z);
                }
            } catch (s e7) {
                throw f(e7, pVar, false, 4001);
            }
        } else {
            a9.o.t(this.M == null);
            a1.i iVar3 = this.I;
            x1.a aVarN = iVar3.n();
            if (b2.h.f2533a && (aVarN instanceof b2.h)) {
                int iT = iVar3.t();
                if (iT == 1) {
                    b2.b bVarO = iVar3.o();
                    bVarO.getClass();
                    throw f(bVarO, this.G, false, bVarO.f2526a);
                }
                if (iT == 4) {
                }
            } else {
                if (aVarN == null) {
                    if (iVar3.o() != null) {
                    }
                } else if (aVarN instanceof b2.h) {
                    try {
                        this.M = new MediaCrypto(null, null);
                    } catch (MediaCryptoException e10) {
                        throw f(e10, this.G, false, 6006);
                    }
                }
                iVar = this.I;
                if (iVar == null) {
                    z = false;
                    X(this.M, z);
                }
            }
        }
        MediaCrypto mediaCrypto = this.M;
        if (mediaCrypto == null || this.R != null) {
            return;
        }
        mediaCrypto.release();
        this.M = null;
    }

    public final void X(MediaCrypto mediaCrypto, boolean z) throws s {
        r1.p pVar = this.G;
        pVar.getClass();
        if (this.Y == null) {
            try {
                List listM = M(z);
                this.Y = new ArrayDeque();
                if (!listM.isEmpty()) {
                    this.Y.add((q) listM.get(0));
                }
                this.Z = null;
            } catch (y e7) {
                throw new s(pVar, e7, z, -49998);
            }
        }
        if (this.Y.isEmpty()) {
            throw new s(pVar, null, z, -49999);
        }
        ArrayDeque arrayDeque = this.Y;
        arrayDeque.getClass();
        while (this.R == null) {
            q qVar = (q) arrayDeque.peekFirst();
            qVar.getClass();
            if (!Y(pVar) || !v0(qVar)) {
                return;
            }
            try {
                U(qVar, mediaCrypto);
            } catch (Exception e10) {
                u1.a.q("Failed to initialize decoder: " + qVar, e10);
                arrayDeque.removeFirst();
                s sVar = new s("Decoder init failed: " + qVar.f4294a + ", " + pVar, e10, pVar.f13523o, z, qVar, a.y(e10) ? a.d(e10).getDiagnosticInfo() : null);
                Z(sVar);
                s sVar2 = this.Z;
                if (sVar2 == null) {
                    this.Z = sVar;
                } else {
                    this.Z = new s(sVar2.getMessage(), sVar2.getCause(), sVar2.f4305a, sVar2.f4306b, sVar2.f4307c, sVar2.f4308d);
                }
                if (arrayDeque.isEmpty()) {
                    throw this.Z;
                }
            }
        }
        this.Y = null;
    }

    public boolean Y(r1.p pVar) {
        return true;
    }

    public abstract void Z(Exception exc);

    public abstract void a0(long j10, long j11, String str);

    public abstract void b0(y1.b bVar);

    public abstract void c0(String str);

    @Override // y1.a, y1.x0
    public void d(int i10, Object obj) {
        int i11;
        if (i10 == 11) {
            y1.b0 b0Var = (y1.b0) obj;
            b0Var.getClass();
            this.L = b0Var;
            return;
        }
        if (i10 != 21) {
            if (i10 == 22 && (i11 = Build.VERSION.SDK_INT) >= 29) {
                obj.getClass();
                j0 j0Var = (j0) obj;
                if (this.f4345x1.equals(j0Var)) {
                    return;
                }
                if (i11 >= 31) {
                    HashSet hashSet = new HashSet(j0Var);
                    HashSet hashSet2 = new HashSet();
                    o1 it = this.f4345x1.iterator();
                    while (it.hasNext()) {
                        String str = (String) it.next();
                        if (!hashSet.remove(str)) {
                            hashSet2.add(str);
                        }
                    }
                    n nVar = this.R;
                    if (nVar != null) {
                        if (!hashSet2.isEmpty()) {
                            nVar.L(new ArrayList(hashSet2));
                        }
                        if (!hashSet.isEmpty()) {
                            nVar.I(new ArrayList(hashSet));
                        }
                    }
                }
                this.f4345x1 = j0Var;
                return;
            }
            return;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            obj.getClass();
            y1.b bVar = (y1.b) obj;
            this.f4341v1 = bVar;
            n nVar2 = this.R;
            if (nVar2 != null) {
                Bundle bundle = new Bundle();
                for (Map.Entry entry : bVar.f18582a.entrySet()) {
                    String str2 = (String) entry.getKey();
                    Object value = entry.getValue();
                    if (value != null) {
                        if (value instanceof Integer) {
                            bundle.putInt(str2, ((Integer) value).intValue());
                        } else if (value instanceof Long) {
                            bundle.putLong(str2, ((Long) value).longValue());
                        } else if (value instanceof Float) {
                            bundle.putFloat(str2, ((Float) value).floatValue());
                        } else if (value instanceof String) {
                            bundle.putString(str2, (String) value);
                        } else if (value instanceof ByteBuffer) {
                            ByteBuffer byteBuffer = (ByteBuffer) value;
                            byte[] bArr = new byte[byteBuffer.remaining()];
                            byteBuffer.duplicate().get(bArr);
                            bundle.putByteArray(str2, bArr);
                        }
                    }
                }
                nVar2.e(bundle);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x0125, code lost:
    
        if (r4.E(r3) != false) goto L149;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public y1.d d0(i8 i8Var) {
        int i10;
        x1.a aVarN;
        x1.a aVarN2;
        Pair pairB;
        boolean z = true;
        this.f4328l1 = true;
        r1.p pVar = (r1.p) i8Var.f15742c;
        pVar.getClass();
        String str = pVar.f13523o;
        if (str == null) {
            throw f(new IllegalArgumentException("Sample MIME type is null."), pVar, false, 4005);
        }
        if (str.equals("video/av01") || str.equals("video/x-vnd.on2.vp9")) {
            if (!pVar.r.isEmpty()) {
                r1.o oVar = new r1.o(pVar);
                oVar.f13495q = null;
                pVar = new r1.p(oVar);
            }
        } else if (str.equals("video/dolby-vision")) {
            byte[] bArr = u1.c.f15189a;
            if (str.equals("video/dolby-vision") && (pairB = u1.c.b(pVar)) != null) {
                int iIntValue = ((Integer) pairB.first).intValue();
                String str2 = (iIntValue == 16 || iIntValue == 32 || iIntValue == 256) ? "video/hevc" : iIntValue != 512 ? iIntValue != 1024 ? null : "video/av01" : "video/avc";
                if (Objects.equals(str2, "video/av01")) {
                }
            }
        }
        r1.p pVar2 = pVar;
        a1.i iVar = (a1.i) i8Var.f15741b;
        a1.i iVar2 = this.K;
        if (iVar2 != iVar) {
            if (iVar != null) {
                iVar.j(null);
            }
            if (iVar2 != null) {
                iVar2.C(null);
            }
        }
        this.K = iVar;
        this.G = pVar2;
        if (this.Y0) {
            this.f4317a1 = true;
            return null;
        }
        n nVar = this.R;
        if (nVar == null) {
            this.Y = null;
            W();
            return null;
        }
        q qVar = this.f4323h0;
        qVar.getClass();
        r1.p pVar3 = this.S;
        pVar3.getClass();
        a1.i iVar3 = this.I;
        a1.i iVar4 = this.K;
        if (iVar3 != iVar4) {
            if (iVar4 != null && iVar3 != null && (aVarN = iVar4.n()) != null && (aVarN2 = iVar3.n()) != null && aVarN.getClass().equals(aVarN2.getClass())) {
                if (aVarN instanceof b2.h) {
                    if (iVar4.r().equals(iVar3.r())) {
                        UUID uuid = r1.f.f13438e;
                        if (!uuid.equals(iVar3.r()) && !uuid.equals(iVar4.r())) {
                            if (!qVar.f4299f) {
                                if (iVar4.t() != 2) {
                                    if (iVar4.t() == 3 || iVar4.t() == 4) {
                                        String str3 = pVar2.f13523o;
                                        str3.getClass();
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (this.f4322f1) {
                this.f4320d1 = 1;
                this.f4321e1 = 3;
            } else {
                m0();
                W();
            }
            return new y1.d(qVar.f4294a, pVar3, pVar2, 0, 128);
        }
        boolean z4 = this.K != this.I;
        y1.d dVarG = G(qVar, pVar3, pVar2, R().f4314e);
        int i11 = dVarG.f18611d;
        if (i11 != 0) {
            if (i11 == 1) {
                if (z0(pVar2)) {
                    this.S = pVar2;
                    if (z4) {
                        if (!I()) {
                        }
                    } else if (this.f4322f1) {
                        this.f4320d1 = 1;
                        if (this.N0) {
                            this.f4321e1 = 3;
                            i10 = 2;
                        } else {
                            this.f4321e1 = 1;
                        }
                    }
                }
                i10 = 16;
            } else if (i11 == 2) {
                if (z0(pVar2)) {
                    this.f4318b1 = true;
                    this.f4319c1 = 1;
                    int i12 = this.f4337t0;
                    if (i12 != 2 && (i12 != 1 || pVar2.f13529v != pVar3.f13529v || pVar2.f13530w != pVar3.f13530w)) {
                        z = false;
                    }
                    this.O0 = z;
                    this.S = pVar2;
                    if (!z4 || I()) {
                    }
                }
                i10 = 16;
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException();
                }
                if (z0(pVar2)) {
                    this.S = pVar2;
                    if (z4 && !I()) {
                        i10 = 2;
                    }
                }
                i10 = 16;
            }
            return (i11 != 0 || (this.R == nVar && this.f4321e1 != 3)) ? dVarG : new y1.d(qVar.f4294a, pVar3, pVar2, 0, i10);
        }
        if (this.f4322f1) {
            this.f4320d1 = 1;
            this.f4321e1 = 3;
        } else {
            m0();
            W();
        }
        i10 = 0;
        if (i11 != 0) {
        }
    }

    public abstract void e0(r1.p pVar, MediaFormat mediaFormat);

    public void g0(long j10) {
        this.f4333q1 = j10;
        while (true) {
            ArrayDeque arrayDeque = this.D;
            if (arrayDeque.isEmpty() || j10 < ((t) arrayDeque.peek()).f4310a) {
                return;
            }
            t tVar = (t) arrayDeque.poll();
            tVar.getClass();
            s0(tVar);
            h0();
        }
    }

    @Override // y1.a
    public final long h(long j10, long j11) {
        return Q(j10, j11, this.S0);
    }

    public abstract void h0();

    public final void j0() throws MediaCryptoException, y1.k {
        int i10 = this.f4321e1;
        if (i10 == 1) {
            L();
            return;
        }
        if (i10 == 2) {
            L();
            A0();
        } else if (i10 != 3) {
            this.f4327k1 = true;
            n0();
        } else {
            m0();
            W();
        }
    }

    public abstract boolean k0(long j10, long j11, n nVar, ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z, boolean z4, r1.p pVar);

    public final boolean l0(int i10) throws MediaCryptoException, y1.k {
        i8 i8Var = this.f18554c;
        i8Var.n();
        x1.g gVar = this.f4346y;
        gVar.g();
        int iW = w(i8Var, gVar, i10 | 4);
        if (iW == -5) {
            d0(i8Var);
            return true;
        }
        if (iW != -4 || !gVar.c(4)) {
            return false;
        }
        this.f4326j1 = true;
        j0();
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void m0() {
        try {
            n nVar = this.R;
            if (nVar != null) {
                nVar.a();
                this.f4331o1.f18588b++;
                q qVar = this.f4323h0;
                qVar.getClass();
                c0(qVar.f4294a);
            }
            this.R = null;
            try {
                MediaCrypto mediaCrypto = this.M;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
            }
        } catch (Throwable th2) {
            this.R = null;
            try {
                MediaCrypto mediaCrypto2 = this.M;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th2;
            } finally {
            }
        }
    }

    @Override // y1.a
    public void n() {
        this.G = null;
        s0(t.f4309g);
        this.D.clear();
        if (this.Y0) {
            this.Y0 = false;
            o0();
        } else {
            if (this.R == null) {
                return;
            }
            if (w0()) {
                m0();
            } else if (u0()) {
                L();
            } else {
                this.f4338t1 = true;
            }
        }
    }

    public abstract void n0();

    public final void o0() {
        this.f4325i1 = -9223372036854775807L;
        R().f4315f = -9223372036854775807L;
        this.f4333q1 = -9223372036854775807L;
        this.f4317a1 = false;
        this.B.g();
        this.A.g();
        this.Z0 = false;
        r1 r1Var = this.E;
        r1Var.getClass();
        r1Var.f293a = s1.l.f13911a;
        r1Var.f295c = 0;
        r1Var.f294b = 2;
    }

    @Override // y1.a
    public void p(long j10, boolean z, boolean z4) {
        ArrayDeque arrayDeque = this.D;
        if (!arrayDeque.isEmpty()) {
            this.f4332p1 = (t) arrayDeque.getLast();
        }
        arrayDeque.clear();
        if (z4) {
            this.f4326j1 = false;
            this.f4327k1 = false;
            this.f4329m1 = false;
            if (this.Y0) {
                o0();
            } else if (this.R != null) {
                if (w0()) {
                    m0();
                    W();
                } else if (u0()) {
                    L();
                } else {
                    this.f4338t1 = true;
                }
            }
            if (this.f4332p1.f4313d.h() > 0) {
                this.f4328l1 = true;
            }
            this.f4332p1.f4313d.b();
            this.f4332p1.f4314e = false;
        }
    }

    public void p0() {
        this.U0 = -1;
        this.z.f18087e = null;
        this.V0 = -1;
        this.W0 = null;
        this.f4325i1 = -9223372036854775807L;
        R().f4315f = -9223372036854775807L;
        this.f4333q1 = -9223372036854775807L;
        this.T0 = -9223372036854775807L;
        this.g1 = false;
        this.R0 = -9223372036854775807L;
        this.f4322f1 = false;
        this.O0 = false;
        this.P0 = false;
        this.X0 = false;
        this.f4320d1 = 0;
        this.f4321e1 = 0;
        this.f4319c1 = this.f4318b1 ? 1 : 0;
        this.f4338t1 = false;
        this.f4339u1 = 0L;
    }

    public final void q0() {
        p0();
        this.f4330n1 = null;
        this.Y = null;
        this.f4323h0 = null;
        this.S = null;
        this.T = null;
        this.V = false;
        this.f4324h1 = false;
        this.X = -1.0f;
        this.f4337t0 = 0;
        this.M0 = false;
        this.N0 = false;
        this.Q0 = false;
        this.S0 = false;
        this.f4318b1 = false;
        this.f4319c1 = 0;
    }

    public final void r0(a1.i iVar) {
        a1.i iVar2 = this.I;
        if (iVar2 != iVar) {
            if (iVar != null) {
                iVar.j(null);
            }
            if (iVar2 != null) {
                iVar2.C(null);
            }
        }
        this.I = iVar;
    }

    public final void s0(t tVar) {
        this.f4332p1 = tVar;
        if (tVar.f4312c != -9223372036854775807L) {
            this.f4334r1 = true;
            f0();
        }
    }

    public boolean t0(x1.g gVar) {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003d, code lost:
    
        if (r7 >= r5) goto L15;
     */
    @Override // y1.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void u(r1.p[] pVarArr, long j10, long j11, f2.c0 c0Var) {
        if (this.f4332p1.f4312c == -9223372036854775807L) {
            s0(new t(-9223372036854775807L, j10, j11));
            if (this.f4335s1) {
                h0();
                return;
            }
            return;
        }
        ArrayDeque arrayDeque = this.D;
        if (arrayDeque.isEmpty()) {
            long j12 = this.f4325i1;
            if (j12 != -9223372036854775807L) {
                long j13 = this.f4333q1;
                if (j13 != -9223372036854775807L) {
                }
            }
            s0(new t(-9223372036854775807L, j10, j11));
            if (this.f4332p1.f4312c != -9223372036854775807L) {
                h0();
                return;
            }
            return;
        }
        arrayDeque.add(new t(this.f4325i1, j10, j11));
    }

    public boolean u0() {
        return true;
    }

    public boolean v0(q qVar) {
        return true;
    }

    public boolean w0() throws MediaCryptoException {
        int i10 = this.f4321e1;
        if (i10 == 3 || ((this.M0 && !this.f4324h1) || (this.N0 && this.g1))) {
            return true;
        }
        if (i10 != 2) {
            return false;
        }
        try {
            A0();
            return false;
        } catch (y1.k e7) {
            u1.a.q("Failed to update the DRM session, releasing the codec instead.", e7);
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0078 A[LOOP:1: B:31:0x0053->B:41:0x0078, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0099 A[LOOP:2: B:42:0x0079->B:52:0x0099, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0079 A[EDGE_INSN: B:88:0x0079->B:91:? BREAK  A[LOOP:1: B:31:0x0053->B:41:0x0078], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x009a A[EDGE_INSN: B:89:0x009a->B:53:0x009a BREAK  A[LOOP:2: B:42:0x0079->B:52:0x0099], SYNTHETIC] */
    @Override // y1.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void x(long j10, long j11) {
        boolean z;
        boolean z4;
        boolean z10 = false;
        if (this.f4329m1) {
            this.f4329m1 = false;
            j0();
        }
        y1.k kVar = this.f4330n1;
        if (kVar != null) {
            this.f4330n1 = null;
            throw kVar;
        }
        try {
            if (this.f4327k1) {
                n0();
                return;
            }
            if (this.G != null || l0(2)) {
                W();
                if (this.Y0) {
                    Trace.beginSection("bypassRender");
                    while (F(j10, j11)) {
                    }
                    Trace.endSection();
                } else if (this.R != null) {
                    this.f18558g.getClass();
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    Trace.beginSection("drainAndFeed");
                    while (J(j10, j11)) {
                        long j12 = this.N;
                        if (j12 != -9223372036854775807L) {
                            this.f18558g.getClass();
                            if (SystemClock.elapsedRealtime() - jElapsedRealtime < j12) {
                                z4 = true;
                                if (!z4) {
                                    break;
                                }
                            } else {
                                z4 = false;
                                if (!z4) {
                                }
                            }
                        } else {
                            z4 = true;
                            if (!z4) {
                            }
                        }
                    }
                    while (K()) {
                        long j13 = this.N;
                        if (j13 != -9223372036854775807L) {
                            this.f18558g.getClass();
                            if (SystemClock.elapsedRealtime() - jElapsedRealtime < j13) {
                                z = true;
                                if (!z) {
                                    break;
                                }
                            } else {
                                z = false;
                                if (!z) {
                                }
                            }
                        } else {
                            z = true;
                            if (!z) {
                            }
                        }
                    }
                    Trace.endSection();
                } else {
                    y1.c cVar = this.f4331o1;
                    int i10 = cVar.f18590d;
                    c1 c1Var = this.f18560i;
                    c1Var.getClass();
                    cVar.f18590d = i10 + c1Var.m(j10 - this.f18562k);
                    l0(1);
                }
                synchronized (this.f4331o1) {
                }
            }
        } catch (MediaCodec.CryptoException e7) {
            throw f(e7, this.G, false, f0.q(e7.getErrorCode()));
        } catch (IllegalStateException e10) {
            if (!a.z(e10)) {
                StackTraceElement[] stackTrace = e10.getStackTrace();
                if (stackTrace.length <= 0 || !stackTrace[0].getClassName().equals("android.media.MediaCodec")) {
                    throw e10;
                }
            }
            Z(e10);
            if (a.z(e10) && a.e(e10).isRecoverable()) {
                z10 = true;
            }
            if (z10) {
                m0();
            }
            p pVarH = H(e10, this.f4323h0);
            throw f(pVarH, this.G, z10, pVarH.f4293a == 1101 ? 4006 : 4003);
        }
    }

    public boolean x0(r1.p pVar) {
        return false;
    }

    public abstract int y0(l lVar, r1.p pVar);

    public final boolean z0(r1.p pVar) {
        if (this.R != null && this.f4321e1 != 3 && this.f18559h != 0) {
            float f10 = this.P;
            pVar.getClass();
            r1.p[] pVarArr = this.f18561j;
            pVarArr.getClass();
            float fO = O(f10, pVar, pVarArr);
            float f11 = this.X;
            if (f11 == fO) {
                return true;
            }
            if (fO == -1.0f) {
                if (this.f4322f1) {
                    this.f4320d1 = 1;
                    this.f4321e1 = 3;
                    return false;
                }
                m0();
                W();
                return false;
            }
            if (f11 == -1.0f && fO <= this.f4344x) {
                return true;
            }
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", fO);
            n nVar = this.R;
            nVar.getClass();
            nVar.e(bundle);
            this.X = fO;
        }
        return true;
    }

    public void f0() {
    }

    public void i0(x1.g gVar) {
    }
}
