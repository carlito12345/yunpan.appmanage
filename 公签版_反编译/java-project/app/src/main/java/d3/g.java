package d3;

import android.graphics.Bitmap;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.ui.ActivityAccessibility;
import com.yunpan.appmanage.ui.ActivityAppShowAppClose;
import com.yunpan.appmanage.ui.ActivityAppShowAppOpen;
import com.yunpan.appmanage.ui.ActivityDownload;
import com.yunpan.appmanage.ui.ActivityKeyMapLogcat;
import com.yunpan.appmanage.ui.ActivityKeymapAiOnY;
import com.yunpan.appmanage.ui.ActivityNezhaWallpaper;
import com.yunpan.appmanage.ui.ActivityNezhaWallpaperL;
import com.yunpan.appmanage.ui.ActivityOuShangWhitelist;
import com.yunpan.appmanage.ui.ActivityPermissions;
import com.yunpan.appmanage.ui.ActivityRunMemory;
import com.yunpan.appmanage.ui.ActivityUsers;
import f5.i;
import h5.z;
import ha.d9;
import ha.o;
import ha.s2;
import ha.w7;
import ha.wd;
import ha.y6;
import io.github.rosemoe.sora.widget.CodeEditor;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import l2.g0;
import l2.l;
import ta.m;
import tb.u;
import u1.f0;
import u1.q;
import x9.r3;
import x9.t5;
import x9.u5;
import y0.a0;
import z7.s;

/* loaded from: classes.dex */
public final class g implements g0, t5.a, wd, d9, w7, y6, a0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4435a;

    /* renamed from: b, reason: collision with root package name */
    public int f4436b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f4437c;

    public /* synthetic */ g(int i10, int i11, Object obj) {
        this.f4435a = i11;
        this.f4437c = obj;
        this.f4436b = i10;
    }

    @Override // ha.wd
    public void D() {
        int i10 = 0;
        Object obj = this.f4437c;
        switch (this.f4435a) {
            case 7:
                int i11 = ActivityAccessibility.G;
                ActivityAccessibility activityAccessibility = (ActivityAccessibility) obj;
                activityAccessibility.getClass();
                int i12 = this.f4436b;
                new mc.c(i10, new o(i12, 7, activityAccessibility)).d(rc.f.f13757b).a(fc.b.a()).b(new s2(i12, 2, activityAccessibility));
                break;
            case 8:
                ActivityAppShowAppClose activityAppShowAppClose = (ActivityAppShowAppClose) obj;
                if (activityAppShowAppClose.F.b() == 1) {
                    activityAppShowAppClose.C.requestFocus();
                }
                activityAppShowAppClose.F.C(this.f4436b);
                activityAppShowAppClose.x();
                break;
            case 9:
                ActivityAppShowAppOpen activityAppShowAppOpen = (ActivityAppShowAppOpen) obj;
                if (activityAppShowAppOpen.F.b() == 1) {
                    activityAppShowAppOpen.C.requestFocus();
                }
                activityAppShowAppOpen.F.C(this.f4436b);
                activityAppShowAppOpen.x();
                break;
            case 10:
                ActivityDownload activityDownload = (ActivityDownload) obj;
                t5 t5Var = activityDownload.V;
                int i13 = this.f4436b;
                if (((u5) t5Var.t(i13)).f18346c.startsWith("下载中")) {
                    ((u5) activityDownload.V.t(i13)).f18352i = true;
                    break;
                }
                break;
            case 17:
                int i14 = ActivityOuShangWhitelist.G;
                ActivityOuShangWhitelist activityOuShangWhitelist = (ActivityOuShangWhitelist) obj;
                activityOuShangWhitelist.getClass();
                int i15 = this.f4436b;
                new mc.c(i10, new o(i15, 15, activityOuShangWhitelist)).d(rc.f.f13757b).a(fc.b.a()).b(new s2(i15, 6, activityOuShangWhitelist));
                break;
            case 18:
                break;
            default:
                ActivityRunMemory.y((ActivityRunMemory) obj, this.f4436b, true);
                break;
        }
    }

    @Override // ha.w7
    public void a(s sVar) {
        ActivityKeymapAiOnY activityKeymapAiOnY = (ActivityKeymapAiOnY) this.f4437c;
        int i10 = this.f4436b;
        if (i10 == -1) {
            activityKeymapAiOnY.F.q(sVar);
            activityKeymapAiOnY.H.p("maps").k(sVar);
        } else {
            activityKeymapAiOnY.F.D(i10, sVar);
            activityKeymapAiOnY.H.p("maps").o(i10, sVar);
        }
        int i11 = ActivityKeymapAiOnY.K;
        q4.a.R(activityKeymapAiOnY.A, activityKeymapAiOnY.H);
        m.c(activityKeymapAiOnY.A, "UP_INIT_AIONY");
    }

    @Override // ha.d9
    public void b() {
        int i10 = ActivityKeyMapLogcat.L;
        ((ActivityKeyMapLogcat) this.f4437c).z();
    }

    @Override // t5.a
    public z c(z zVar, i iVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ((Bitmap) zVar.get()).compress((Bitmap.CompressFormat) this.f4437c, this.f4436b, byteArrayOutputStream);
        zVar.recycle();
        return new o5.a0(byteArrayOutputStream.toByteArray());
    }

    @Override // y0.a0
    public boolean d(View view) {
        ((BottomSheetBehavior) this.f4437c).B(this.f4436b);
        return true;
    }

    @Override // ha.d9, ha.w7
    public void delete() {
        switch (this.f4435a) {
            case 12:
                int i10 = this.f4436b;
                if (i10 != -1) {
                    ActivityKeyMapLogcat activityKeyMapLogcat = (ActivityKeyMapLogcat) this.f4437c;
                    if (activityKeyMapLogcat.F.b() == 1) {
                        activityKeyMapLogcat.C.requestFocus();
                    }
                    activityKeyMapLogcat.F.C(i10);
                    break;
                }
                break;
            default:
                int i11 = this.f4436b;
                if (i11 != -1) {
                    ActivityKeymapAiOnY activityKeymapAiOnY = (ActivityKeymapAiOnY) this.f4437c;
                    activityKeymapAiOnY.F.C(i11);
                    activityKeymapAiOnY.H.p("maps").n(i11);
                    q4.a.R(activityKeymapAiOnY.A, activityKeymapAiOnY.H);
                    m.c(activityKeymapAiOnY.A, "UP_INIT_AIONY");
                    break;
                }
                break;
        }
    }

    public void e(int i10, int i11) {
        b5.e eVar = (b5.e) this.f4437c;
        int i12 = eVar.f2568c;
        if (i10 >= i12) {
            for (int i13 = i10 - i12; i13 >= 0; i13--) {
                eVar.d(-1);
            }
        }
        eVar.f(i10, i11);
        int i14 = i11 + 1;
        if (this.f4436b < i14) {
            this.f4436b = i14;
        }
    }

    public void f(MotionEvent motionEvent) {
        int i10 = this.f4436b;
        u uVar = (u) this.f4437c;
        cc.d insertHandleDescriptor = i10 != 1 ? i10 != 2 ? uVar.f15016a.getInsertHandleDescriptor() : uVar.f15016a.getRightHandleDescriptor() : uVar.f15016a.getLeftHandleDescriptor();
        cc.d rightHandleDescriptor = this.f4436b == 1 ? uVar.f15016a.getRightHandleDescriptor() : uVar.f15016a.getLeftHandleDescriptor();
        float x10 = motionEvent.getX() + uVar.f15017b.f14985b.getCurrX();
        int i11 = insertHandleDescriptor.f2990b;
        RectF rectF = insertHandleDescriptor.f2989a;
        float fWidth = ((i11 != 0 ? rectF.width() : 0.0f) * (insertHandleDescriptor.f2990b == 1 ? 1 : -1)) + x10;
        float y6 = (motionEvent.getY() + uVar.f15017b.f14985b.getCurrY()) - rectF.height();
        CodeEditor codeEditor = uVar.f15016a;
        int iH = (int) (codeEditor.H(0.0f, y6) >> 32);
        if (iH < 0 || iH >= codeEditor.getLineCount()) {
            return;
        }
        int iH2 = (int) (codeEditor.H(fWidth, y6) & 4294967295L);
        int i12 = this.f4436b == 2 ? codeEditor.getCursor().f11082d.f11057b : codeEditor.getCursor().f11081c.f11057b;
        int i13 = this.f4436b == 2 ? codeEditor.getCursor().f11082d.f11058c : codeEditor.getCursor().f11081c.f11058c;
        int i14 = this.f4436b != 2 ? codeEditor.getCursor().f11082d.f11057b : codeEditor.getCursor().f11081c.f11057b;
        int i15 = this.f4436b != 2 ? codeEditor.getCursor().f11082d.f11058c : codeEditor.getCursor().f11081c.f11058c;
        if (iH == i12 && iH2 == i13) {
            return;
        }
        int i16 = this.f4436b;
        if (i16 != 0 && iH == i14 && iH2 == i15) {
            return;
        }
        if (i16 == 0) {
            codeEditor.getClass();
            codeEditor.f8728o1 = System.currentTimeMillis();
            codeEditor.h0(iH, iH2, 2, false);
            return;
        }
        if (i16 == 1) {
            if (i14 >= iH && (i14 != iH || i15 >= iH2)) {
                uVar.f15016a.j0(iH, iH2, i14, i15, 2, false);
                return;
            }
            if (RectF.intersects(rectF, rightHandleDescriptor.f2989a)) {
                return;
            }
            uVar.d(uVar.f15020e, false);
            uVar.f15020e = 2;
            uVar.d(2, true);
            this.f4436b = 2;
            g gVar = uVar.f15035x;
            gVar.f4436b = 1;
            uVar.f15035x = uVar.f15034w;
            uVar.f15034w = gVar;
            uVar.f15016a.j0(i14, i15, iH, iH2, 2, false);
            return;
        }
        if (i16 != 2) {
            return;
        }
        if (i14 <= iH && (i14 != iH || i15 <= iH2)) {
            uVar.f15016a.j0(i14, i15, iH, iH2, 2, false);
            return;
        }
        if (RectF.intersects(rectF, rightHandleDescriptor.f2989a)) {
            return;
        }
        uVar.d(uVar.f15020e, false);
        uVar.f15020e = 1;
        uVar.d(1, true);
        this.f4436b = 1;
        g gVar2 = uVar.f15034w;
        gVar2.f4436b = 2;
        g gVar3 = uVar.f15035x;
        uVar.f15035x = gVar2;
        uVar.f15034w = gVar3;
        uVar.f15016a.j0(iH, iH2, i14, i15, 2, false);
    }

    public float g(int i10, int i11) {
        float[][] fArr = (float[][]) this.f4437c;
        if (fArr.length == 1) {
            float[] fArr2 = fArr[0];
            return fArr2[i11] - fArr2[i10];
        }
        int i12 = i10 / 262144;
        int i13 = i11 / 262144;
        float f10 = 0.0f;
        while (i12 <= i13) {
            int i14 = i12 * 262144;
            int i15 = i12 + 1;
            int iMin = Math.min(i15 * 262144, this.f4436b);
            int iMax = Math.max(i10, i14);
            int iMin2 = Math.min(i11, iMin);
            if (iMax < iMin2) {
                float[] fArr3 = fArr[i12];
                f10 = (fArr3[iMin2 - i14] - fArr3[iMax - i14]) + f10;
            }
            i12 = i15;
        }
        return f10;
    }

    @Override // ha.y6
    public void n(String str, boolean z) {
        Object obj = this.f4437c;
        switch (this.f4435a) {
            case 15:
                if (z) {
                    ActivityNezhaWallpaper activityNezhaWallpaper = (ActivityNezhaWallpaper) obj;
                    r3 r3Var = activityNezhaWallpaper.F;
                    int i10 = this.f4436b;
                    ((AppBean) r3Var.t(i10)).name = str;
                    activityNezhaWallpaper.F.e(i10);
                    activityNezhaWallpaper.L.l(i10).g().m("appName", str);
                    break;
                }
                break;
            case 16:
                if (z) {
                    ActivityNezhaWallpaperL activityNezhaWallpaperL = (ActivityNezhaWallpaperL) obj;
                    r3 r3Var2 = activityNezhaWallpaperL.F;
                    int i11 = this.f4436b;
                    ((AppBean) r3Var2.t(i11)).name = str;
                    activityNezhaWallpaperL.F.e(i11);
                    activityNezhaWallpaperL.L.l(i11).g().m("appName", str);
                    break;
                }
                break;
            default:
                if (z) {
                    int i12 = ActivityUsers.G;
                    ((ActivityUsers) obj).x(this.f4436b, str);
                    break;
                }
                break;
        }
    }

    public long o(l lVar) {
        q qVar = (q) this.f4437c;
        int i10 = 0;
        lVar.c(qVar.f15266a, 0, 1, false);
        int i11 = qVar.f15266a[0] & 255;
        if (i11 == 0) {
            return Long.MIN_VALUE;
        }
        int i12 = 128;
        int i13 = 0;
        while ((i11 & i12) == 0) {
            i12 >>= 1;
            i13++;
        }
        int i14 = i11 & (i12 ^ (-1));
        lVar.c(qVar.f15266a, 1, i13, false);
        while (i10 < i13) {
            i10++;
            i14 = (qVar.f15266a[i10] & 255) + (i14 << 8);
        }
        this.f4436b = i13 + 1 + this.f4436b;
        return i14;
    }

    @Override // ha.wd
    public void t() {
        Object obj = this.f4437c;
        switch (this.f4435a) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 17:
                break;
            case 18:
                int i10 = ActivityPermissions.L;
                ((ActivityPermissions) obj).y(this.f4436b);
                break;
            default:
                ActivityRunMemory.y((ActivityRunMemory) obj, this.f4436b, false);
                break;
        }
    }

    public String toString() {
        switch (this.f4435a) {
            case 1:
                x7.a aVar = (x7.a) this.f4437c;
                ArrayList arrayList = new ArrayList(aVar.f18186b);
                int i10 = 0;
                while (true) {
                    int i11 = aVar.f18186b;
                    if (i10 >= i11) {
                        return "UnsupportedBrands{major=" + f0.Q(this.f4436b) + ", compatible=" + arrayList + "}";
                    }
                    a9.o.m(i10, i11);
                    arrayList.add(f0.Q(aVar.f18185a[i10]));
                    i10++;
                }
            default:
                return super.toString();
        }
    }

    public /* synthetic */ g(int i10, int i11, Object[] objArr) {
        this.f4435a = i11;
        this.f4436b = i10;
        this.f4437c = objArr;
    }

    public g(byte b10, int i10) {
        this.f4435a = i10;
        switch (i10) {
            case 4:
                this.f4437c = Bitmap.CompressFormat.JPEG;
                this.f4436b = 100;
                break;
            default:
                this.f4437c = new q(8);
                break;
        }
    }

    public g(int i10, int[] iArr) {
        x7.a aVar;
        this.f4435a = 1;
        this.f4436b = i10;
        if (iArr != null) {
            x7.a aVar2 = x7.a.f18184c;
            aVar = iArr.length == 0 ? x7.a.f18184c : new x7.a(Arrays.copyOf(iArr, iArr.length));
        } else {
            aVar = x7.a.f18184c;
        }
        this.f4437c = aVar;
    }

    public g(int i10, int i11) {
        this.f4435a = i11;
        switch (i11) {
            case 23:
                this.f4437c = new b5.e(i10);
                return;
            default:
                if (i10 >= 0) {
                    this.f4436b = i10;
                    int i12 = (262143 + i10) / 262144;
                    this.f4437c = new float[i12][];
                    int i13 = 0;
                    while (i13 < i12) {
                        int i14 = i12 - 1;
                        ((float[][]) this.f4437c)[i13] = new float[(i13 == i14 ? i10 - (i14 * 262144) : 262144) + 1];
                        i13++;
                    }
                    return;
                }
                throw new IllegalArgumentException(da.b.a(i10, "invalid size: "));
        }
    }

    private final void h() {
    }

    private final void i() {
    }

    private final void j() {
    }

    private final void k() {
    }

    private final void l() {
    }

    private final void m() {
    }
}
