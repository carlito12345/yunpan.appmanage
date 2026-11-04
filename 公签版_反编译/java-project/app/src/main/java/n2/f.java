package n2;

import j$.nio.charset.StandardCharsets;
import java.nio.ByteOrder;
import java.util.Arrays;
import r1.e0;
import r1.o;
import r1.p;
import u1.f0;
import u1.q;
import u7.a0;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class f implements a {

    /* renamed from: a, reason: collision with root package name */
    public final y0 f11290a;

    /* renamed from: b, reason: collision with root package name */
    public final int f11291b;

    public f(int i10, y0 y0Var) {
        this.f11291b = i10;
        this.f11290a = y0Var;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static f b(int i10, q qVar) {
        String str;
        a cVar;
        int i11 = 1;
        int i12 = 4;
        u7.q.c(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i13 = qVar.f15268c;
        int iA = -2;
        int i14 = 0;
        while (qVar.a() > 8) {
            int iQ = qVar.q();
            int iQ2 = qVar.f15267b + qVar.q();
            qVar.N(iQ2);
            if (iQ != 1414744396) {
                g gVar = null;
                switch (iQ) {
                    case 1718776947:
                        if (iA == 2) {
                            qVar.P(i12);
                            int iQ3 = qVar.q();
                            int iQ4 = qVar.q();
                            qVar.P(i12);
                            int iQ5 = qVar.q();
                            switch (iQ5) {
                                case 808802372:
                                case 877677894:
                                case 1145656883:
                                case 1145656920:
                                case 1482049860:
                                case 1684633208:
                                case 2021026148:
                                    str = "video/mp4v-es";
                                    break;
                                case 826496577:
                                case 828601953:
                                case 875967048:
                                    str = "video/avc";
                                    break;
                                case 842289229:
                                    str = "video/mp42";
                                    break;
                                case 859066445:
                                    str = "video/mp43";
                                    break;
                                case 1196444237:
                                case 1735420525:
                                    str = "video/mjpeg";
                                    break;
                                default:
                                    str = null;
                                    break;
                            }
                            if (str == null) {
                                org.bouncycastle.jcajce.provider.digest.a.o(iQ5, "Ignoring track with unsupported compression ");
                            } else {
                                o oVar = new o();
                                oVar.f13498u = iQ3;
                                oVar.f13499v = iQ4;
                                oVar.c(str);
                                gVar = new g(new p(oVar));
                            }
                        } else if (iA == i11) {
                            int iU = qVar.u();
                            String str2 = iU != i11 ? iU != 85 ? iU != 255 ? iU != 8192 ? iU != 8193 ? null : "audio/vnd.dts" : "audio/ac3" : "audio/mp4a-latm" : "audio/mpeg" : "audio/raw";
                            if (str2 == null) {
                                org.bouncycastle.jcajce.provider.digest.a.o(iU, "Ignoring track with unsupported format tag ");
                            } else {
                                int iU2 = qVar.u();
                                int iQ6 = qVar.q();
                                qVar.P(6);
                                int iU3 = qVar.u();
                                String str3 = f0.f15206a;
                                int iT = f0.t(iU3, ByteOrder.LITTLE_ENDIAN);
                                int iU4 = qVar.a() > 0 ? qVar.u() : 0;
                                o oVar2 = new o();
                                oVar2.f13492n = e0.l(str2);
                                oVar2.F = iU2;
                                oVar2.G = iQ6;
                                if (str2.equals("audio/raw") && iT != 0) {
                                    oVar2.H = iT;
                                }
                                if (str2.equals("audio/mp4a-latm") && iU4 > 0) {
                                    byte[] bArr = new byte[iU4];
                                    qVar.l(0, iU4, bArr);
                                    oVar2.f13495q = g0.r(bArr);
                                }
                                gVar = new g(new p(oVar2));
                            }
                        } else {
                            u1.a.p("Ignoring strf box for unsupported track type: " + f0.x(iA));
                        }
                        cVar = gVar;
                        break;
                    case 1751742049:
                        int iQ7 = qVar.q();
                        qVar.P(8);
                        int iQ8 = qVar.q();
                        int iQ9 = qVar.q();
                        qVar.P(i12);
                        qVar.q();
                        qVar.P(12);
                        cVar = new c(iQ7, iQ8, iQ9);
                        break;
                    case 1752331379:
                        int iQ10 = qVar.q();
                        qVar.P(12);
                        qVar.q();
                        int iQ11 = qVar.q();
                        int iQ12 = qVar.q();
                        qVar.P(i12);
                        int iQ13 = qVar.q();
                        int iQ14 = qVar.q();
                        qVar.P(i12);
                        cVar = new d(iQ10, iQ11, iQ12, iQ13, iQ14, qVar.q());
                        break;
                    case 1852994675:
                        cVar = new h(qVar.z(StandardCharsets.UTF_8, qVar.a()));
                        break;
                    default:
                        cVar = gVar;
                        break;
                }
            } else {
                cVar = b(qVar.q(), qVar);
            }
            if (cVar != null) {
                if (cVar.getType() == 1752331379) {
                    iA = ((d) cVar).a();
                }
                int i15 = i14 + 1;
                int iF = a0.f(objArrCopyOf.length, i15);
                if (iF > objArrCopyOf.length) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, iF);
                }
                objArrCopyOf[i14] = cVar;
                i14 = i15;
            }
            qVar.O(iQ2);
            qVar.N(i13);
            i11 = 1;
            i12 = 4;
        }
        return new f(i10, g0.i(i14, objArrCopyOf));
    }

    public final a a(Class cls) {
        u7.e0 e0VarListIterator = this.f11290a.listIterator(0);
        while (e0VarListIterator.hasNext()) {
            a aVar = (a) e0VarListIterator.next();
            if (aVar.getClass() == cls) {
                return aVar;
            }
        }
        return null;
    }

    @Override // n2.a
    public final int getType() {
        return this.f11291b;
    }
}
