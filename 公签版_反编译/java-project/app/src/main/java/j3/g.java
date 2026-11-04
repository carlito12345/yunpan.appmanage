package j3;

import a9.o;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import h5.m;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import u1.q;

/* loaded from: classes.dex */
public final class g extends i {

    /* renamed from: h, reason: collision with root package name */
    public final q f9724h = new q();

    /* renamed from: i, reason: collision with root package name */
    public final f f9725i = new f();

    /* renamed from: j, reason: collision with root package name */
    public int f9726j = -1;

    /* renamed from: k, reason: collision with root package name */
    public final int f9727k;
    public final e[] l;

    /* renamed from: m, reason: collision with root package name */
    public e f9728m;

    /* renamed from: n, reason: collision with root package name */
    public List f9729n;

    /* renamed from: o, reason: collision with root package name */
    public List f9730o;

    /* renamed from: p, reason: collision with root package name */
    public f f9731p;

    /* renamed from: q, reason: collision with root package name */
    public int f9732q;

    public g(int i10, List list) {
        this.f9727k = i10 == -1 ? 1 : i10;
        if (list != null) {
            byte[] bArr = u1.c.f15189a;
            if (list.size() == 1 && ((byte[]) list.get(0)).length == 1) {
                byte b10 = ((byte[]) list.get(0))[0];
            }
        }
        this.l = new e[8];
        for (int i11 = 0; i11 < 8; i11++) {
            this.l[i11] = new e();
        }
        this.f9728m = this.l[0];
    }

    @Override // j3.i, x1.d
    public final void flush() {
        super.flush();
        this.f9729n = null;
        this.f9730o = null;
        this.f9732q = 0;
        this.f9728m = this.l[0];
        m();
        this.f9731p = null;
    }

    @Override // j3.i
    public final m g() {
        List list = this.f9729n;
        this.f9730o = list;
        list.getClass();
        return new m(23, list);
    }

    @Override // j3.i
    public final void h(h hVar) {
        ByteBuffer byteBuffer = hVar.f18087e;
        byteBuffer.getClass();
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        q qVar = this.f9724h;
        qVar.M(iLimit, bArrArray);
        while (qVar.a() >= 3) {
            int iB = qVar.B();
            int i10 = iB & 3;
            boolean z = (iB & 4) == 4;
            byte B = (byte) qVar.B();
            byte B2 = (byte) qVar.B();
            if (i10 == 2 || i10 == 3) {
                if (z) {
                    if (i10 == 3) {
                        k();
                        int i11 = (B & 192) >> 6;
                        int i12 = this.f9726j;
                        if (i12 != -1 && i11 != (i12 + 1) % 4) {
                            m();
                            u1.a.p("Sequence number discontinuity. previous=" + this.f9726j + " current=" + i11);
                        }
                        this.f9726j = i11;
                        int i13 = B & 63;
                        if (i13 == 0) {
                            i13 = 64;
                        }
                        f fVar = new f(i11, i13);
                        this.f9731p = fVar;
                        fVar.f9723e = 1;
                        fVar.f9720b[0] = B2;
                    } else {
                        o.k(i10 == 2);
                        f fVar2 = this.f9731p;
                        if (fVar2 == null) {
                            u1.a.f("Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr = fVar2.f9720b;
                            int i14 = fVar2.f9723e;
                            int i15 = i14 + 1;
                            fVar2.f9723e = i15;
                            bArr[i14] = B;
                            fVar2.f9723e = i14 + 2;
                            bArr[i15] = B2;
                        }
                    }
                    f fVar3 = this.f9731p;
                    if (fVar3.f9723e == (fVar3.f9722d * 2) - 1) {
                        k();
                    }
                }
            }
        }
    }

    @Override // j3.i
    public final boolean j() {
        return this.f9729n != this.f9730o;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void k() {
        f fVar = this.f9731p;
        if (fVar == null) {
            return;
        }
        int i10 = 2;
        if (fVar.f9723e != (fVar.f9722d * 2) - 1) {
            u1.a.e("DtvCcPacket ended prematurely; size is " + ((this.f9731p.f9722d * 2) - 1) + ", but current index is " + this.f9731p.f9723e + " (sequence number " + this.f9731p.f9721c + ");");
        }
        f fVar2 = this.f9731p;
        byte[] bArr = fVar2.f9720b;
        int i11 = fVar2.f9723e;
        f fVar3 = this.f9725i;
        fVar3.k(i11, bArr);
        boolean z = false;
        while (true) {
            if (fVar3.b() > 0) {
                int i12 = 3;
                int iG = fVar3.g(3);
                int iG2 = fVar3.g(5);
                int i13 = 7;
                if (iG == 7) {
                    fVar3.o(i10);
                    iG = fVar3.g(6);
                    if (iG < 7) {
                        org.bouncycastle.jcajce.provider.digest.a.o(iG, "Invalid extended service number: ");
                    }
                }
                if (iG2 == 0) {
                    if (iG != 0) {
                        u1.a.p("serviceNumber is non-zero (" + iG + ") when blockSize is 0");
                    }
                } else if (iG != this.f9727k) {
                    fVar3.p(iG2);
                } else {
                    int iE = (iG2 * 8) + fVar3.e();
                    while (fVar3.e() < iE) {
                        int iG3 = fVar3.g(8);
                        if (iG3 == 16) {
                            int iG4 = fVar3.g(8);
                            if (iG4 <= 31) {
                                if (iG4 > 7) {
                                    if (iG4 <= 15) {
                                        fVar3.o(8);
                                    } else if (iG4 <= 23) {
                                        fVar3.o(16);
                                    } else if (iG4 <= 31) {
                                        fVar3.o(24);
                                    }
                                }
                            } else if (iG4 <= 127) {
                                if (iG4 == 32) {
                                    this.f9728m.a(' ');
                                } else if (iG4 == 33) {
                                    this.f9728m.a((char) 160);
                                } else if (iG4 == 37) {
                                    this.f9728m.a((char) 8230);
                                } else if (iG4 == 42) {
                                    this.f9728m.a((char) 352);
                                } else if (iG4 == 44) {
                                    this.f9728m.a((char) 338);
                                } else if (iG4 == 63) {
                                    this.f9728m.a((char) 376);
                                } else if (iG4 == 57) {
                                    this.f9728m.a((char) 8482);
                                } else if (iG4 == 58) {
                                    this.f9728m.a((char) 353);
                                } else if (iG4 == 60) {
                                    this.f9728m.a((char) 339);
                                } else if (iG4 != 61) {
                                    switch (iG4) {
                                        case 48:
                                            this.f9728m.a((char) 9608);
                                            break;
                                        case 49:
                                            this.f9728m.a((char) 8216);
                                            break;
                                        case 50:
                                            this.f9728m.a((char) 8217);
                                            break;
                                        case 51:
                                            this.f9728m.a((char) 8220);
                                            break;
                                        case 52:
                                            this.f9728m.a((char) 8221);
                                            break;
                                        case 53:
                                            this.f9728m.a((char) 8226);
                                            break;
                                        default:
                                            switch (iG4) {
                                                case 118:
                                                    this.f9728m.a((char) 8539);
                                                    break;
                                                case 119:
                                                    this.f9728m.a((char) 8540);
                                                    break;
                                                case 120:
                                                    this.f9728m.a((char) 8541);
                                                    break;
                                                case 121:
                                                    this.f9728m.a((char) 8542);
                                                    break;
                                                case 122:
                                                    this.f9728m.a((char) 9474);
                                                    break;
                                                case 123:
                                                    this.f9728m.a((char) 9488);
                                                    break;
                                                case 124:
                                                    this.f9728m.a((char) 9492);
                                                    break;
                                                case 125:
                                                    this.f9728m.a((char) 9472);
                                                    break;
                                                case 126:
                                                    this.f9728m.a((char) 9496);
                                                    break;
                                                case 127:
                                                    this.f9728m.a((char) 9484);
                                                    break;
                                                default:
                                                    org.bouncycastle.jcajce.provider.digest.a.o(iG4, "Invalid G2 character: ");
                                                    break;
                                            }
                                    }
                                } else {
                                    this.f9728m.a((char) 8480);
                                }
                                z = true;
                            } else {
                                if (iG4 <= 159) {
                                    if (iG4 <= 135) {
                                        fVar3.o(32);
                                    } else if (iG4 <= 143) {
                                        fVar3.o(40);
                                    } else if (iG4 <= 159) {
                                        fVar3.o(2);
                                        fVar3.o(fVar3.g(6) * 8);
                                    }
                                } else if (iG4 <= 255) {
                                    if (iG4 == 160) {
                                        this.f9728m.a((char) 13252);
                                    } else {
                                        org.bouncycastle.jcajce.provider.digest.a.o(iG4, "Invalid G3 character: ");
                                        this.f9728m.a('_');
                                    }
                                    z = true;
                                } else {
                                    org.bouncycastle.jcajce.provider.digest.a.o(iG4, "Invalid extended command: ");
                                }
                                i10 = 2;
                                i12 = 3;
                                i13 = 7;
                            }
                        } else if (iG3 <= 31) {
                            if (iG3 != 0) {
                                if (iG3 == i12) {
                                    this.f9729n = l();
                                } else if (iG3 != 8) {
                                    switch (iG3) {
                                        case 12:
                                            m();
                                            break;
                                        case 13:
                                            this.f9728m.a('\n');
                                            break;
                                        case 14:
                                            break;
                                        default:
                                            if (iG3 < 17 || iG3 > 23) {
                                                if (iG3 < 24 || iG3 > 31) {
                                                    org.bouncycastle.jcajce.provider.digest.a.o(iG3, "Invalid C0 command: ");
                                                    break;
                                                } else {
                                                    u1.a.p("Currently unsupported COMMAND_P16 Command: " + iG3);
                                                    fVar3.o(16);
                                                    break;
                                                }
                                            } else {
                                                u1.a.p("Currently unsupported COMMAND_EXT1 Command: " + iG3);
                                                fVar3.o(8);
                                                break;
                                            }
                                    }
                                } else {
                                    SpannableStringBuilder spannableStringBuilder = this.f9728m.f9701b;
                                    int length = spannableStringBuilder.length();
                                    if (length > 0) {
                                        spannableStringBuilder.delete(length - 1, length);
                                    }
                                }
                            }
                        } else if (iG3 <= 127) {
                            if (iG3 == 127) {
                                this.f9728m.a((char) 9835);
                            } else {
                                this.f9728m.a((char) (iG3 & 255));
                            }
                            z = true;
                        } else {
                            if (iG3 <= 159) {
                                e[] eVarArr = this.l;
                                switch (iG3) {
                                    case 128:
                                    case 129:
                                    case 130:
                                    case 131:
                                    case 132:
                                    case 133:
                                    case 134:
                                    case 135:
                                        int i14 = iG3 - 128;
                                        if (this.f9732q != i14) {
                                            this.f9732q = i14;
                                            this.f9728m = eVarArr[i14];
                                            break;
                                        }
                                        break;
                                    case 136:
                                        for (int i15 = 1; i15 <= 8; i15++) {
                                            if (fVar3.f()) {
                                                e eVar = eVarArr[8 - i15];
                                                eVar.f9700a.clear();
                                                eVar.f9701b.clear();
                                                eVar.f9713o = -1;
                                                eVar.f9714p = -1;
                                                eVar.f9715q = -1;
                                                eVar.f9716s = -1;
                                                eVar.f9718u = 0;
                                            }
                                        }
                                        break;
                                    case 137:
                                        for (int i16 = 1; i16 <= 8; i16++) {
                                            if (fVar3.f()) {
                                                eVarArr[8 - i16].f9703d = true;
                                            }
                                        }
                                        break;
                                    case 138:
                                        for (int i17 = 1; i17 <= 8; i17++) {
                                            if (fVar3.f()) {
                                                eVarArr[8 - i17].f9703d = false;
                                            }
                                        }
                                        break;
                                    case 139:
                                        for (int i18 = 1; i18 <= 8; i18++) {
                                            if (fVar3.f()) {
                                                eVarArr[8 - i18].f9703d = !r1.f9703d;
                                            }
                                        }
                                        break;
                                    case 140:
                                        for (int i19 = 1; i19 <= 8; i19++) {
                                            if (fVar3.f()) {
                                                eVarArr[8 - i19].d();
                                            }
                                        }
                                        break;
                                    case 141:
                                        fVar3.o(8);
                                        break;
                                    case 142:
                                        break;
                                    case 143:
                                        m();
                                        break;
                                    case 144:
                                        if (!this.f9728m.f9702c) {
                                            fVar3.o(16);
                                            break;
                                        } else {
                                            fVar3.g(4);
                                            fVar3.g(2);
                                            fVar3.g(2);
                                            boolean zF = fVar3.f();
                                            boolean zF2 = fVar3.f();
                                            fVar3.g(3);
                                            fVar3.g(3);
                                            this.f9728m.e(zF, zF2);
                                        }
                                    case 145:
                                        if (this.f9728m.f9702c) {
                                            int iC = e.c(fVar3.g(2), fVar3.g(2), fVar3.g(2), fVar3.g(2));
                                            int iC2 = e.c(fVar3.g(2), fVar3.g(2), fVar3.g(2), fVar3.g(2));
                                            fVar3.o(2);
                                            e.c(fVar3.g(2), fVar3.g(2), fVar3.g(2), 0);
                                            this.f9728m.f(iC, iC2);
                                        } else {
                                            fVar3.o(24);
                                        }
                                        break;
                                    case 146:
                                        if (this.f9728m.f9702c) {
                                            fVar3.o(4);
                                            int iG5 = fVar3.g(4);
                                            fVar3.o(2);
                                            fVar3.g(6);
                                            e eVar2 = this.f9728m;
                                            if (eVar2.f9718u != iG5) {
                                                eVar2.a('\n');
                                            }
                                            eVar2.f9718u = iG5;
                                        } else {
                                            fVar3.o(16);
                                        }
                                        break;
                                    case 147:
                                    case 148:
                                    case 149:
                                    case 150:
                                    default:
                                        org.bouncycastle.jcajce.provider.digest.a.o(iG3, "Invalid C1 command: ");
                                        break;
                                    case 151:
                                        if (this.f9728m.f9702c) {
                                            int iC3 = e.c(fVar3.g(2), fVar3.g(2), fVar3.g(2), fVar3.g(2));
                                            fVar3.g(2);
                                            e.c(fVar3.g(2), fVar3.g(2), fVar3.g(2), 0);
                                            fVar3.f();
                                            fVar3.f();
                                            fVar3.g(2);
                                            fVar3.g(2);
                                            int iG6 = fVar3.g(2);
                                            fVar3.o(8);
                                            e eVar3 = this.f9728m;
                                            eVar3.f9712n = iC3;
                                            eVar3.f9710k = iG6;
                                        } else {
                                            fVar3.o(32);
                                        }
                                        break;
                                    case 152:
                                    case CarSettingID.Recv.EMS_BRK_REGEN_MOD /* 153 */:
                                    case CarSettingID.Recv.GSM_DRIVE_MODE /* 154 */:
                                    case 155:
                                    case CarSettingID.Recv.EMS_AVDC_ACTIVE /* 156 */:
                                    case CarSettingID.Recv.EMS_PEDAL_LEVEL /* 157 */:
                                    case CarSettingID.Recv.BCS_TCS_OFF /* 158 */:
                                    case 159:
                                        int i20 = iG3 - 152;
                                        e eVar4 = eVarArr[i20];
                                        fVar3.o(i10);
                                        boolean zF3 = fVar3.f();
                                        fVar3.o(i10);
                                        int iG7 = fVar3.g(i12);
                                        boolean zF4 = fVar3.f();
                                        int iG8 = fVar3.g(i13);
                                        int iG9 = fVar3.g(8);
                                        int iG10 = fVar3.g(4);
                                        int iG11 = fVar3.g(4);
                                        fVar3.o(i10);
                                        fVar3.o(6);
                                        fVar3.o(i10);
                                        int iG12 = fVar3.g(i12);
                                        int iG13 = fVar3.g(i12);
                                        eVar4.f9702c = true;
                                        eVar4.f9703d = zF3;
                                        eVar4.f9704e = iG7;
                                        eVar4.f9705f = zF4;
                                        eVar4.f9706g = iG8;
                                        eVar4.f9707h = iG9;
                                        eVar4.f9708i = iG10;
                                        int i21 = iG11 + 1;
                                        if (eVar4.f9709j != i21) {
                                            eVar4.f9709j = i21;
                                            while (true) {
                                                ArrayList arrayList = eVar4.f9700a;
                                                if (arrayList.size() >= eVar4.f9709j || arrayList.size() >= 15) {
                                                    arrayList.remove(0);
                                                }
                                            }
                                        }
                                        if (iG12 != 0 && eVar4.l != iG12) {
                                            eVar4.l = iG12;
                                            int i22 = iG12 - 1;
                                            int i23 = e.B[i22];
                                            boolean z4 = e.A[i22];
                                            int i24 = e.f9699y[i22];
                                            int i25 = e.z[i22];
                                            int i26 = e.f9698x[i22];
                                            eVar4.f9712n = i23;
                                            eVar4.f9710k = i26;
                                        }
                                        if (iG13 != 0 && eVar4.f9711m != iG13) {
                                            eVar4.f9711m = iG13;
                                            int i27 = iG13 - 1;
                                            int i28 = e.D[i27];
                                            int i29 = e.C[i27];
                                            eVar4.e(false, false);
                                            eVar4.f(e.f9696v, e.E[i27]);
                                        }
                                        if (this.f9732q != i20) {
                                            this.f9732q = i20;
                                            this.f9728m = eVarArr[i20];
                                        }
                                        break;
                                }
                            } else if (iG3 <= 255) {
                                this.f9728m.a((char) (iG3 & 255));
                            } else {
                                org.bouncycastle.jcajce.provider.digest.a.o(iG3, "Invalid base command: ");
                            }
                            z = true;
                        }
                        i10 = 2;
                        i12 = 3;
                        i13 = 7;
                    }
                }
            }
        }
        if (z) {
            this.f9729n = l();
        }
        this.f9731p = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List l() {
        d dVar;
        Layout.Alignment alignment;
        float f10;
        float f11;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < 8; i10++) {
            e[] eVarArr = this.l;
            e eVar = eVarArr[i10];
            if (eVar.f9702c && (!eVar.f9700a.isEmpty() || eVar.f9701b.length() != 0)) {
                e eVar2 = eVarArr[i10];
                if (!eVar2.f9703d) {
                    continue;
                } else if (eVar2.f9702c) {
                    ArrayList arrayList2 = eVar2.f9700a;
                    if (arrayList2.isEmpty() && eVar2.f9701b.length() == 0) {
                        dVar = null;
                    } else {
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                        for (int i11 = 0; i11 < arrayList2.size(); i11++) {
                            spannableStringBuilder.append((CharSequence) arrayList2.get(i11));
                            spannableStringBuilder.append('\n');
                        }
                        spannableStringBuilder.append((CharSequence) eVar2.b());
                        int i12 = eVar2.f9710k;
                        if (i12 == 0) {
                            alignment = Layout.Alignment.ALIGN_NORMAL;
                            Layout.Alignment alignment2 = alignment;
                            if (eVar2.f9705f) {
                                f10 = eVar2.f9707h / 209.0f;
                                f11 = eVar2.f9706g / 74.0f;
                            } else {
                                f10 = eVar2.f9707h / 99.0f;
                                f11 = eVar2.f9706g / 99.0f;
                            }
                            float f12 = (f10 * 0.9f) + 0.05f;
                            float f13 = (f11 * 0.9f) + 0.05f;
                            int i13 = eVar2.f9708i;
                            int i14 = i13 / 3;
                            int i15 = i14 != 0 ? 0 : i14 == 1 ? 1 : 2;
                            int i16 = i13 % 3;
                            int i17 = i16 != 0 ? 0 : i16 == 1 ? 1 : 2;
                            int i18 = eVar2.f9712n;
                            dVar = new d(spannableStringBuilder, alignment2, f13, i15, f12, i17, i18 == e.f9697w, i18, eVar2.f9704e);
                        } else {
                            if (i12 == 1) {
                                alignment = Layout.Alignment.ALIGN_OPPOSITE;
                            } else if (i12 != 2) {
                                if (i12 != 3) {
                                    throw new IllegalArgumentException("Unexpected justification value: " + eVar2.f9710k);
                                }
                                alignment = Layout.Alignment.ALIGN_NORMAL;
                            } else {
                                alignment = Layout.Alignment.ALIGN_CENTER;
                            }
                            Layout.Alignment alignment22 = alignment;
                            if (eVar2.f9705f) {
                            }
                            float f122 = (f10 * 0.9f) + 0.05f;
                            float f132 = (f11 * 0.9f) + 0.05f;
                            int i132 = eVar2.f9708i;
                            int i142 = i132 / 3;
                            if (i142 != 0) {
                            }
                            int i162 = i132 % 3;
                            if (i162 != 0) {
                            }
                            int i182 = eVar2.f9712n;
                            dVar = new d(spannableStringBuilder, alignment22, f132, i15, f122, i17, i182 == e.f9697w, i182, eVar2.f9704e);
                        }
                    }
                    if (dVar != null) {
                        arrayList.add(dVar);
                    }
                }
            }
        }
        Collections.sort(arrayList, d.f9693c);
        ArrayList arrayList3 = new ArrayList(arrayList.size());
        for (int i19 = 0; i19 < arrayList.size(); i19++) {
            arrayList3.add(((d) arrayList.get(i19)).f9694a);
        }
        return Collections.unmodifiableList(arrayList3);
    }

    public final void m() {
        for (int i10 = 0; i10 < 8; i10++) {
            this.l[i10].d();
        }
    }
}
