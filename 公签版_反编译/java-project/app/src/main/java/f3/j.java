package f3;

import android.util.Pair;
import android.util.SparseArray;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.PriorityQueue;
import java.util.UUID;
import l2.c0;
import l2.j0;
import r1.d0;
import r1.e0;
import r1.f0;
import u7.g0;
import u7.y0;
import ua.i8;

/* loaded from: classes.dex */
public final class j implements l2.o {
    public static final byte[] M = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    public static final r1.p N;
    public i A;
    public int B;
    public int C;
    public int D;
    public boolean E;
    public boolean F;
    public l2.q G;
    public j0[] H;
    public j0[] I;
    public boolean J;
    public boolean K;
    public long L;

    /* renamed from: a, reason: collision with root package name */
    public final i3.h f5493a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5494b;

    /* renamed from: c, reason: collision with root package name */
    public final List f5495c;

    /* renamed from: d, reason: collision with root package name */
    public final SparseArray f5496d;

    /* renamed from: e, reason: collision with root package name */
    public final u1.q f5497e;

    /* renamed from: f, reason: collision with root package name */
    public final u1.q f5498f;

    /* renamed from: g, reason: collision with root package name */
    public final u1.q f5499g;

    /* renamed from: h, reason: collision with root package name */
    public final byte[] f5500h;

    /* renamed from: i, reason: collision with root package name */
    public final u1.q f5501i;

    /* renamed from: j, reason: collision with root package name */
    public final i8 f5502j;

    /* renamed from: k, reason: collision with root package name */
    public final u1.q f5503k;
    public final ArrayDeque l;

    /* renamed from: m, reason: collision with root package name */
    public final ArrayDeque f5504m;

    /* renamed from: n, reason: collision with root package name */
    public final b5.i f5505n;

    /* renamed from: o, reason: collision with root package name */
    public final androidx.room.o f5506o;

    /* renamed from: p, reason: collision with root package name */
    public y0 f5507p;

    /* renamed from: q, reason: collision with root package name */
    public int f5508q;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public long f5509s;

    /* renamed from: t, reason: collision with root package name */
    public int f5510t;

    /* renamed from: u, reason: collision with root package name */
    public u1.q f5511u;

    /* renamed from: v, reason: collision with root package name */
    public long f5512v;

    /* renamed from: w, reason: collision with root package name */
    public int f5513w;

    /* renamed from: x, reason: collision with root package name */
    public long f5514x;

    /* renamed from: y, reason: collision with root package name */
    public long f5515y;
    public long z;

    static {
        r1.o oVar = new r1.o();
        oVar.f13492n = e0.l("application/x-emsg");
        N = new r1.p(oVar);
    }

    public j(i3.h hVar, int i10) {
        u7.e0 e0Var = g0.f15471b;
        y0 y0Var = y0.f15549e;
        this.f5493a = hVar;
        this.f5494b = i10;
        this.f5495c = Collections.unmodifiableList(y0Var);
        this.f5502j = new i8(7);
        this.f5503k = new u1.q(16);
        this.f5497e = new u1.q(v1.o.f16386a);
        this.f5498f = new u1.q(6);
        this.f5499g = new u1.q();
        byte[] bArr = new byte[16];
        this.f5500h = bArr;
        this.f5501i = new u1.q(bArr);
        this.l = new ArrayDeque();
        this.f5504m = new ArrayDeque();
        this.f5496d = new SparseArray();
        this.f5507p = y0Var;
        this.f5515y = -9223372036854775807L;
        this.f5514x = -9223372036854775807L;
        this.z = -9223372036854775807L;
        this.G = l2.q.C0;
        this.H = new j0[0];
        this.I = new j0[0];
        this.f5505n = new b5.i(new g(this));
        this.f5506o = new androidx.room.o(2);
        this.L = -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static r1.l i(ArrayList arrayList) {
        int i10;
        UUID[] uuidArr;
        UUID uuid;
        int size = arrayList.size();
        int i11 = 0;
        ArrayList arrayList2 = null;
        while (i11 < size) {
            v1.d dVar = (v1.d) arrayList.get(i11);
            if (dVar.f567b == 1886614376) {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                byte[] bArr = dVar.f16331c.f15266a;
                u1.q qVar = new u1.q(bArr);
                a1.i iVar = null;
                if (qVar.f15268c < 32) {
                    i10 = i11;
                    uuid = iVar == null ? null : (UUID) iVar.f76b;
                    if (uuid == null) {
                        u1.a.p("Skipped pssh atom (failed to extract uuid)");
                    } else {
                        arrayList2.add(new r1.k(uuid, null, "video/mp4", bArr));
                    }
                } else {
                    qVar.O(0);
                    int iA = qVar.a();
                    int iO = qVar.o();
                    if (iO != iA) {
                        u1.a.p("Advertised atom size (" + iO + ") does not match buffer size: " + iA);
                    } else {
                        int iO2 = qVar.o();
                        if (iO2 != 1886614376) {
                            org.bouncycastle.jcajce.provider.digest.a.o(iO2, "Atom type is not pssh: ");
                        } else {
                            int iE = e.e(qVar.o());
                            if (iE > 1) {
                                org.bouncycastle.jcajce.provider.digest.a.o(iE, "Unsupported pssh version: ");
                            } else {
                                i10 = i11;
                                UUID uuid2 = new UUID(qVar.v(), qVar.v());
                                if (iE == 1) {
                                    int iF = qVar.F();
                                    uuidArr = new UUID[iF];
                                    int i12 = 0;
                                    while (i12 < iF) {
                                        uuidArr[i12] = new UUID(qVar.v(), qVar.v());
                                        i12++;
                                        iF = iF;
                                    }
                                } else {
                                    uuidArr = null;
                                }
                                int iF2 = qVar.F();
                                int iA2 = qVar.a();
                                if (iF2 != iA2) {
                                    u1.a.p("Atom data size (" + iF2 + ") does not match the bytes left: " + iA2);
                                } else {
                                    byte[] bArr2 = new byte[iF2];
                                    qVar.l(0, iF2, bArr2);
                                    iVar = new a1.i(uuid2, iE, bArr2, uuidArr);
                                }
                                if (iVar == null) {
                                }
                                if (uuid == null) {
                                }
                            }
                        }
                    }
                    i10 = i11;
                    if (iVar == null) {
                    }
                    if (uuid == null) {
                    }
                }
            } else {
                i10 = i11;
            }
            i11 = i10 + 1;
        }
        if (arrayList2 == null) {
            return null;
        }
        return new r1.l(null, false, (r1.k[]) arrayList2.toArray(new r1.k[0]));
    }

    public static void j(u1.q qVar, int i10, u uVar) throws f0 {
        qVar.O(i10 + 8);
        int iO = qVar.o();
        byte[] bArr = e.f5472a;
        if ((iO & 1) != 0) {
            throw f0.b("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z = (iO & 2) != 0;
        int iF = qVar.F();
        if (iF == 0) {
            Arrays.fill(uVar.l, 0, uVar.f5580e, false);
            return;
        }
        if (iF != uVar.f5580e) {
            StringBuilder sbN = g.b.n("Senc sample count ", iF, " is different from fragment sample count");
            sbN.append(uVar.f5580e);
            throw f0.a(null, sbN.toString());
        }
        Arrays.fill(uVar.l, 0, iF, z);
        int iA = qVar.a();
        u1.q qVar2 = uVar.f5588n;
        qVar2.L(iA);
        uVar.f5586k = true;
        uVar.f5589o = true;
        qVar.l(0, qVar2.f15268c, qVar2.f15266a);
        qVar2.O(0);
        uVar.f5589o = false;
    }

    public static Pair k(long j10, u1.q qVar) throws f0 {
        long jH;
        long jH2;
        qVar.O(8);
        int iE = e.e(qVar.o());
        qVar.P(4);
        long jD = qVar.D();
        if (iE == 0) {
            jH = qVar.D();
            jH2 = qVar.D();
        } else {
            jH = qVar.H();
            jH2 = qVar.H();
        }
        long j11 = jH;
        long j12 = jH2 + j10;
        String str = u1.f0.f15206a;
        long jM = u1.f0.M(j11, 1000000L, jD, RoundingMode.DOWN);
        qVar.P(2);
        int I = qVar.I();
        int[] iArr = new int[I];
        long[] jArr = new long[I];
        long[] jArr2 = new long[I];
        long[] jArr3 = new long[I];
        long j13 = j11;
        long j14 = jM;
        int i10 = 0;
        while (i10 < I) {
            int iO = qVar.o();
            if ((Integer.MIN_VALUE & iO) != 0) {
                throw f0.a(null, "Unhandled indirect reference");
            }
            long jD2 = qVar.D();
            iArr[i10] = iO & Integer.MAX_VALUE;
            jArr[i10] = j12;
            jArr3[i10] = j14;
            long j15 = j13 + jD2;
            long[] jArr4 = jArr3;
            long[] jArr5 = jArr2;
            int i11 = I;
            long jM2 = u1.f0.M(j15, 1000000L, jD, RoundingMode.DOWN);
            jArr5[i10] = jM2 - jArr4[i10];
            qVar.P(4);
            j12 += r1[i10];
            i10++;
            iArr = iArr;
            jArr3 = jArr4;
            jArr2 = jArr5;
            jArr = jArr;
            I = i11;
            j13 = j15;
            j14 = jM2;
        }
        return Pair.create(Long.valueOf(jM), new l2.j(iArr, jArr, jArr2, jArr3));
    }

    @Override // l2.o
    public final l2.o b() {
        return this;
    }

    @Override // l2.o
    public final void c(l2.q qVar) {
        int i10;
        int i11 = this.f5494b;
        if ((i11 & 32) == 0) {
            qVar = new androidx.room.i(qVar, this.f5493a);
        }
        this.G = qVar;
        h();
        j0[] j0VarArr = new j0[2];
        this.H = j0VarArr;
        int i12 = 100;
        int i13 = 0;
        if ((i11 & 4) != 0) {
            j0VarArr[0] = this.G.z(100, 5);
            i10 = 1;
            i12 = 101;
        } else {
            i10 = 0;
        }
        j0[] j0VarArr2 = (j0[]) u1.f0.I(i10, this.H);
        this.H = j0VarArr2;
        for (j0 j0Var : j0VarArr2) {
            j0Var.g(N);
        }
        List list = this.f5495c;
        this.I = new j0[list.size()];
        while (i13 < this.I.length) {
            j0 j0VarZ = this.G.z(i12, 3);
            j0VarZ.g((r1.p) list.get(i13));
            this.I[i13] = j0VarZ;
            i13++;
            i12++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01d8, code lost:
    
        if (r7 != 0) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01da, code lost:
    
        r7 = r37.I.length;
        r29 = r5;
        r5 = r4.f5570k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01e1, code lost:
    
        if (r7 > 0) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01e5, code lost:
    
        if (r37.E != false) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01e8, code lost:
    
        r17 = r4;
        r30 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01ed, code lost:
    
        r7 = v1.o.g(r9);
        r17 = r4;
        r30 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01fe, code lost:
    
        if ((r5 + r7) > (r37.B - r37.C)) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0200, code lost:
    
        r4 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0203, code lost:
    
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0204, code lost:
    
        ((l2.l) r38).b(r15, r10, r5 + r4, false);
        r14.O(0);
        r5 = r14.o();
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0213, code lost:
    
        if (r5 < 0) goto L465;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0215, code lost:
    
        r37.D = r5 - r4;
        r5 = r37.f5497e;
        r5.O(0);
        r6.a(4, r5);
        r37.C += 4;
        r37.B += r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x022e, code lost:
    
        if (r37.I.length <= 0) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0230, code lost:
    
        if (r4 <= 0) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0232, code lost:
    
        r5 = v1.o.d(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0236, code lost:
    
        if (r5 != null) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x023d, code lost:
    
        switch(r5.hashCode()) {
            case -1662541442: goto L130;
            case 1331836730: goto L126;
            case 1331856911: goto L122;
            default: goto L121;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0240, code lost:
    
        r5 = 65535;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0248, code lost:
    
        if (r5.equals("video/vvc") != false) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x024b, code lost:
    
        r5 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0251, code lost:
    
        if (r5.equals(r3) != false) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0254, code lost:
    
        r5 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x025a, code lost:
    
        if (r5.equals(r2) != false) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x025d, code lost:
    
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x025e, code lost:
    
        switch(r5) {
            case 0: goto L142;
            case 1: goto L139;
            case 2: goto L136;
            default: goto L145;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x026b, code lost:
    
        if (((r15[5] & 248) >> 3) != 23) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0275, code lost:
    
        if ((r15[4] & 31) != 6) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0282, code lost:
    
        if (((r15[4] & com.hsae.autosdk.core.NoConst.ESCAPE_0X7E) >> 1) != 39) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0284, code lost:
    
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0287, code lost:
    
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0288, code lost:
    
        r37.F = r5;
        r6.a(r4, r14);
        r37.C += r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x0292, code lost:
    
        if (r4 <= 0) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0296, code lost:
    
        if (r37.E != false) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x029c, code lost:
    
        if (v1.o.f(r15, r4, r9) == false) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x029e, code lost:
    
        r37.E = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x02a1, code lost:
    
        r4 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x02a3, code lost:
    
        r5 = r29;
        r8 = r30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x02b1, code lost:
    
        throw r1.f0.a(null, "Invalid NAL length");
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x02b2, code lost:
    
        r17 = r4;
        r29 = r5;
        r30 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x02bb, code lost:
    
        if (r37.F == false) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x02bd, code lost:
    
        r4 = r37.f5499g;
        r4.L(r7);
        r22 = r2;
        ((l2.l) r38).b(r4.f15266a, 0, r37.D, false);
        r6.a(r37.D, r4);
        r5 = r37.D;
        r7 = v1.o.p(r4.f15268c, r4.f15266a);
        r4.O(0);
        r4.N(r7);
        r7 = r9.f13525q;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x02e7, code lost:
    
        if (r7 != (-1)) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x02eb, code lost:
    
        if (r13.f2571a == 0) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x02ed, code lost:
    
        r13.n(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x02f3, code lost:
    
        if (r13.f2571a == r7) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x02f5, code lost:
    
        r13.n(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x02f8, code lost:
    
        r13.a(r11, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0301, code lost:
    
        if ((r30.a() & 4) == 0) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0303, code lost:
    
        r13.d(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x030a, code lost:
    
        r22 = r2;
        r5 = r6.e(r38, r7, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0312, code lost:
    
        r37.C += r5;
        r37.D -= r5;
        r4 = r17;
        r2 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0321, code lost:
    
        r29 = r5;
        r30 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0326, code lost:
    
        r29 = r5;
        r30 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x032a, code lost:
    
        r2 = r37.C;
        r3 = r37.B;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x032e, code lost:
    
        if (r2 >= r3) goto L472;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x0330, code lost:
    
        r37.C += r6.e(r38, r3 - r2, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x033c, code lost:
    
        r0 = r30.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0342, code lost:
    
        if (r37.E != false) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x0344, code lost:
    
        r0 = r0 | 67108864;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x0347, code lost:
    
        r25 = r0;
        r0 = r30.b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x034d, code lost:
    
        if (r0 == null) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x034f, code lost:
    
        r28 = r0.f5573c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x0354, code lost:
    
        r28 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0356, code lost:
    
        r6.b(r11, r25, r37.B, 0, r28);
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x0367, code lost:
    
        if (r29.isEmpty() != false) goto L468;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x0369, code lost:
    
        r0 = (f3.h) r29.removeFirst();
        r37.f5513w -= r0.f5480c;
        r2 = r0.f5479b;
        r3 = r0.f5478a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x037a, code lost:
    
        if (r2 == false) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x037c, code lost:
    
        r3 = r3 + r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x037d, code lost:
    
        r2 = r37.H;
        r5 = r2.length;
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x0381, code lost:
    
        if (r6 >= r5) goto L471;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x0383, code lost:
    
        r2[r6].b(r3, 1, r0.f5480c, r37.f5513w, null);
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x039c, code lost:
    
        if (r30.c() != false) goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x039e, code lost:
    
        r37.A = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x03a1, code lost:
    
        r37.f5508q = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x069f, code lost:
    
        throw r1.f0.b("Atom size less than header length (unsupported).");
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00c7, code lost:
    
        r4 = r37.f5508q;
        r6 = r8.f5481a;
        r10 = r8.f5482b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:476:?, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d0, code lost:
    
        if (r4 != 3) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00d4, code lost:
    
        if (r8.f5492m != false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00d6, code lost:
    
        r4 = r8.f5484d.f5595d[r8.f5486f];
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00df, code lost:
    
        r4 = r10.f5583h[r8.f5486f];
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e5, code lost:
    
        r37.B = r4;
        r4 = r8.f5484d.f5592a.f5566g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00f3, code lost:
    
        if (j$.util.Objects.equals(r4.f13523o, r3) == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00f7, code lost:
    
        if ((r11 & 64) == 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00f9, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0102, code lost:
    
        if (j$.util.Objects.equals(r4.f13523o, r2) == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0106, code lost:
    
        if ((r11 & 128) == 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0109, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x010b, code lost:
    
        r37.E = !r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0112, code lost:
    
        if (r8.f5486f >= r8.f5489i) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0114, code lost:
    
        ((l2.l) r38).o(r37.B, false);
        r0 = r8.b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0120, code lost:
    
        if (r0 != null) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0123, code lost:
    
        r2 = r10.f5588n;
        r0 = r0.f5574d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0127, code lost:
    
        if (r0 == 0) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0129, code lost:
    
        r2.P(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x012c, code lost:
    
        r0 = r8.f5486f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0130, code lost:
    
        if (r10.f5586k == false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0136, code lost:
    
        if (r10.l[r0] == false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0138, code lost:
    
        r2.P(r2.I() * 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0145, code lost:
    
        if (r8.c() != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0147, code lost:
    
        r37.A = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x014a, code lost:
    
        r37.f5508q = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x014d, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0157, code lost:
    
        if (r8.f5484d.f5592a.f5567h != 1) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0159, code lost:
    
        r37.B -= 8;
        ((l2.l) r38).o(8, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0175, code lost:
    
        if ("audio/ac4".equals(r8.f5484d.f5592a.f5566g.f13523o) == false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0177, code lost:
    
        r37.C = r8.d(r37.B, 7);
        l2.b.f(r37.B, r14);
        r6.a(7, r14);
        r37.C += 7;
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x018f, code lost:
    
        r11 = 0;
        r37.C = r8.d(r37.B, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0198, code lost:
    
        r37.B += r37.C;
        r37.f5508q = 4;
        r37.D = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01a3, code lost:
    
        r4 = r8.f5484d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01a7, code lost:
    
        if (r8.f5492m != false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01a9, code lost:
    
        r11 = r4.f5597f[r8.f5486f];
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01b0, code lost:
    
        r11 = r10.f5584i[r8.f5486f];
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01b6, code lost:
    
        r4 = r4.f5592a;
        r10 = r4.f5570k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01ba, code lost:
    
        if (r10 == 0) goto L175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01bc, code lost:
    
        r14 = r37.f5498f;
        r15 = r14.f15266a;
        r15[0] = 0;
        r15[1] = 0;
        r15[2] = 0;
        r10 = 4 - r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01d2, code lost:
    
        if (r37.C >= r37.B) goto L464;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01d4, code lost:
    
        r7 = r37.D;
        r9 = r4.f5566g;
     */
    @Override // l2.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int d(l2.p pVar, dd.c cVar) throws IOException {
        String str;
        String str2;
        String strW;
        String strW2;
        long jM;
        long jM2;
        long jM3;
        long jD;
        int i10;
        int i11;
        String str3 = "video/hevc";
        String str4 = "video/avc";
        while (true) {
            int i12 = this.f5508q;
            ArrayDeque arrayDeque = this.l;
            SparseArray sparseArray = this.f5496d;
            b5.i iVar = this.f5505n;
            u1.q qVar = this.f5501i;
            androidx.room.o oVar = this.f5506o;
            if (i12 != 0) {
                ArrayDeque arrayDeque2 = this.f5504m;
                int i13 = this.f5494b;
                if (i12 != 1) {
                    long j10 = Long.MAX_VALUE;
                    if (i12 != 2) {
                        i iVar2 = this.A;
                        if (iVar2 != null) {
                            break;
                        }
                        int size = sparseArray.size();
                        long j11 = Long.MAX_VALUE;
                        int i14 = 0;
                        i iVar3 = null;
                        while (i14 < size) {
                            i iVar4 = (i) sparseArray.valueAt(i14);
                            boolean z = iVar4.f5492m;
                            if (z || iVar4.f5486f != iVar4.f5484d.f5593b) {
                                u uVar = iVar4.f5482b;
                                if (z) {
                                    i11 = size;
                                    if (iVar4.f5488h == uVar.f5579d) {
                                    }
                                } else {
                                    i11 = size;
                                }
                                long j12 = !z ? iVar4.f5484d.f5594c[iVar4.f5486f] : uVar.f5581f[iVar4.f5488h];
                                if (j12 < j11) {
                                    j11 = j12;
                                    iVar3 = iVar4;
                                }
                            } else {
                                i11 = size;
                            }
                            i14++;
                            size = i11;
                        }
                        if (iVar3 == null) {
                            int i15 = (int) (this.f5512v - ((l2.l) pVar).f10499d);
                            if (i15 < 0) {
                                throw f0.a(null, "Offset to end of mdat was negative.");
                            }
                            ((l2.l) pVar).o(i15, false);
                            h();
                        } else {
                            int i16 = (int) ((!iVar3.f5492m ? iVar3.f5484d.f5594c[iVar3.f5486f] : iVar3.f5482b.f5581f[iVar3.f5488h]) - ((l2.l) pVar).f10499d);
                            if (i16 < 0) {
                                u1.a.p("Ignoring negative offset to sample data.");
                                i16 = 0;
                            }
                            ((l2.l) pVar).o(i16, false);
                            this.A = iVar3;
                            iVar2 = iVar3;
                        }
                    } else {
                        str = str3;
                        int size2 = sparseArray.size();
                        i iVar5 = null;
                        for (int i17 = 0; i17 < size2; i17++) {
                            u uVar2 = ((i) sparseArray.valueAt(i17)).f5482b;
                            if (uVar2.f5589o) {
                                long j13 = uVar2.f5578c;
                                if (j13 < j10) {
                                    iVar5 = (i) sparseArray.valueAt(i17);
                                    j10 = j13;
                                }
                            }
                        }
                        if (iVar5 == null) {
                            this.f5508q = 3;
                        } else {
                            int i18 = (int) (j10 - ((l2.l) pVar).f10499d);
                            if (i18 < 0) {
                                throw f0.a(null, "Offset to encryption data was negative.");
                            }
                            l2.l lVar = (l2.l) pVar;
                            lVar.o(i18, false);
                            u uVar3 = iVar5.f5482b;
                            u1.q qVar2 = uVar3.f5588n;
                            lVar.b(qVar2.f15266a, 0, qVar2.f15268c, false);
                            qVar2.O(0);
                            uVar3.f5589o = false;
                        }
                        str3 = str;
                    }
                } else {
                    str = str3;
                    int i19 = (int) (this.f5509s - this.f5510t);
                    u1.q qVar3 = this.f5511u;
                    if (qVar3 != null) {
                        ((l2.l) pVar).b(qVar3.f15266a, 8, i19, false);
                        int i20 = this.r;
                        v1.d dVar = new v1.d(i20, qVar3);
                        if (!arrayDeque.isEmpty()) {
                            ((v1.c) arrayDeque.peek()).f16329d.add(dVar);
                        } else if (i20 == 1936286840) {
                            l2.l lVar2 = (l2.l) pVar;
                            Pair pairK = k(lVar2.f10499d, qVar3);
                            oVar.a((l2.j) pairK.second);
                            this.z = ((Long) pairK.first).longValue();
                            boolean z4 = this.K;
                            LinkedHashMap linkedHashMap = oVar.f2422a;
                            if (z4) {
                                i10 = 1;
                            } else {
                                i10 = 1;
                                this.G.s(linkedHashMap.size() == 1 ? (c0) pairK.second : oVar.b());
                                this.J = true;
                            }
                            if ((i13 & 256) != 0 && !this.K && linkedHashMap.size() > i10) {
                                this.L = lVar2.f10499d;
                            }
                        } else if (i20 == 1701671783 && this.H.length != 0) {
                            qVar3.O(8);
                            int iE = e.e(qVar3.o());
                            if (iE == 0) {
                                strW = qVar3.w();
                                strW.getClass();
                                strW2 = qVar3.w();
                                strW2.getClass();
                                long jD2 = qVar3.D();
                                long jD3 = qVar3.D();
                                RoundingMode roundingMode = RoundingMode.DOWN;
                                jM = u1.f0.M(jD3, 1000000L, jD2, roundingMode);
                                long j14 = this.z;
                                jM2 = j14 != -9223372036854775807L ? j14 + jM : -9223372036854775807L;
                                jM3 = u1.f0.M(qVar3.D(), 1000L, jD2, roundingMode);
                                jD = qVar3.D();
                            } else if (iE != 1) {
                                org.bouncycastle.jcajce.provider.digest.a.o(iE, "Skipping unsupported emsg version: ");
                            } else {
                                long jD4 = qVar3.D();
                                long jH = qVar3.H();
                                RoundingMode roundingMode2 = RoundingMode.DOWN;
                                jM2 = u1.f0.M(jH, 1000000L, jD4, roundingMode2);
                                jM3 = u1.f0.M(qVar3.D(), 1000L, jD4, roundingMode2);
                                jD = qVar3.D();
                                strW = qVar3.w();
                                strW.getClass();
                                strW2 = qVar3.w();
                                strW2.getClass();
                                jM = -9223372036854775807L;
                            }
                            long j15 = jM2;
                            byte[] bArr = new byte[qVar3.a()];
                            str2 = str4;
                            qVar3.l(0, qVar3.a(), bArr);
                            i8 i8Var = this.f5502j;
                            ByteArrayOutputStream byteArrayOutputStream = (ByteArrayOutputStream) i8Var.f15741b;
                            byteArrayOutputStream.reset();
                            DataOutputStream dataOutputStream = (DataOutputStream) i8Var.f15742c;
                            try {
                                dataOutputStream.writeBytes(strW);
                                dataOutputStream.writeByte(0);
                                dataOutputStream.writeBytes(strW2);
                                dataOutputStream.writeByte(0);
                                dataOutputStream.writeLong(jM3);
                                dataOutputStream.writeLong(jD);
                                dataOutputStream.write(bArr);
                                dataOutputStream.flush();
                                u1.q qVar4 = new u1.q(byteArrayOutputStream.toByteArray());
                                int iA = qVar4.a();
                                for (j0 j0Var : this.H) {
                                    qVar4.O(0);
                                    j0Var.a(iA, qVar4);
                                }
                                if (j15 == -9223372036854775807L) {
                                    arrayDeque2.addLast(new h(iA, jM, true));
                                    this.f5513w += iA;
                                } else if (arrayDeque2.isEmpty()) {
                                    for (j0 j0Var2 : this.H) {
                                        j0Var2.b(j15, 1, iA, 0, null);
                                    }
                                } else {
                                    arrayDeque2.addLast(new h(iA, j15, false));
                                    this.f5513w += iA;
                                }
                            } catch (IOException e7) {
                                throw new RuntimeException(e7);
                            }
                        }
                        str2 = str4;
                    } else {
                        str2 = str4;
                        ((l2.l) pVar).o(i19, false);
                    }
                    l(((l2.l) pVar).f10499d);
                }
            } else {
                str = str3;
                str2 = str4;
                int i21 = this.f5510t;
                u1.q qVar5 = this.f5503k;
                if (i21 == 0) {
                    if (!((l2.l) pVar).b(qVar5.f15266a, 0, 8, true)) {
                        long j16 = this.L;
                        if (j16 == -1) {
                            iVar.d(0);
                            return -1;
                        }
                        cVar.f4591b = j16;
                        this.L = -1L;
                        this.G.s(oVar.b());
                        this.K = true;
                        return 1;
                    }
                    this.f5510t = 8;
                    qVar5.O(0);
                    this.f5509s = qVar5.D();
                    this.r = qVar5.o();
                }
                long j17 = this.f5509s;
                if (j17 == 1) {
                    ((l2.l) pVar).b(qVar5.f15266a, 8, 8, false);
                    this.f5510t += 8;
                    this.f5509s = qVar5.H();
                } else if (j17 == 0) {
                    long j18 = ((l2.l) pVar).f10498c;
                    if (j18 == -1 && !arrayDeque.isEmpty()) {
                        j18 = ((v1.c) arrayDeque.peek()).f16328c;
                    }
                    if (j18 != -1) {
                        this.f5509s = (j18 - ((l2.l) pVar).f10499d) + this.f5510t;
                    }
                }
                long j19 = this.f5509s;
                int i22 = this.f5510t;
                long j20 = i22;
                if (j19 < j20) {
                    if (this.r != 1718773093 || i22 != 8) {
                        break;
                    }
                    this.f5509s = j20;
                }
                if (this.L != -1) {
                    if (this.r == 1936286840) {
                        qVar.L((int) this.f5509s);
                        System.arraycopy(qVar5.f15266a, 0, qVar.f15266a, 0, 8);
                        ((l2.l) pVar).b(qVar.f15266a, 8, (int) (this.f5509s - this.f5510t), false);
                        oVar.a((l2.j) k(((l2.l) pVar).d(), qVar).second);
                    } else {
                        ((l2.l) pVar).o((int) (this.f5509s - j20), true);
                    }
                    h();
                } else {
                    long j21 = ((l2.l) pVar).f10499d - i22;
                    int i23 = this.r;
                    if ((i23 == 1836019558 || i23 == 1835295092) && !this.J) {
                        this.G.s(new l2.s(this.f5515y, j21));
                        this.J = true;
                    }
                    if (this.r == 1836019558) {
                        int size3 = sparseArray.size();
                        for (int i24 = 0; i24 < size3; i24++) {
                            u uVar4 = ((i) sparseArray.valueAt(i24)).f5482b;
                            uVar4.getClass();
                            uVar4.f5578c = j21;
                            uVar4.f5577b = j21;
                        }
                    }
                    int i25 = this.r;
                    if (i25 == 1835295092) {
                        this.A = null;
                        this.f5512v = j21 + this.f5509s;
                        this.f5508q = 2;
                    } else if (i25 == 1836019574 || i25 == 1953653099 || i25 == 1835297121 || i25 == 1835626086 || i25 == 1937007212 || i25 == 1836019558 || i25 == 1953653094 || i25 == 1836475768 || i25 == 1701082227 || i25 == 1835365473) {
                        l2.l lVar3 = (l2.l) pVar;
                        long j22 = lVar3.f10499d;
                        long j23 = this.f5509s;
                        long j24 = (j22 + j23) - 8;
                        if (j23 != this.f5510t && i25 == 1835365473) {
                            qVar.L(8);
                            lVar3.c(qVar.f15266a, 0, 8, false);
                            e.a(qVar);
                            lVar3.o(qVar.f15267b, false);
                            lVar3.f10501f = 0;
                        }
                        arrayDeque.push(new v1.c(this.r, j24));
                        if (this.f5509s == this.f5510t) {
                            l(j24);
                        } else {
                            h();
                        }
                    } else if (i25 == 1751411826 || i25 == 1835296868 || i25 == 1836476516 || i25 == 1936286840 || i25 == 1937011556 || i25 == 1937011827 || i25 == 1668576371 || i25 == 1937011555 || i25 == 1937011578 || i25 == 1937013298 || i25 == 1937007471 || i25 == 1668232756 || i25 == 1937011571 || i25 == 1952867444 || i25 == 1952868452 || i25 == 1953196132 || i25 == 1953654136 || i25 == 1953658222 || i25 == 1886614376 || i25 == 1935763834 || i25 == 1935763823 || i25 == 1936027235 || i25 == 1970628964 || i25 == 1935828848 || i25 == 1936158820 || i25 == 1701606260 || i25 == 1835362404 || i25 == 1701671783 || i25 == 1969517665 || i25 == 1801812339 || i25 == 1768715124) {
                        if (this.f5510t != 8) {
                            throw f0.b("Leaf atom defines extended atom size (unsupported).");
                        }
                        if (this.f5509s > 2147483647L) {
                            throw f0.b("Leaf atom with length > 2147483647 (unsupported).");
                        }
                        u1.q qVar6 = new u1.q((int) this.f5509s);
                        System.arraycopy(qVar5.f15266a, 0, qVar6.f15266a, 0, 8);
                        this.f5511u = qVar6;
                        this.f5508q = 1;
                    } else {
                        if (this.f5509s > 2147483647L) {
                            throw f0.b("Skipping atom with length > 2147483647 (unsupported).");
                        }
                        this.f5511u = null;
                        this.f5508q = 1;
                    }
                }
            }
            str4 = str2;
            str3 = str;
        }
    }

    @Override // l2.o
    public final void e(long j10, long j11) {
        SparseArray sparseArray = this.f5496d;
        int size = sparseArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((i) sparseArray.valueAt(i10)).e();
        }
        this.f5504m.clear();
        this.f5513w = 0;
        ((PriorityQueue) this.f5505n.f2575e).clear();
        this.f5514x = j11;
        this.l.clear();
        h();
    }

    @Override // l2.o
    public final List f() {
        return this.f5507p;
    }

    @Override // l2.o
    public final boolean g(l2.p pVar) {
        y0 y0VarR;
        l2.g0 g0VarI = r.i(pVar, true, false);
        if (g0VarI != null) {
            y0VarR = g0.r(g0VarI);
        } else {
            u7.e0 e0Var = g0.f15471b;
            y0VarR = y0.f15549e;
        }
        this.f5507p = y0VarR;
        return g0VarI == null;
    }

    public final void h() {
        this.f5508q = 0;
        this.f5510t = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:356:0x087e, code lost:
    
        h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x0882, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x07a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void l(long j10) throws f0 {
        j jVar;
        SparseArray sparseArray;
        ArrayList arrayList;
        int i10;
        int i11;
        ArrayList arrayList2;
        int i12;
        j jVar2;
        int i13;
        byte[] bArr;
        int i14;
        boolean z;
        SparseArray sparseArray2;
        int i15;
        ArrayList arrayList3;
        int i16;
        v1.c cVar;
        int i17;
        ArrayList arrayList4;
        i iVar;
        int i18;
        i iVar2;
        boolean z4;
        boolean z10;
        boolean z11;
        int i19;
        int i20;
        int iO;
        boolean z12;
        int i21;
        int iO2;
        int i22;
        int i23;
        boolean z13;
        int iO3;
        boolean z14;
        s sVar;
        i iVar3;
        f fVar;
        long[] jArr;
        int i24;
        d0 d0Var;
        f fVar2;
        f fVar3;
        ArrayList arrayList5;
        j jVar3 = this;
        while (true) {
            int i25 = 1;
            ArrayDeque arrayDeque = jVar3.l;
            if (arrayDeque.isEmpty() || ((v1.c) arrayDeque.peek()).f16328c != j10) {
                break;
            }
            v1.c cVar2 = (v1.c) arrayDeque.pop();
            int i26 = cVar2.f567b;
            SparseArray sparseArray3 = jVar3.f5496d;
            ArrayList arrayList6 = cVar2.f16329d;
            int i27 = jVar3.f5494b;
            int i28 = 12;
            if (i26 == 1836019574) {
                r1.l lVarI = i(arrayList6);
                v1.c cVarG = cVar2.g(1836475768);
                cVarG.getClass();
                SparseArray sparseArray4 = new SparseArray();
                ArrayList arrayList7 = cVarG.f16329d;
                int size = arrayList7.size();
                long jD = -9223372036854775807L;
                int i29 = 0;
                while (i29 < size) {
                    v1.d dVar = (v1.d) arrayList7.get(i29);
                    int i30 = dVar.f567b;
                    u1.q qVar = dVar.f16331c;
                    if (i30 == 1953654136) {
                        qVar.O(i28);
                        arrayList5 = arrayList7;
                        Pair pairCreate = Pair.create(Integer.valueOf(qVar.o()), new f(qVar.o() - i25, qVar.o(), qVar.o(), qVar.o()));
                        sparseArray4.put(((Integer) pairCreate.first).intValue(), (f) pairCreate.second);
                    } else {
                        arrayList5 = arrayList7;
                        if (i30 == 1835362404) {
                            qVar.O(8);
                            jD = e.e(qVar.o()) == 0 ? qVar.D() : qVar.H();
                        }
                    }
                    i29++;
                    arrayList7 = arrayList5;
                    i25 = 1;
                    i28 = 12;
                }
                v1.c cVarG2 = cVar2.g(1835365473);
                d0 d0VarF = cVarG2 != null ? e.f(cVarG2) : null;
                l2.v vVar = new l2.v();
                v1.d dVarI = cVar2.i(1969517665);
                if (dVarI != null) {
                    d0 d0VarJ = e.j(dVarI);
                    vVar.c(d0VarJ);
                    d0Var = d0VarJ;
                } else {
                    d0Var = null;
                }
                v1.d dVarI2 = cVar2.i(1836476516);
                dVarI2.getClass();
                d0 d0Var2 = new d0(e.g(dVarI2.f16331c));
                ArrayList arrayListI = e.i(cVar2, vVar, jD, lVarI, (i27 & 16) != 0, false, new g(jVar3), false);
                int size2 = arrayListI.size();
                if (sparseArray3.size() == 0) {
                    String strA = r.a(arrayListI);
                    int i31 = 0;
                    while (i31 < size2) {
                        v vVar2 = (v) arrayListI.get(i31);
                        s sVar2 = vVar2.f5592a;
                        j0 j0VarZ = jVar3.G.z(i31, sVar2.f5561b);
                        long j11 = sVar2.f5564e;
                        j0VarZ.d(j11);
                        ArrayList arrayList8 = arrayListI;
                        r1.p pVar = sVar2.f5566g;
                        pVar.getClass();
                        int i32 = size2;
                        r1.o oVar = new r1.o(pVar);
                        oVar.b(strA);
                        String str = strA;
                        int i33 = sVar2.f5561b;
                        int i34 = i31;
                        if (i33 == 1 && vVar.a()) {
                            oVar.I = vVar.f10530a;
                            oVar.J = vVar.f10531b;
                        }
                        l2.v vVar3 = vVar;
                        r.h(i33, d0VarF, oVar, pVar.l, d0Var, d0Var2);
                        int size3 = sparseArray4.size();
                        int i35 = sVar2.f5560a;
                        if (size3 == 1) {
                            fVar3 = (f) sparseArray4.valueAt(0);
                        } else {
                            fVar3 = (f) sparseArray4.get(i35);
                            fVar3.getClass();
                        }
                        sparseArray3.put(i35, new i(j0VarZ, vVar2, fVar3, new r1.p(oVar)));
                        jVar3.f5515y = Math.max(jVar3.f5515y, j11);
                        i31 = i34 + 1;
                        arrayListI = arrayList8;
                        size2 = i32;
                        strA = str;
                        vVar = vVar3;
                    }
                    jVar3.G.q();
                } else {
                    ArrayList arrayList9 = arrayListI;
                    a9.o.t(sparseArray3.size() == size2);
                    int i36 = 0;
                    while (i36 < size2) {
                        ArrayList arrayList10 = arrayList9;
                        v vVar4 = (v) arrayList10.get(i36);
                        s sVar3 = vVar4.f5592a;
                        i iVar4 = (i) sparseArray3.get(sVar3.f5560a);
                        if (sparseArray4.size() == 1) {
                            fVar2 = (f) sparseArray4.valueAt(0);
                        } else {
                            fVar2 = (f) sparseArray4.get(sVar3.f5560a);
                            fVar2.getClass();
                        }
                        iVar4.f5484d = vVar4;
                        iVar4.f5485e = fVar2;
                        iVar4.f5481a.g(iVar4.f5490j);
                        iVar4.e();
                        i36++;
                        arrayList9 = arrayList10;
                    }
                }
                jVar = jVar3;
            } else {
                SparseArray sparseArray5 = sparseArray3;
                if (i26 == 1836019558) {
                    ArrayList arrayList11 = cVar2.f16330e;
                    int size4 = arrayList11.size();
                    int i37 = 0;
                    while (i37 < size4) {
                        v1.c cVar3 = (v1.c) arrayList11.get(i37);
                        if (cVar3.f567b == 1953653094) {
                            v1.d dVarI3 = cVar3.i(1952868452);
                            dVarI3.getClass();
                            u1.q qVar2 = dVarI3.f16331c;
                            qVar2.O(8);
                            int iO4 = qVar2.o();
                            byte[] bArr2 = e.f5472a;
                            i iVar5 = (i) sparseArray5.get(qVar2.o());
                            if (iVar5 == null) {
                                iVar5 = null;
                            } else {
                                int i38 = iO4 & 1;
                                u uVar = iVar5.f5482b;
                                if (i38 != 0) {
                                    long jH = qVar2.H();
                                    uVar.f5577b = jH;
                                    uVar.f5578c = jH;
                                }
                                f fVar4 = iVar5.f5485e;
                                uVar.f5576a = new f((iO4 & 2) != 0 ? qVar2.o() - 1 : fVar4.f5473a, (iO4 & 8) != 0 ? qVar2.o() : fVar4.f5474b, (iO4 & 16) != 0 ? qVar2.o() : fVar4.f5475c, (iO4 & 32) != 0 ? qVar2.o() : fVar4.f5476d);
                            }
                            if (iVar5 == null) {
                                sparseArray = sparseArray5;
                                arrayList = arrayList11;
                                i10 = size4;
                                i11 = i37;
                                arrayList2 = arrayList6;
                                i12 = i27;
                                jVar2 = jVar3;
                            } else {
                                u uVar2 = iVar5.f5482b;
                                long j12 = uVar2.f5590p;
                                boolean z15 = uVar2.f5591q;
                                iVar5.e();
                                iVar5.f5492m = true;
                                v1.d dVarI4 = cVar3.i(1952867444);
                                if (dVarI4 == null || (i27 & 2) != 0) {
                                    uVar2.f5590p = j12;
                                    uVar2.f5591q = z15;
                                } else {
                                    u1.q qVar3 = dVarI4.f16331c;
                                    qVar3.O(8);
                                    uVar2.f5590p = e.e(qVar3.o()) == 1 ? qVar3.H() : qVar3.D();
                                    uVar2.f5591q = true;
                                }
                                ArrayList arrayList12 = cVar3.f16329d;
                                int size5 = arrayList12.size();
                                int i39 = 0;
                                int i40 = 0;
                                int i41 = 0;
                                while (true) {
                                    i13 = 1953658222;
                                    if (i39 >= size5) {
                                        break;
                                    }
                                    ArrayList arrayList13 = arrayList11;
                                    v1.d dVar2 = (v1.d) arrayList12.get(i39);
                                    int i42 = size4;
                                    if (dVar2.f567b == 1953658222) {
                                        u1.q qVar4 = dVar2.f16331c;
                                        qVar4.O(12);
                                        int iF = qVar4.F();
                                        if (iF > 0) {
                                            i41 += iF;
                                            i24 = 1;
                                            i40++;
                                        } else {
                                            i24 = 1;
                                        }
                                    }
                                    i39 += i24;
                                    size4 = i42;
                                    arrayList11 = arrayList13;
                                }
                                arrayList = arrayList11;
                                i10 = size4;
                                iVar5.f5488h = 0;
                                iVar5.f5487g = 0;
                                iVar5.f5486f = 0;
                                uVar2.f5579d = i40;
                                uVar2.f5580e = i41;
                                if (uVar2.f5582g.length < i40) {
                                    uVar2.f5581f = new long[i40];
                                    uVar2.f5582g = new int[i40];
                                }
                                if (uVar2.f5583h.length < i41) {
                                    int i43 = (i41 * 125) / 100;
                                    uVar2.f5583h = new int[i43];
                                    uVar2.f5584i = new long[i43];
                                    uVar2.f5585j = new boolean[i43];
                                    uVar2.l = new boolean[i43];
                                }
                                int i44 = 0;
                                int i45 = 0;
                                int i46 = 0;
                                while (true) {
                                    long j13 = 0;
                                    if (i44 < size5) {
                                        v1.d dVar3 = (v1.d) arrayList12.get(i44);
                                        if (dVar3.f567b == i13) {
                                            int i47 = i45 + 1;
                                            u1.q qVar5 = dVar3.f16331c;
                                            qVar5.O(8);
                                            int iO5 = qVar5.o();
                                            byte[] bArr3 = e.f5472a;
                                            v vVar5 = iVar5.f5484d;
                                            i17 = size5;
                                            f fVar5 = uVar2.f5576a;
                                            String str2 = u1.f0.f15206a;
                                            sparseArray2 = sparseArray5;
                                            uVar2.f5582g[i45] = qVar5.F();
                                            long[] jArr2 = uVar2.f5581f;
                                            i16 = i37;
                                            cVar = cVar3;
                                            long j14 = uVar2.f5577b;
                                            jArr2[i45] = j14;
                                            if ((iO5 & 1) != 0) {
                                                arrayList4 = arrayList6;
                                                iVar2 = iVar5;
                                                jArr2[i45] = j14 + qVar5.o();
                                            } else {
                                                arrayList4 = arrayList6;
                                                iVar2 = iVar5;
                                            }
                                            boolean z16 = (iO5 & 4) != 0;
                                            int iO6 = fVar5.f5476d;
                                            if (z16) {
                                                iO6 = qVar5.o();
                                            }
                                            boolean z17 = (iO5 & 256) != 0;
                                            boolean z18 = (iO5 & 512) != 0;
                                            boolean z19 = (iO5 & 1024) != 0;
                                            boolean z20 = (iO5 & 2048) != 0;
                                            s sVar4 = vVar5.f5592a;
                                            int i48 = iO6;
                                            long[] jArr3 = sVar4.f5568i;
                                            if (jArr3 != null) {
                                                arrayList3 = arrayList12;
                                                if (jArr3.length != 1 || (jArr = sVar4.f5569j) == null) {
                                                    z4 = z16;
                                                    i19 = i44;
                                                    z10 = z18;
                                                    z11 = z19;
                                                } else {
                                                    long j15 = jArr3[0];
                                                    if (j15 == 0) {
                                                        z4 = z16;
                                                        i19 = i44;
                                                        z10 = z18;
                                                        z11 = z19;
                                                    } else {
                                                        RoundingMode roundingMode = RoundingMode.DOWN;
                                                        z4 = z16;
                                                        i19 = i44;
                                                        long jM = u1.f0.M(j15, 1000000L, sVar4.f5563d, roundingMode);
                                                        z10 = z18;
                                                        z11 = z19;
                                                        if (jM + u1.f0.M(jArr[0], 1000000L, sVar4.f5562c, roundingMode) >= sVar4.f5564e) {
                                                        }
                                                    }
                                                    j13 = jArr[0];
                                                }
                                            } else {
                                                z4 = z16;
                                                arrayList3 = arrayList12;
                                                z10 = z18;
                                                z11 = z19;
                                                i19 = i44;
                                            }
                                            int[] iArr = uVar2.f5583h;
                                            long[] jArr4 = uVar2.f5584i;
                                            boolean[] zArr = uVar2.f5585j;
                                            boolean z21 = sVar4.f5561b == 2 && (i27 & 1) != 0;
                                            int i49 = uVar2.f5582g[i45] + i46;
                                            boolean z22 = z21;
                                            int i50 = i46;
                                            long j16 = uVar2.f5590p;
                                            while (i50 < i49) {
                                                if (z17) {
                                                    z12 = z17;
                                                    i20 = i49;
                                                    iO = qVar5.o();
                                                } else {
                                                    i20 = i49;
                                                    iO = fVar5.f5474b;
                                                    z12 = z17;
                                                }
                                                if (iO < 0) {
                                                    throw f0.a(null, "Unexpected negative value: " + iO);
                                                }
                                                if (z10) {
                                                    i21 = i27;
                                                    iO2 = qVar5.o();
                                                } else {
                                                    i21 = i27;
                                                    iO2 = fVar5.f5475c;
                                                }
                                                if (iO2 < 0) {
                                                    throw f0.a(null, "Unexpected negative value: " + iO2);
                                                }
                                                int iO7 = z11 ? qVar5.o() : (i50 == 0 && z4) ? i48 : fVar5.f5476d;
                                                if (z20) {
                                                    i22 = i19;
                                                    i23 = iO;
                                                    z13 = z4;
                                                    iO3 = qVar5.o();
                                                } else {
                                                    i22 = i19;
                                                    i23 = iO;
                                                    z13 = z4;
                                                    iO3 = 0;
                                                }
                                                long jM2 = u1.f0.M((iO3 + j16) - j13, 1000000L, sVar4.f5562c, RoundingMode.DOWN);
                                                jArr4[i50] = jM2;
                                                if (uVar2.f5591q) {
                                                    z14 = z20;
                                                    sVar = sVar4;
                                                    iVar3 = iVar2;
                                                    fVar = fVar5;
                                                } else {
                                                    iVar3 = iVar2;
                                                    fVar = fVar5;
                                                    z14 = z20;
                                                    sVar = sVar4;
                                                    jArr4[i50] = jM2 + iVar3.f5484d.f5600i;
                                                }
                                                iArr[i50] = iO2;
                                                zArr[i50] = ((iO7 >> 16) & 1) == 0 && (!z22 || i50 == 0);
                                                j16 += i23;
                                                i50++;
                                                fVar5 = fVar;
                                                i49 = i20;
                                                z17 = z12;
                                                i27 = i21;
                                                i19 = i22;
                                                z20 = z14;
                                                sVar4 = sVar;
                                                iVar2 = iVar3;
                                                z4 = z13;
                                            }
                                            i15 = i19;
                                            int i51 = i49;
                                            i18 = i27;
                                            iVar = iVar2;
                                            uVar2.f5590p = j16;
                                            i45 = i47;
                                            i46 = i51;
                                        } else {
                                            sparseArray2 = sparseArray5;
                                            i15 = i44;
                                            arrayList3 = arrayList12;
                                            i16 = i37;
                                            cVar = cVar3;
                                            i17 = size5;
                                            arrayList4 = arrayList6;
                                            iVar = iVar5;
                                            i18 = i27;
                                        }
                                        i44 = i15 + 1;
                                        iVar5 = iVar;
                                        size5 = i17;
                                        sparseArray5 = sparseArray2;
                                        i37 = i16;
                                        cVar3 = cVar;
                                        arrayList6 = arrayList4;
                                        arrayList12 = arrayList3;
                                        i27 = i18;
                                        i13 = 1953658222;
                                    } else {
                                        sparseArray = sparseArray5;
                                        ArrayList arrayList14 = arrayList12;
                                        i11 = i37;
                                        v1.c cVar4 = cVar3;
                                        arrayList2 = arrayList6;
                                        i12 = i27;
                                        v vVar6 = iVar5.f5484d;
                                        f fVar6 = uVar2.f5576a;
                                        fVar6.getClass();
                                        t tVar = vVar6.f5592a.l[fVar6.f5473a];
                                        v1.d dVarI5 = cVar4.i(1935763834);
                                        if (dVarI5 != null) {
                                            tVar.getClass();
                                            u1.q qVar6 = dVarI5.f16331c;
                                            qVar6.O(8);
                                            int iO8 = qVar6.o();
                                            byte[] bArr4 = e.f5472a;
                                            if ((iO8 & 1) == 1) {
                                                qVar6.P(8);
                                            }
                                            int iB = qVar6.B();
                                            int iF2 = qVar6.F();
                                            if (iF2 > uVar2.f5580e) {
                                                StringBuilder sbN = g.b.n("Saiz sample count ", iF2, " is greater than fragment sample count");
                                                sbN.append(uVar2.f5580e);
                                                throw f0.a(null, sbN.toString());
                                            }
                                            int i52 = tVar.f5574d;
                                            if (iB == 0) {
                                                boolean[] zArr2 = uVar2.l;
                                                i14 = 0;
                                                for (int i53 = 0; i53 < iF2; i53++) {
                                                    int iB2 = qVar6.B();
                                                    i14 += iB2;
                                                    zArr2[i53] = iB2 > i52;
                                                }
                                                z = false;
                                            } else {
                                                boolean z23 = iB > i52;
                                                i14 = iB * iF2;
                                                z = false;
                                                Arrays.fill(uVar2.l, 0, iF2, z23);
                                            }
                                            Arrays.fill(uVar2.l, iF2, uVar2.f5580e, z);
                                            if (i14 > 0) {
                                                uVar2.f5588n.L(i14);
                                                uVar2.f5586k = true;
                                                uVar2.f5589o = true;
                                            }
                                        }
                                        v1.d dVarI6 = cVar4.i(1935763823);
                                        if (dVarI6 != null) {
                                            u1.q qVar7 = dVarI6.f16331c;
                                            qVar7.O(8);
                                            int iO9 = qVar7.o();
                                            byte[] bArr5 = e.f5472a;
                                            if ((iO9 & 1) == 1) {
                                                qVar7.P(8);
                                            }
                                            int iF3 = qVar7.F();
                                            if (iF3 != 1) {
                                                throw f0.a(null, "Unexpected saio entry count: " + iF3);
                                            }
                                            uVar2.f5578c += e.e(iO9) == 0 ? qVar7.D() : qVar7.H();
                                        }
                                        v1.d dVarI7 = cVar4.i(1936027235);
                                        if (dVarI7 != null) {
                                            j(dVarI7.f16331c, 0, uVar2);
                                        }
                                        String str3 = tVar != null ? tVar.f5572b : null;
                                        u1.q qVar8 = null;
                                        u1.q qVar9 = null;
                                        int i54 = 0;
                                        while (i54 < arrayList14.size()) {
                                            ArrayList arrayList15 = arrayList14;
                                            v1.d dVar4 = (v1.d) arrayList15.get(i54);
                                            u1.q qVar10 = dVar4.f16331c;
                                            int i55 = dVar4.f567b;
                                            if (i55 == 1935828848) {
                                                qVar10.O(12);
                                                if (qVar10.o() == 1936025959) {
                                                    qVar8 = qVar10;
                                                }
                                            } else if (i55 == 1936158820) {
                                                qVar10.O(12);
                                                if (qVar10.o() == 1936025959) {
                                                    qVar9 = qVar10;
                                                }
                                            }
                                            i54++;
                                            arrayList14 = arrayList15;
                                        }
                                        ArrayList arrayList16 = arrayList14;
                                        if (qVar8 != null && qVar9 != null) {
                                            qVar8.O(8);
                                            int iE = e.e(qVar8.o());
                                            qVar8.P(4);
                                            if (iE == 1) {
                                                qVar8.P(4);
                                            }
                                            if (qVar8.o() != 1) {
                                                throw f0.b("Entry count in sbgp != 1 (unsupported).");
                                            }
                                            qVar9.O(8);
                                            int iE2 = e.e(qVar9.o());
                                            qVar9.P(4);
                                            if (iE2 == 1) {
                                                if (qVar9.D() == 0) {
                                                    throw f0.b("Variable length description in sgpd found (unsupported)");
                                                }
                                            } else if (iE2 >= 2) {
                                                qVar9.P(4);
                                            }
                                            if (qVar9.D() != 1) {
                                                throw f0.b("Entry count in sgpd != 1 (unsupported).");
                                            }
                                            qVar9.P(1);
                                            int iB3 = qVar9.B();
                                            int i56 = (iB3 & 240) >> 4;
                                            int i57 = iB3 & 15;
                                            boolean z24 = qVar9.B() == 1;
                                            if (z24) {
                                                int iB4 = qVar9.B();
                                                byte[] bArr6 = new byte[16];
                                                qVar9.l(0, 16, bArr6);
                                                if (iB4 == 0) {
                                                    int iB5 = qVar9.B();
                                                    bArr = new byte[iB5];
                                                    qVar9.l(0, iB5, bArr);
                                                } else {
                                                    bArr = null;
                                                }
                                                uVar2.f5586k = true;
                                                uVar2.f5587m = new t(z24, str3, iB4, bArr6, i56, i57, bArr);
                                            }
                                        }
                                        int size6 = arrayList16.size();
                                        for (int i58 = 0; i58 < size6; i58++) {
                                            v1.d dVar5 = (v1.d) arrayList16.get(i58);
                                            if (dVar5.f567b == 1970628964) {
                                                u1.q qVar11 = dVar5.f16331c;
                                                qVar11.O(8);
                                                byte[] bArr7 = this.f5500h;
                                                qVar11.l(0, 16, bArr7);
                                                if (Arrays.equals(bArr7, M)) {
                                                    j(qVar11, 16, uVar2);
                                                }
                                            }
                                        }
                                        jVar2 = this;
                                    }
                                }
                            }
                        }
                        i37 = i11 + 1;
                        jVar3 = jVar2;
                        size4 = i10;
                        arrayList11 = arrayList;
                        sparseArray5 = sparseArray;
                        arrayList6 = arrayList2;
                        i27 = i12;
                    }
                    jVar = jVar3;
                    SparseArray sparseArray6 = sparseArray5;
                    r1.l lVarI2 = i(arrayList6);
                    if (lVarI2 != null) {
                        int size7 = sparseArray6.size();
                        int i59 = 0;
                        while (i59 < size7) {
                            SparseArray sparseArray7 = sparseArray6;
                            i iVar6 = (i) sparseArray7.valueAt(i59);
                            v vVar7 = iVar6.f5484d;
                            f fVar7 = iVar6.f5482b.f5576a;
                            String str4 = u1.f0.f15206a;
                            t tVar2 = vVar7.f5592a.l[fVar7.f5473a];
                            r1.l lVarA = lVarI2.a(tVar2 != null ? tVar2.f5572b : null);
                            r1.o oVar2 = new r1.o(iVar6.f5490j);
                            oVar2.r = lVarA;
                            iVar6.f5481a.g(new r1.p(oVar2));
                            i59++;
                            sparseArray6 = sparseArray7;
                        }
                    }
                    SparseArray sparseArray8 = sparseArray6;
                    if (jVar.f5514x != -9223372036854775807L) {
                        int size8 = sparseArray8.size();
                        for (int i60 = 0; i60 < size8; i60++) {
                            i iVar7 = (i) sparseArray8.valueAt(i60);
                            long j17 = jVar.f5514x;
                            int i61 = iVar7.f5486f;
                            while (true) {
                                u uVar3 = iVar7.f5482b;
                                if (i61 >= uVar3.f5580e || uVar3.f5584i[i61] > j17) {
                                    break;
                                }
                                if (uVar3.f5585j[i61]) {
                                    iVar7.f5489i = i61;
                                }
                                i61++;
                            }
                        }
                        jVar.f5514x = -9223372036854775807L;
                    }
                } else {
                    jVar = jVar3;
                    if (!arrayDeque.isEmpty()) {
                        ((v1.c) arrayDeque.peek()).f16330e.add(cVar2);
                    }
                }
            }
            jVar3 = jVar;
        }
    }

    @Override // l2.o
    public final void a() {
    }
}
