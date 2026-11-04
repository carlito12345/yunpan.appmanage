package a1;

import a2.a0;
import a2.j0;
import a2.n0;
import a2.q1;
import android.content.ClipDescription;
import android.content.Context;
import android.media.MediaCodec;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcel;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import android.view.inputmethod.EditorInfo;
import androidx.fragment.app.b0;
import androidx.leanback.widget.l0;
import androidx.media3.exoplayer.video.h0;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.carsdk.l;
import com.yunpan.appmanage.carsdk.m;
import com.yunpan.appmanage.carsdk.n;
import com.yunpan.appmanage.carsdk.q;
import com.yunpan.appmanage.carsdk.r;
import d2.o;
import h4.c0;
import h4.t;
import h5.j;
import ha.l2;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Proxy;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.UUID;
import l2.i0;
import l2.s;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import r1.f0;
import x0.b1;

/* loaded from: classes.dex */
public class i implements l0, h0, vc.g, o, Callback, g2.e, t0.f, b6.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f75a;

    /* renamed from: b, reason: collision with root package name */
    public Object f76b;

    public /* synthetic */ i(int i10, Object obj) {
        this.f75a = i10;
        this.f76b = obj;
    }

    public static int q(int i10, InputStream inputStream) throws IOException {
        if ((i10 & 128) == 0) {
            return i10;
        }
        int i11 = i10 & 127;
        if (i11 == 0) {
            return -1;
        }
        if (i11 < 0 || i11 > 4) {
            StringBuilder sbN = g.b.n("DerInputStream.getLength(): lengthTag=", i11, ", ");
            sbN.append(i11 < 0 ? "incorrect DER encoding." : "too big.");
            throw new IOException(sbN.toString());
        }
        int i12 = 0;
        while (i11 > 0) {
            i12 = (i12 << 8) + (inputStream.read() & 255);
            i11--;
        }
        return i12;
    }

    public int[] A() {
        int i10 = m.f3854e;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.desay.libsvcarinfo.ICarInfo");
            parcelObtain.writeInt(i10);
            parcelObtain.writeInt(1);
            ((IBinder) this.f76b).transact(3, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.createIntArray();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public void B(l lVar, int[] iArr) {
        int i10 = m.f3854e;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.desay.libsvcarinfo.ICarInfo");
            parcelObtain.writeInt(i10);
            parcelObtain.writeStrongBinder(lVar);
            parcelObtain.writeIntArray(iArr);
            ((IBinder) this.f76b).transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public void D(View view) {
        switch (this.f75a) {
            case 27:
                c0 c0Var = (c0) this.f76b;
                c0Var.removeView(view);
                if (c0Var.getChildCount() == 0) {
                    ArrayList arrayList = c0Var.f6419c;
                    if (arrayList == null || arrayList.size() == 0) {
                        c0Var.f6421e = true;
                        c0Var.f6417a.removeView(c0Var);
                        break;
                    }
                }
                break;
            default:
                ((ViewGroupOverlay) this.f76b).remove(view);
                break;
        }
    }

    public boolean E(String str) {
        return false;
    }

    public void F() throws ClassNotFoundException {
        r rVar = (r) ((q) this.f76b).f3865b.f3803b;
        if (rVar.f3875j == null) {
            Class<?> cls = Class.forName("android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback");
            rVar.f3875j = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new n(rVar, 11));
        }
        int[] iArr = {1090651136, 1090650368, 1090650624, 1090650880, 1090652160, 1090651392, 1090651648, 1090715904, 1090717184, 1090717696, 1090717440, 1090717952, 554767360};
        for (int i10 = 0; i10 < 13; i10++) {
            int i11 = iArr[i10];
            Object objQ = rVar.q(i11);
            if (objQ != null) {
                Integer num = (Integer) r.r(objQ, "getPropertyId", new Object[0]);
                int iIntValue = num.intValue();
                rVar.f3887x.put(num, Integer.valueOf(i11));
                rVar.t(iIntValue, rVar.f3875j);
            }
        }
    }

    public void G(int i10, long j10, long j11) throws f0 {
        d3.f fVar = (d3.f) this.f76b;
        fVar.f4421j0.getClass();
        if (i10 == 160) {
            fVar.Y = false;
            fVar.Z = 0L;
            return;
        }
        if (i10 == 174) {
            d3.e eVar = new d3.e();
            fVar.f4434y = eVar;
            eVar.f4370a = fVar.f4432w;
            return;
        }
        if (i10 == 183) {
            if (fVar.z) {
                return;
            }
            fVar.h(i10);
            fVar.F = -1;
            fVar.G = -1L;
            fVar.H = -1L;
            return;
        }
        if (i10 == 187) {
            if (fVar.z) {
                return;
            }
            fVar.h(i10);
            fVar.E = -9223372036854775807L;
            return;
        }
        if (i10 == 19899) {
            fVar.A = -1;
            fVar.B = -1L;
            return;
        }
        if (i10 == 20533) {
            fVar.i(i10);
            fVar.f4434y.f4381i = true;
            return;
        }
        if (i10 == 21968) {
            fVar.i(i10);
            fVar.f4434y.z = true;
            return;
        }
        if (i10 == 408125543) {
            long j12 = fVar.f4428s;
            if (j12 != -1 && j12 != j10) {
                throw f0.a(null, "Multiple Segment elements not supported");
            }
            fVar.f4428s = j10;
            fVar.r = j11;
            return;
        }
        if (i10 == 475249515) {
            if (fVar.z) {
                return;
            }
            fVar.D = true;
        } else if (i10 == 524531317 && !fVar.z) {
            if (fVar.f4408d && fVar.K != -1) {
                fVar.J = true;
            } else {
                fVar.f4421j0.s(new s(fVar.f4431v));
                fVar.z = true;
            }
        }
    }

    public void H(int i10, String str) throws f0 {
        d3.f fVar = (d3.f) this.f76b;
        fVar.getClass();
        if (i10 == 134) {
            fVar.i(i10);
            fVar.f4434y.f4374c = str;
            return;
        }
        if (i10 == 17026) {
            if ("webm".equals(str) || "matroska".equals(str)) {
                fVar.f4432w = str.equals("webm");
                return;
            }
            throw f0.a(null, "DocType " + str + " not supported");
        }
        if (i10 == 21358) {
            fVar.i(i10);
            fVar.f4434y.f4372b = str;
        } else {
            if (i10 != 2274716) {
                return;
            }
            fVar.i(i10);
            fVar.f4434y.Z = str;
        }
    }

    public void I(l lVar) {
        int i10 = m.f3854e;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.desay.libsvcarinfo.ICarInfo");
            parcelObtain.writeInt(i10);
            parcelObtain.writeStrongBinder(lVar);
            ((IBinder) this.f76b).transact(2, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // t0.f
    public void c() {
        ((t) this.f76b).cancel();
    }

    @Override // b6.a
    public Object create() {
        androidx.room.s sVar = (androidx.room.s) this.f76b;
        return new j((a6.i) sVar.f2427c, (v3.f) sVar.f2428d);
    }

    @Override // d2.o
    public void d(int i10, x1.c cVar, long j10, int i11) throws MediaCodec.CryptoException {
        ((MediaCodec) this.f76b).queueSecureInputBuffer(i10, 0, cVar.f18083i, j10, i11);
    }

    @Override // d2.o
    public void e(Bundle bundle) {
        ((MediaCodec) this.f76b).setParameters(bundle);
    }

    @Override // androidx.media3.exoplayer.video.h0
    public void f() {
        androidx.media3.exoplayer.video.m mVar = (androidx.media3.exoplayer.video.m) this.f76b;
        Surface surface = mVar.R1;
        if (surface != null) {
            j0 j0Var = mVar.B1;
            Handler handler = j0Var.f195b;
            if (handler != null) {
                handler.post(new androidx.media3.exoplayer.video.f0(j0Var, surface, SystemClock.elapsedRealtime()));
            }
            mVar.U1 = true;
        }
    }

    @Override // d2.o
    public void g(int i10, int i11, long j10, int i12) throws MediaCodec.CryptoException {
        ((MediaCodec) this.f76b).queueInputBuffer(i10, 0, i11, j10, i12);
    }

    @Override // vc.g
    public int i(int i10, int i11, byte[] bArr) throws ad.g {
        rd.a.a(i10 + 2, bArr);
        int iB = rd.a.b(i10 + 4, bArr);
        int iB2 = rd.a.b(i10 + 8, bArr);
        rd.a.b(i10 + 12, bArr);
        int iB3 = rd.a.b(i10 + 16, bArr);
        if (iB > 0) {
            new vd.m(bArr, iB + i10);
        }
        if (iB2 > 0) {
            new vd.m(bArr, iB2 + i10);
        }
        int i12 = i10 + iB3;
        if (iB3 > 0) {
            rd.a.a(i12 + 2, bArr);
            int iB4 = rd.a.b(i12 + 4, bArr);
            i12 += 8;
            if (iB4 > 4096) {
                throw new ad.g("Invalid SecurityDescriptor");
            }
            this.f76b = new cd.a[iB4];
            for (int i13 = 0; i13 < iB4; i13++) {
                cd.a[] aVarArr = (cd.a[]) this.f76b;
                cd.a aVar = new cd.a();
                aVarArr[i13] = aVar;
                i12 += aVar.i(i12, i11 - i12, bArr);
            }
        } else {
            this.f76b = null;
        }
        return i12 - i10;
    }

    public void k(View view) {
        switch (this.f75a) {
            case 27:
                c0 c0Var = (c0) this.f76b;
                if (c0Var.f6421e) {
                    throw new IllegalStateException("This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()");
                }
                if (view.getParent() instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    ViewGroup viewGroup2 = c0Var.f6417a;
                    if (viewGroup != viewGroup2 && viewGroup.getParent() != null && b1.l(viewGroup)) {
                        int[] iArr = new int[2];
                        int[] iArr2 = new int[2];
                        viewGroup.getLocationOnScreen(iArr);
                        viewGroup2.getLocationOnScreen(iArr2);
                        b1.o(iArr[0] - iArr2[0], view);
                        b1.p(iArr[1] - iArr2[1], view);
                    }
                    viewGroup.removeView(view);
                    if (view.getParent() != null) {
                        viewGroup.removeView(view);
                    }
                }
                c0Var.addView(view);
                return;
            default:
                ((ViewGroupOverlay) this.f76b).add(view);
                return;
        }
    }

    public void l(int i10, int i11, l2.l lVar) throws f0 {
        d3.e eVar;
        d3.e eVar2;
        d3.e eVar3;
        long j10;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        d3.f fVar = (d3.f) this.f76b;
        SparseArray sparseArray = fVar.f4406c;
        int i17 = 4;
        int i18 = 1;
        int i19 = 0;
        if (i10 != 161 && i10 != 163) {
            if (i10 == 165) {
                if (fVar.O != 2) {
                    return;
                }
                d3.e eVar4 = (d3.e) sparseArray.get(fVar.U);
                if (fVar.X != 4 || !"V_VP9".equals(eVar4.f4374c)) {
                    lVar.o(i11, false);
                    return;
                }
                u1.q qVar = fVar.f4426p;
                qVar.L(i11);
                lVar.b(qVar.f15266a, 0, i11, false);
                return;
            }
            if (i10 == 16877) {
                fVar.i(i10);
                d3.e eVar5 = fVar.f4434y;
                int i20 = eVar5.f4380h;
                if (i20 != 1685485123 && i20 != 1685480259) {
                    lVar.o(i11, false);
                    return;
                }
                byte[] bArr = new byte[i11];
                eVar5.P = bArr;
                lVar.b(bArr, 0, i11, false);
                return;
            }
            if (i10 == 16981) {
                fVar.i(i10);
                d3.e eVar6 = fVar.f4434y;
                byte[] bArr2 = new byte[i11];
                eVar6.f4382j = bArr2;
                lVar.b(bArr2, 0, i11, false);
                return;
            }
            if (i10 == 18402) {
                byte[] bArr3 = new byte[i11];
                lVar.b(bArr3, 0, i11, false);
                fVar.i(i10);
                fVar.f4434y.f4383k = new i0(1, bArr3, 0, 0);
                return;
            }
            if (i10 == 21419) {
                u1.q qVar2 = fVar.f4422k;
                Arrays.fill(qVar2.f15266a, (byte) 0);
                lVar.b(qVar2.f15266a, 4 - i11, i11, false);
                qVar2.O(0);
                fVar.A = (int) qVar2.D();
                return;
            }
            if (i10 == 25506) {
                fVar.i(i10);
                d3.e eVar7 = fVar.f4434y;
                byte[] bArr4 = new byte[i11];
                eVar7.l = bArr4;
                lVar.b(bArr4, 0, i11, false);
                return;
            }
            if (i10 != 30322) {
                throw f0.a(null, "Unexpected id: " + i10);
            }
            fVar.i(i10);
            d3.e eVar8 = fVar.f4434y;
            byte[] bArr5 = new byte[i11];
            eVar8.f4394x = bArr5;
            lVar.b(bArr5, 0, i11, false);
            return;
        }
        int i21 = fVar.O;
        u1.q qVar3 = fVar.f4418i;
        if (i21 == 0) {
            d3.h hVar = fVar.f4404b;
            fVar.U = (int) hVar.c(lVar, false, true, 8);
            fVar.V = hVar.f4441c;
            fVar.Q = -9223372036854775807L;
            fVar.O = 1;
            qVar3.L(0);
        }
        d3.e eVar9 = (d3.e) sparseArray.get(fVar.U);
        if (eVar9 == null) {
            lVar.o(i11 - fVar.V, false);
            fVar.O = 0;
            return;
        }
        eVar9.f4371a0.getClass();
        if (fVar.O == 1) {
            fVar.m(lVar, 3);
            int i22 = (qVar3.f15266a[2] & 6) >> 1;
            byte b10 = 255;
            if (i22 == 0) {
                fVar.S = 1;
                int[] iArr = fVar.T;
                if (iArr == null) {
                    iArr = new int[1];
                } else if (iArr.length < 1) {
                    iArr = new int[Math.max(iArr.length * 2, 1)];
                }
                fVar.T = iArr;
                iArr[0] = (i11 - fVar.V) - 3;
            } else {
                fVar.m(lVar, 4);
                int i23 = (qVar3.f15266a[3] & 255) + 1;
                fVar.S = i23;
                int[] iArr2 = fVar.T;
                if (iArr2 == null) {
                    iArr2 = new int[i23];
                } else if (iArr2.length < i23) {
                    iArr2 = new int[Math.max(iArr2.length * 2, i23)];
                }
                fVar.T = iArr2;
                if (i22 == 2) {
                    int i24 = (i11 - fVar.V) - 4;
                    int i25 = fVar.S;
                    Arrays.fill(iArr2, 0, i25, i24 / i25);
                } else {
                    if (i22 != 1) {
                        if (i22 != 3) {
                            throw f0.a(null, "Unexpected lacing value: " + i22);
                        }
                        int i26 = 0;
                        int i27 = 0;
                        while (true) {
                            int i28 = fVar.S - i18;
                            if (i26 >= i28) {
                                eVar2 = eVar9;
                                fVar.T[i28] = ((i11 - fVar.V) - i17) - i27;
                                break;
                            }
                            fVar.T[i26] = i19;
                            int i29 = i17 + 1;
                            fVar.m(lVar, i29);
                            if (qVar3.f15266a[i17] == 0) {
                                throw f0.a(null, "No valid varint length mask found");
                            }
                            int i30 = 0;
                            while (true) {
                                if (i30 >= 8) {
                                    eVar3 = eVar9;
                                    j10 = 0;
                                    i17 = i29;
                                    break;
                                }
                                int i31 = i18 << (7 - i30);
                                if ((qVar3.f15266a[i17] & i31) != 0) {
                                    int i32 = i29 + i30;
                                    fVar.m(lVar, i32);
                                    eVar3 = eVar9;
                                    j10 = qVar3.f15266a[i17] & b10 & (i31 ^ (-1));
                                    while (i29 < i32) {
                                        j10 = (j10 << 8) | (qVar3.f15266a[i29] & 255);
                                        i29++;
                                        i32 = i32;
                                    }
                                    int i33 = i32;
                                    if (i26 > 0) {
                                        j10 -= (1 << ((i30 * 7) + 6)) - 1;
                                    }
                                    i17 = i33;
                                } else {
                                    i30++;
                                    b10 = 255;
                                    i18 = 1;
                                }
                            }
                            if (j10 < -2147483648L || j10 > 2147483647L) {
                                break;
                            }
                            int i34 = (int) j10;
                            int[] iArr3 = fVar.T;
                            if (i26 != 0) {
                                i34 += iArr3[i26 - 1];
                            }
                            iArr3[i26] = i34;
                            i27 += i34;
                            i26++;
                            eVar9 = eVar3;
                            b10 = 255;
                            i18 = 1;
                            i19 = 0;
                        }
                        throw f0.a(null, "EBML lacing sample size out of range.");
                    }
                    int i35 = 0;
                    int i36 = 0;
                    while (true) {
                        i12 = fVar.S - 1;
                        if (i35 >= i12) {
                            break;
                        }
                        fVar.T[i35] = 0;
                        while (true) {
                            i13 = i17 + 1;
                            fVar.m(lVar, i13);
                            int i37 = qVar3.f15266a[i17] & 255;
                            int[] iArr4 = fVar.T;
                            i14 = iArr4[i35] + i37;
                            iArr4[i35] = i14;
                            if (i37 != 255) {
                                break;
                            } else {
                                i17 = i13;
                            }
                        }
                        i36 += i14;
                        i35++;
                        i17 = i13;
                    }
                    fVar.T[i12] = ((i11 - fVar.V) - i17) - i36;
                }
            }
            eVar2 = eVar9;
            byte[] bArr6 = qVar3.f15266a;
            fVar.P = fVar.o((bArr6[1] & 255) | (bArr6[0] << 8)) + fVar.M;
            eVar = eVar2;
            if (eVar.f4377e != 1) {
                if (i10 == 163) {
                    i15 = 2;
                    if ((qVar3.f15266a[2] & 128) == 128) {
                    }
                    fVar.W = i16;
                    fVar.O = i15;
                    fVar.R = 0;
                } else {
                    i15 = 2;
                }
                i16 = 0;
                fVar.W = i16;
                fVar.O = i15;
                fVar.R = 0;
            } else {
                i15 = 2;
            }
            i16 = 1;
            fVar.W = i16;
            fVar.O = i15;
            fVar.R = 0;
        } else {
            eVar = eVar9;
        }
        if (i10 == 163) {
            while (true) {
                int i38 = fVar.R;
                if (i38 >= fVar.S) {
                    fVar.O = 0;
                    return;
                }
                fVar.j(eVar, ((fVar.R * eVar.f4378f) / 1000) + fVar.P, fVar.W, fVar.p(lVar, eVar, fVar.T[i38], false), 0);
                fVar.R++;
                eVar = eVar;
            }
        } else {
            d3.e eVar10 = eVar;
            while (true) {
                int i39 = fVar.R;
                if (i39 >= fVar.S) {
                    return;
                }
                int[] iArr5 = fVar.T;
                iArr5[i39] = fVar.p(lVar, eVar10, iArr5[i39], true);
                fVar.R++;
            }
        }
    }

    public void m(int i10, double d10) {
        d3.f fVar = (d3.f) this.f76b;
        if (i10 == 181) {
            fVar.i(i10);
            fVar.f4434y.S = (int) d10;
        }
        if (i10 == 17545) {
            fVar.f4430u = (long) d10;
            return;
        }
        switch (i10) {
            case 21969:
                fVar.i(i10);
                fVar.f4434y.F = (float) d10;
                break;
            case 21970:
                fVar.i(i10);
                fVar.f4434y.G = (float) d10;
                break;
            case 21971:
                fVar.i(i10);
                fVar.f4434y.H = (float) d10;
                break;
            case 21972:
                fVar.i(i10);
                fVar.f4434y.I = (float) d10;
                break;
            case 21973:
                fVar.i(i10);
                fVar.f4434y.J = (float) d10;
                break;
            case 21974:
                fVar.i(i10);
                fVar.f4434y.K = (float) d10;
                break;
            case 21975:
                fVar.i(i10);
                fVar.f4434y.L = (float) d10;
                break;
            case 21976:
                fVar.i(i10);
                fVar.f4434y.M = (float) d10;
                break;
            case 21977:
                fVar.i(i10);
                fVar.f4434y.N = (float) d10;
                break;
            case 21978:
                fVar.i(i10);
                fVar.f4434y.O = (float) d10;
                break;
            default:
                switch (i10) {
                    case 30323:
                        fVar.i(i10);
                        fVar.f4434y.f4391u = (float) d10;
                        break;
                    case 30324:
                        fVar.i(i10);
                        fVar.f4434y.f4392v = (float) d10;
                        break;
                    case 30325:
                        fVar.i(i10);
                        fVar.f4434y.f4393w = (float) d10;
                        break;
                    default:
                        fVar.getClass();
                        break;
                }
        }
    }

    public x1.a n() {
        return null;
    }

    public b2.b o() {
        return (b2.b) this.f76b;
    }

    @Override // okhttp3.Callback
    public void onFailure(Call call, IOException iOException) {
        if (iOException instanceof SocketTimeoutException) {
            int i10 = ((d9.b) this.f76b).f4508b;
            d9.b bVar = (d9.b) this.f76b;
            if (i10 < bVar.f4507a.f11013e) {
                bVar.f4508b++;
                d9.b bVar2 = (d9.b) this.f76b;
                bVar2.f4510d = bVar2.f4507a.f();
                ((d9.b) this.f76b).getClass();
                ((d9.b) this.f76b).f4510d.enqueue(this);
                return;
            }
        }
        if (call.isCanceled()) {
            return;
        }
        ((d9.b) this.f76b).b(v3.f.v(call, null));
    }

    @Override // okhttp3.Callback
    public void onResponse(Call call, Response response) {
        boolean z;
        int iCode = response.code();
        d9.b bVar = (d9.b) this.f76b;
        if (iCode == 404 || iCode >= 500) {
            new b0("network error! http response code is 404 or 5xx!", 3);
            bVar.b(v3.f.v(call, response));
            return;
        }
        switch (bVar.f4512f) {
            case 0:
                if (response.code() == 304) {
                    new n0(g.b.A("the http response code is 304, but the cache with cacheKey = ", bVar.f4507a.f11015g, " is null or expired!"));
                    d9.b.f(new d9.a(bVar, v3.f.v(call, response), 1));
                    z = true;
                    break;
                }
            default:
                z = false;
                break;
        }
        if (z) {
            return;
        }
        try {
            m9.e eVar = bVar.f4507a;
            if (eVar.l == null) {
                eVar.l = eVar.f11019k;
            }
            n9.a.b(eVar.l, "converter == null, do you forget to call Request#converter(Converter<T>) ?");
            Object objT = eVar.l.t(response);
            d9.b.a(bVar, response.headers(), objT);
            v3.f fVar = new v3.f(19, (char) 0);
            fVar.f16474b = objT;
            fVar.f16475c = call;
            fVar.f16476d = response;
            bVar.c(fVar);
        } catch (Throwable unused) {
            bVar.b(v3.f.v(call, response));
        }
    }

    @Override // androidx.media3.exoplayer.video.h0
    public void p() {
        androidx.media3.exoplayer.video.m mVar = (androidx.media3.exoplayer.video.m) this.f76b;
        if (mVar.R1 != null) {
            mVar.Q0(0, 1);
        }
    }

    public UUID r() {
        return r1.f.f13434a;
    }

    @Override // androidx.media3.exoplayer.video.h0
    public void s() {
        y1.b0 b0Var = ((androidx.media3.exoplayer.video.m) this.f76b).L;
        if (b0Var != null) {
            b0Var.a();
        }
    }

    public int t() {
        return 1;
    }

    public String toString() {
        switch (this.f75a) {
            case 9:
                if (((cd.a[]) this.f76b) == null) {
                    return "SecurityDescriptor:\nNULL";
                }
                String string = "SecurityDescriptor:\n";
                for (int i10 = 0; i10 < ((cd.a[]) this.f76b).length; i10++) {
                    StringBuilder sbM = g.b.m(string);
                    sbM.append(((cd.a[]) this.f76b)[i10].toString());
                    sbM.append(SignParameters.NEW_LINE);
                    string = sbM.toString();
                }
                return string;
            default:
                return super.toString();
        }
    }

    public void u(int i10, long j10) throws f0 {
        d3.f fVar = (d3.f) this.f76b;
        fVar.getClass();
        if (i10 == 240) {
            if (fVar.z) {
                return;
            }
            fVar.h(i10);
            if (fVar.H == -1) {
                fVar.H = j10;
                return;
            }
            return;
        }
        if (i10 == 241) {
            if (fVar.z) {
                return;
            }
            fVar.h(i10);
            if (fVar.G == -1) {
                fVar.G = j10;
                return;
            }
            return;
        }
        if (i10 == 20529) {
            if (j10 == 0) {
                return;
            }
            throw f0.a(null, "ContentEncodingOrder " + j10 + " not supported");
        }
        if (i10 == 20530) {
            if (j10 == 1) {
                return;
            }
            throw f0.a(null, "ContentEncodingScope " + j10 + " not supported");
        }
        switch (i10) {
            case 131:
                int i11 = (int) j10;
                if (i11 == 1) {
                    fVar.i(i10);
                    fVar.f4434y.f4377e = 2;
                    return;
                }
                if (i11 == 2) {
                    fVar.i(i10);
                    fVar.f4434y.f4377e = 1;
                    return;
                } else if (i11 == 17) {
                    fVar.i(i10);
                    fVar.f4434y.f4377e = 3;
                    return;
                } else if (i11 != 33) {
                    fVar.i(i10);
                    fVar.f4434y.f4377e = -1;
                    return;
                } else {
                    fVar.i(i10);
                    fVar.f4434y.f4377e = 5;
                    return;
                }
            case 136:
                fVar.i(i10);
                fVar.f4434y.Y = j10 == 1;
                return;
            case 155:
                fVar.Q = fVar.o(j10);
                return;
            case 159:
                fVar.i(i10);
                fVar.f4434y.Q = (int) j10;
                return;
            case 176:
                fVar.i(i10);
                fVar.f4434y.f4385n = (int) j10;
                return;
            case 179:
                if (fVar.z) {
                    return;
                }
                fVar.h(i10);
                fVar.E = fVar.o(j10);
                return;
            case CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_TIMES /* 186 */:
                fVar.i(i10);
                fVar.f4434y.f4386o = (int) j10;
                return;
            case CarSettingID.Recv.IFC_TSR_AVAIL /* 215 */:
                fVar.i(i10);
                fVar.f4434y.f4376d = (int) j10;
                return;
            case CarSettingID.Recv.SUNROOF_STATUS /* 231 */:
                fVar.M = fVar.o(j10);
                return;
            case 238:
                fVar.X = (int) j10;
                return;
            case 247:
                if (fVar.z) {
                    return;
                }
                fVar.h(i10);
                fVar.F = (int) j10;
                return;
            case 251:
                fVar.Y = true;
                return;
            case 16871:
                fVar.i(i10);
                fVar.f4434y.f4380h = (int) j10;
                return;
            case 16980:
                if (j10 == 3) {
                    return;
                }
                throw f0.a(null, "ContentCompAlgo " + j10 + " not supported");
            case 17029:
                if (j10 < 1 || j10 > 2) {
                    throw f0.a(null, "DocTypeReadVersion " + j10 + " not supported");
                }
                return;
            case 17143:
                if (j10 == 1) {
                    return;
                }
                throw f0.a(null, "EBMLReadVersion " + j10 + " not supported");
            case 18401:
                if (j10 == 5) {
                    return;
                }
                throw f0.a(null, "ContentEncAlgo " + j10 + " not supported");
            case 18408:
                if (j10 == 1) {
                    return;
                }
                throw f0.a(null, "AESSettingsCipherMode " + j10 + " not supported");
            case 21420:
                fVar.B = j10 + fVar.f4428s;
                return;
            case 21432:
                int i12 = (int) j10;
                fVar.i(i10);
                if (i12 == 0) {
                    fVar.f4434y.f4395y = 0;
                    return;
                }
                if (i12 == 1) {
                    fVar.f4434y.f4395y = 2;
                    return;
                } else if (i12 == 3) {
                    fVar.f4434y.f4395y = 1;
                    return;
                } else {
                    if (i12 != 15) {
                        return;
                    }
                    fVar.f4434y.f4395y = 3;
                    return;
                }
            case 21680:
                fVar.i(i10);
                fVar.f4434y.f4388q = (int) j10;
                return;
            case 21682:
                fVar.i(i10);
                fVar.f4434y.f4389s = (int) j10;
                return;
            case 21690:
                fVar.i(i10);
                fVar.f4434y.r = (int) j10;
                return;
            case 21930:
                fVar.i(i10);
                fVar.f4434y.X = j10 == 1;
                return;
            case 21938:
                fVar.i(i10);
                d3.e eVar = fVar.f4434y;
                eVar.z = true;
                eVar.f4387p = (int) j10;
                return;
            case 21998:
                fVar.i(i10);
                fVar.f4434y.f4379g = (int) j10;
                return;
            case 22186:
                fVar.i(i10);
                fVar.f4434y.T = j10;
                return;
            case 22203:
                fVar.i(i10);
                fVar.f4434y.U = j10;
                return;
            case 25188:
                fVar.i(i10);
                fVar.f4434y.R = (int) j10;
                return;
            case 30114:
                fVar.Z = j10;
                return;
            case 30321:
                fVar.i(i10);
                int i13 = (int) j10;
                if (i13 == 0) {
                    fVar.f4434y.f4390t = 0;
                    return;
                }
                if (i13 == 1) {
                    fVar.f4434y.f4390t = 1;
                    return;
                } else if (i13 == 2) {
                    fVar.f4434y.f4390t = 2;
                    return;
                } else {
                    if (i13 != 3) {
                        return;
                    }
                    fVar.f4434y.f4390t = 3;
                    return;
                }
            case 2352003:
                fVar.i(i10);
                fVar.f4434y.f4378f = (int) j10;
                return;
            case 2807729:
                fVar.f4429t = j10;
                return;
            default:
                switch (i10) {
                    case 21945:
                        fVar.i(i10);
                        int i14 = (int) j10;
                        if (i14 == 1) {
                            fVar.f4434y.C = 2;
                            return;
                        } else {
                            if (i14 != 2) {
                                return;
                            }
                            fVar.f4434y.C = 1;
                            return;
                        }
                    case 21946:
                        fVar.i(i10);
                        int iH = r1.g.h((int) j10);
                        if (iH != -1) {
                            fVar.f4434y.B = iH;
                            return;
                        }
                        return;
                    case 21947:
                        fVar.i(i10);
                        fVar.f4434y.z = true;
                        int iG = r1.g.g((int) j10);
                        if (iG != -1) {
                            fVar.f4434y.A = iG;
                            return;
                        }
                        return;
                    case 21948:
                        fVar.i(i10);
                        fVar.f4434y.D = (int) j10;
                        return;
                    case 21949:
                        fVar.i(i10);
                        fVar.f4434y.E = (int) j10;
                        return;
                    default:
                        return;
                }
        }
    }

    public boolean v() {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f76b;
        try {
            String[] strArr = (String[]) connectivityManager.getClass().getDeclaredMethod("getTetheredIfaces", null).invoke(connectivityManager, null);
            Arrays.toString(strArr);
            return strArr.length > 0;
        } catch (Exception e7) {
            e7.printStackTrace();
            return false;
        }
    }

    public void x() {
        ((androidx.emoji2.text.l) this.f76b).e();
    }

    public void y(Exception exc) {
        u1.a.g("Audio sink error", exc);
        j0 j0Var = ((q1) this.f76b).A1;
        Handler handler = j0Var.f195b;
        if (handler != null) {
            handler.post(new a0(j0Var, exc, 1));
        }
    }

    public i(ViewGroup viewGroup) {
        this.f75a = 28;
        this.f76b = viewGroup.getOverlay();
    }

    public i(Context context, ViewGroup viewGroup, ViewGroup viewGroup2) {
        this.f75a = 27;
        this.f76b = new c0(context, viewGroup, viewGroup2, this);
    }

    public i(int i10) {
        this.f75a = i10;
        switch (i10) {
            case 13:
                if (Build.VERSION.SDK_INT >= 23) {
                    this.f76b = (ConnectivityManager) AppStart.f3772h.getSystemService(ConnectivityManager.class);
                    break;
                }
                break;
            case 24:
                this.f76b = new l2(10);
                break;
        }
    }

    public i(g.e eVar) {
        this.f75a = 23;
        this.f76b = eVar;
        eVar.mark(Integer.MAX_VALUE);
    }

    public i(Uri uri, ClipDescription clipDescription, Uri uri2) {
        this.f75a = 0;
        if (Build.VERSION.SDK_INT >= 25) {
            this.f76b = new g(uri, clipDescription, uri2);
        } else {
            this.f76b = new v3.f(1, uri, clipDescription, uri2, false);
        }
    }

    public i(UUID uuid, int i10, byte[] bArr, UUID[] uuidArr) {
        this.f75a = 22;
        this.f76b = uuid;
    }

    @Override // d2.o
    public void flush() {
    }

    @Override // d2.o
    public void h() {
    }

    @Override // d2.o
    public void shutdown() {
    }

    @Override // d2.o
    public void start() {
    }

    public void C(b2.d dVar) {
    }

    public void J(EditorInfo editorInfo) {
    }

    @Override // androidx.media3.exoplayer.video.h0
    public void b(r1.b1 b1Var) {
    }

    public void j(b2.d dVar) {
    }

    public CharSequence z(CharSequence charSequence, int i10, int i11, boolean z) {
        return charSequence;
    }
}
