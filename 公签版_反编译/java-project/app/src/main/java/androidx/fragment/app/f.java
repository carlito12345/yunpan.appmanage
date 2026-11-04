package androidx.fragment.app;

import android.app.Activity;
import android.graphics.Point;
import android.util.Log;
import android.view.View;
import com.hjq.permissions.OnPermissionCallback;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.core.OnPermissionFragmentCallback;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements t0.f, OnPermissionFragmentCallback, h2.k, mb.f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1256a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1257b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1258c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1259d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f1260e;

    public /* synthetic */ f(Object obj, Object obj2, Object obj3, Object obj4, int i10) {
        this.f1256a = i10;
        this.f1257b = obj;
        this.f1258c = obj2;
        this.f1259d = obj3;
        this.f1260e = obj4;
    }

    @Override // t0.f
    public void c() {
        n nVar = (n) this.f1258c;
        ue.d.e(nVar, "this$0");
        i iVar = (i) this.f1259d;
        ue.d.e(iVar, "$animationInfo");
        z1 z1Var = (z1) this.f1260e;
        ue.d.e(z1Var, "$operation");
        View view = (View) this.f1257b;
        view.clearAnimation();
        nVar.f1350a.endViewTransition(view);
        iVar.a();
        if (Log.isLoggable("FragmentManager", 2)) {
            z1Var.toString();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0063  */
    @Override // h2.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public u7.y0 d(int i10, r1.r0 r0Var, int[] iArr) {
        int i11;
        int i12;
        int i13;
        int i14;
        Point point;
        int i15;
        f fVar = this;
        int i16 = ((int[]) fVar.f1259d)[i10];
        h2.i iVar = (h2.i) fVar.f1257b;
        Point point2 = (Point) fVar.f1260e;
        int i17 = point2 != null ? point2.x : iVar.f13601e;
        int i18 = point2 != null ? point2.y : iVar.f13602f;
        boolean z = iVar.f13604h;
        if (i17 == Integer.MAX_VALUE || i18 == Integer.MAX_VALUE) {
            i11 = Integer.MAX_VALUE;
        } else {
            int i19 = Integer.MAX_VALUE;
            for (int i20 = 0; i20 < r0Var.f13553a; i20++) {
                r1.p pVar = r0Var.f13556d[i20];
                int i21 = pVar.f13529v;
                if (i21 > 0 && (i12 = pVar.f13530w) > 0) {
                    if (z) {
                        if ((i21 > i12) != (i17 > i18)) {
                            i14 = i18;
                            i13 = i17;
                        }
                        int i22 = i21 * i13;
                        int i23 = i12 * i14;
                        if (i22 < i23) {
                        }
                        i15 = pVar.f13529v;
                        int i24 = i15 * i12;
                        if (i15 < ((int) (point.x * 0.98f))) {
                        }
                    } else {
                        i13 = i18;
                        i14 = i17;
                        int i222 = i21 * i13;
                        int i232 = i12 * i14;
                        point = i222 < i232 ? new Point(i14, u1.f0.e(i232, i21)) : new Point(u1.f0.e(i222, i12), i13);
                        i15 = pVar.f13529v;
                        int i242 = i15 * i12;
                        if (i15 < ((int) (point.x * 0.98f)) && i12 >= ((int) (point.y * 0.98f)) && i242 < i19) {
                            i19 = i242;
                        }
                    }
                }
            }
            i11 = i19;
        }
        u7.q.c(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i25 = 0;
        int i26 = 0;
        while (i26 < r0Var.f13553a) {
            int iB = r0Var.f13556d[i26].b();
            boolean z4 = i11 == Integer.MAX_VALUE || (iB != -1 && iB <= i11);
            int i27 = iArr[i26];
            String str = (String) fVar.f1258c;
            int i28 = i25;
            h2.m mVar = new h2.m(i10, r0Var, i26, iVar, i27, str, i16, z4);
            i25 = i28 + 1;
            int iF = u7.a0.f(objArrCopyOf.length, i25);
            if (iF > objArrCopyOf.length) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, iF);
            }
            objArrCopyOf[i28] = mVar;
            i26++;
            fVar = this;
        }
        return u7.g0.i(i25, objArrCopyOf);
    }

    @Override // mb.f
    public void f(int i10, mb.h hVar, nb.b bVar) {
        int iCeil = (int) Math.ceil(((u1.p) this.f1257b).d(hVar, 0, hVar.f11076c, (eb.c) this.f1258c));
        androidx.leanback.widget.i iVar = (androidx.leanback.widget.i) this.f1259d;
        if (iCeil > iVar.f1647b) {
            iVar.f1647b = iCeil;
        }
        int[] iArr = (int[]) this.f1260e;
        if (iArr != null) {
            iArr[i10] = iCeil;
        }
    }

    @Override // com.hjq.permissions.core.OnPermissionFragmentCallback
    public /* synthetic */ void onRequestPermissionAnomaly() {
        int i10 = this.f1256a;
        com.hjq.permissions.core.a.a(this);
    }

    @Override // com.hjq.permissions.core.OnPermissionFragmentCallback
    public void onRequestPermissionFinish() {
        switch (this.f1256a) {
            case 1:
                XXPermissions.lambda$startPermissionActivity$1((Activity) this.f1257b, (android.app.Fragment) this.f1258c, (List) this.f1259d, (OnPermissionCallback) this.f1260e);
                break;
            default:
                XXPermissions.lambda$startPermissionActivity$2((j0) this.f1257b, (Fragment) this.f1258c, (List) this.f1259d, (OnPermissionCallback) this.f1260e);
                break;
        }
    }

    @Override // com.hjq.permissions.core.OnPermissionFragmentCallback
    public /* synthetic */ void onRequestPermissionNow() {
        int i10 = this.f1256a;
        com.hjq.permissions.core.a.b(this);
    }
}
