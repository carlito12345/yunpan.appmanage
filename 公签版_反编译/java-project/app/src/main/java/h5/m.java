package h5;

import a2.w0;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.FileProvider;
import androidx.leanback.widget.h0;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.InstallerBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import ha.b5;
import ha.ea;
import ha.fc;
import ha.g4;
import ha.gd;
import ha.h4;
import ha.h7;
import ha.i2;
import ha.id;
import ha.l2;
import ha.m2;
import ha.n2;
import ha.nb;
import ha.o1;
import ha.o2;
import ha.p7;
import ha.ra;
import ha.sa;
import ha.t9;
import ha.td;
import ha.ud;
import ha.vb;
import ha.wb;
import ha.wd;
import ha.y6;
import ha.z6;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import okhttp3.MediaType;
import ua.g1;
import w.r3;
import x0.b1;
import x0.g2;
import x0.j0;
import x0.j2;
import x9.w3;

/* loaded from: classes.dex */
public final class m implements b6.a, wd, g4, y6, ea.g, ea, i3.d, x0.x, kf.e, l5.r {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6610a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f6611b;

    public /* synthetic */ m(int i10, Object obj) {
        this.f6610a = i10;
        this.f6611b = obj;
    }

    @Override // ha.wd
    public void D() throws NumberFormatException {
        int i10 = 0;
        Object obj = this.f6611b;
        switch (this.f6610a) {
            case 1:
                com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                wVar.r(true);
                ((ImageView) obj).setImageResource(wVar.B ? R.drawable.tp_check1 : R.drawable.tp_check2);
                break;
            case 2:
                n2 n2Var = (n2) obj;
                o2 o2Var = n2Var.f7458d;
                int i11 = n2Var.f7457c;
                int i12 = o2.z;
                o2Var.b(i11);
                break;
            case 3:
                break;
            case 5:
                ((g1) ((o1) obj).f7501h).onClick(null);
                break;
            case 11:
                t9 t9Var = (t9) obj;
                try {
                    Settings.Global.putInt(t9Var.f6725b.getContentResolver(), "enable_freeform_support", 1);
                    Settings.Global.putInt(t9Var.f6725b.getContentResolver(), "force_resizable_activities", 1);
                    break;
                } catch (Exception unused) {
                    com.yunpan.appmanage.util.a0.u("操作失败");
                    return;
                }
            case 12:
                sa saVar = ((ra) obj).f7699c;
                int i13 = sa.f7757j;
                saVar.getClass();
                new mc.c(i10, new g2.c(20)).d(rc.f.f13757b).a(fc.b.a()).b(new ra(saVar, 3));
                break;
            case 14:
                fc fcVar = (fc) obj;
                new vb(fcVar.f6724a, fcVar.f6725b).c("请选择图片", new p7(15, this));
                break;
            case 18:
                id.b(((gd) obj).f7109b, false);
                break;
            default:
                ((z6) obj).dismiss();
                break;
        }
    }

    @Override // ea.g
    public void a(String str) {
        ((h7) ((o1) this.f6611b).f7501h).a(str);
    }

    @Override // ha.ea
    public void b(int i10) {
        int i11 = com.yunpan.appmanage.util.v.f4106a.f4112c0;
        if (i10 == i11) {
            return;
        }
        if (i10 == 0 && Build.VERSION.SDK_INT < 21) {
            com.yunpan.appmanage.util.a0.u("管家安装器：需要安卓5.0以上系统");
            return;
        }
        h0 h0Var = (h0) this.f6611b;
        if (i10 == 2 && i11 != 2) {
            File file = new File("/111.apk");
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            if (Build.VERSION.SDK_INT >= 24) {
                Uri uriC = FileProvider.c(((fc) h0Var.f1645b).f6725b, ((fc) h0Var.f1645b).f6725b.getPackageName() + ".fileprovider", file);
                intent.addFlags(1);
                intent.setDataAndType(uriC, "application/vnd.android.package-archive");
            } else {
                intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
            }
            ArrayList arrayList = new ArrayList();
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            List<ResolveInfo> listQueryIntentActivities = com.yunpan.appmanage.util.j.f4033a.f4037b.queryIntentActivities(intent, 65536);
            for (ResolveInfo resolveInfo : listQueryIntentActivities) {
                if (!resolveInfo.activityInfo.packageName.equals(((fc) h0Var.f1645b).f6725b.getPackageName())) {
                    String str = resolveInfo.loadLabel(com.yunpan.appmanage.util.j.f4033a.f4037b).toString() + "";
                    ActivityInfo activityInfo = resolveInfo.activityInfo;
                    arrayList.add(new InstallerBean(str, activityInfo.packageName, activityInfo.name));
                }
            }
            if (listQueryIntentActivities.size() == 0) {
                Toaster.show((CharSequence) "找不到安装器，系统中没有安装器");
                return;
            } else {
                fc fcVar = (fc) h0Var.f1645b;
                new wb(fcVar.f6724a, fcVar.f6725b, arrayList).show();
            }
        }
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        wVar.y(i10);
        int i12 = wVar.f4112c0;
        if (i12 == 0) {
            ((fc) h0Var.f1645b).l.setText("管家安装器");
        } else if (i12 == 1) {
            ((fc) h0Var.f1645b).l.setText("系统安装器");
        } else if (i12 == 2) {
            ((fc) h0Var.f1645b).l.setText("指定安装器");
        } else if (i12 == 3) {
            ((fc) h0Var.f1645b).l.setText("由打开方式");
        }
        if (i10 != 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                if (com.yunpan.appmanage.util.j.f4033a.f4055k) {
                    wVar.y(0);
                    ((fc) h0Var.f1645b).l.setText("管家安装器");
                    com.yunpan.appmanage.util.a0.v("公签UID版版，只能使用管家安装器", false);
                    return;
                }
                return;
            }
            return;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.f4055k || ((fc) h0Var.f1645b).f6725b.getPackageManager().canRequestPackageInstalls()) {
                return;
            }
            StringBuilder sb2 = new StringBuilder("package:");
            fc fcVar2 = (fc) h0Var.f1645b;
            sb2.append(fcVar2.f6725b.getPackageName());
            Intent intent2 = new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse(sb2.toString()));
            intent2.addFlags(268435456);
            if (intent2.resolveActivity(fcVar2.f6725b.getPackageManager()) != null) {
                Toaster.show((CharSequence) "请允许安装此来源应用权限");
                try {
                    fcVar2.f6725b.startActivity(intent2);
                } catch (Exception unused) {
                }
            }
        }
    }

    @Override // b6.a
    public Object create() {
        r3 r3Var = (r3) this.f6611b;
        return new r((k5.d) r3Var.f17242a, (k5.d) r3Var.f17243b, (k5.d) r3Var.f17244c, (k5.d) r3Var.f17245d, (n) r3Var.f17246e, (n) r3Var.f17247f, (v3.f) r3Var.f17248g);
    }

    @Override // i3.d
    public int d(long j10) {
        return j10 < 0 ? 0 : -1;
    }

    @Override // i3.d
    public long e(int i10) {
        a9.o.k(i10 == 0);
        return 0L;
    }

    @Override // kf.e
    public void f(ba.h hVar) {
        kf.e[] eVarArr = (kf.e[]) this.f6611b;
        for (int i10 = 0; i10 < 2; i10++) {
            eVarArr[i10].f(hVar);
        }
    }

    @Override // kf.e
    public void g(ba.h hVar) {
        kf.e[] eVarArr = (kf.e[]) this.f6611b;
        for (int i10 = 0; i10 < 2; i10++) {
            eVarArr[i10].g(hVar);
        }
    }

    @Override // i3.d
    public List h(long j10) {
        return j10 >= 0 ? (List) this.f6611b : Collections.emptyList();
    }

    @Override // kf.e
    public void i(ba.h hVar) {
        kf.e[] eVarArr = (kf.e[]) this.f6611b;
        for (int i10 = 0; i10 < 2; i10++) {
            eVarArr[i10].i(hVar);
        }
    }

    @Override // i3.d
    public int j() {
        return 1;
    }

    @Override // ha.g4
    public void k(w3 w3Var) {
        ha.r3 r3Var = (ha.r3) this.f6611b;
        r3Var.f7677x.E(new ArrayList());
        r3Var.f7677x.q(w3Var);
    }

    @Override // l5.r
    public l5.q l(l5.w wVar) {
        return new l5.c(1, (l5.a0) this.f6611b);
    }

    @Override // kf.e
    public void m(v3.f fVar) {
        kf.e[] eVarArr = (kf.e[]) this.f6611b;
        for (int i10 = 0; i10 < 2; i10++) {
            eVarArr[i10].m(fVar);
        }
    }

    @Override // ha.y6
    public void n(String str, boolean z) {
        switch (this.f6610a) {
            case 6:
                if (z && !str.isEmpty()) {
                    h4 h4Var = (h4) this.f6611b;
                    File file = new File(android.support.v4.media.session.a.u(new StringBuilder(), ((w3) g.b.d(h4Var.f7146i, 1)).f18365b, "/", str));
                    if (!file.exists()) {
                        if (file.mkdir() && file.exists()) {
                            h4Var.b("", 0, false);
                            Toaster.show((CharSequence) "新建成功");
                            h4Var.f7148k.p(0, new w3(file));
                            h4Var.f7147j.setSelectionWithSmooth(0);
                            h4Var.f7147j.setSelection(0);
                            h4Var.f7147j.requestFocus();
                            MyDb.get().addFile_thread(file.getPath());
                        }
                        com.yunpan.appmanage.util.a0.y("创建目录失败");
                        break;
                    } else {
                        Toaster.show((CharSequence) "已存在同名的目录或文件");
                        break;
                    }
                }
                break;
            case 8:
                if (z && !str.isEmpty()) {
                    b5 b5Var = (b5) this.f6611b;
                    File file2 = new File(android.support.v4.media.session.a.u(new StringBuilder(), ((w3) g.b.d(b5Var.f6788k, 1)).f18365b, "/", str));
                    if (!file2.exists()) {
                        if (file2.mkdir() && file2.exists()) {
                            b5Var.b("", 0, false);
                            Toaster.show((CharSequence) "新建成功");
                            b5Var.f6789m.p(0, new w3(file2));
                            b5Var.l.setSelectionWithSmooth(0);
                            b5Var.l.setSelection(0);
                            b5Var.l.requestFocus();
                            MyDb.get().addFile_thread(file2.getPath());
                        }
                        com.yunpan.appmanage.util.a0.y("创建目录失败");
                        break;
                    } else {
                        Toaster.show((CharSequence) "已存在同名的目录或文件");
                        break;
                    }
                }
                break;
            case 13:
                if (z && !str.isEmpty()) {
                    nb nbVar = (nb) this.f6611b;
                    File file3 = new File(android.support.v4.media.session.a.u(new StringBuilder(), ((w3) g.b.d(nbVar.f7478i, 1)).f18365b, "/", str));
                    if (!file3.exists()) {
                        if (file3.mkdir() && file3.exists()) {
                            nbVar.b("", 0, false);
                            Toaster.show((CharSequence) "新建成功");
                            nbVar.f7480k.p(0, new w3(file3));
                            nbVar.f7479j.setSelectionWithSmooth(0);
                            nbVar.f7479j.setSelection(0);
                            nbVar.f7479j.requestFocus();
                            MyDb.get().addFile_thread(file3.getPath());
                        }
                        com.yunpan.appmanage.util.a0.y("创建目录失败");
                        break;
                    } else {
                        Toaster.show((CharSequence) "已存在同名的目录或文件");
                        break;
                    }
                }
                break;
            default:
                if (z && !str.isEmpty()) {
                    ud udVar = (ud) this.f6611b;
                    Iterator it = udVar.l.v().iterator();
                    while (it.hasNext()) {
                        if (((w3) it.next()).f18364a.equals(str)) {
                            Toaster.show((CharSequence) "已存在同名的目录或文件");
                            break;
                        }
                    }
                    w3 w3Var = (w3) g.b.d(udVar.f7881j, 1);
                    b9.a.f2665a.a(udVar);
                    l9.b bVar = new l9.b(g.b.l(udVar.f7880i, ":9898/newDir", new StringBuilder("http://")));
                    bVar.f11012d = udVar;
                    bVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
                    String strU = android.support.v4.media.session.a.u(new StringBuilder("newDirPath="), w3Var.f18365b, "/", str);
                    MediaType mediaType = MediaType.parse("application/x-www-form-urlencoded; charset=UTF-8");
                    bVar.f11003n = strU;
                    bVar.f11002m = mediaType;
                    bVar.b(new td(udVar, str, w3Var));
                    break;
                }
                break;
        }
    }

    @Override // ha.wd
    public void t() {
        int i10 = 0;
        Object obj = this.f6611b;
        switch (this.f6610a) {
            case 1:
            case 2:
                break;
            case 3:
                o2 o2Var = ((i2) obj).f7195b;
                int i11 = o2.z;
                o2Var.getClass();
                w0 w0Var = fa.b0.f5652a;
                AppBean appBean = o2Var.f7503h;
                w0Var.getClass();
                new mc.c(i10, new d2.w(w0Var, 2, appBean)).d(rc.f.f13757b).a(fc.b.a()).b(new m2(o2Var, i10));
                break;
            case 5:
            case 11:
            case 12:
                break;
            case 14:
                File file = new File(((fc) obj).f6725b.getFilesDir().getParentFile().getPath() + "/bj.png");
                if (file.exists()) {
                    file.delete();
                }
                com.yunpan.appmanage.util.a0.w("恢复成功，请重新打开");
                break;
        }
    }

    @Override // x0.x
    public j2 z(View view, j2 j2Var) {
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.f6611b;
        if (!qf.c.o(coordinatorLayout.f1048n, j2Var)) {
            coordinatorLayout.f1048n = j2Var;
            boolean z = j2Var.d() > 0;
            coordinatorLayout.f1049p = z;
            coordinatorLayout.setWillNotDraw(!z && coordinatorLayout.getBackground() == null);
            g2 g2Var = j2Var.f18006a;
            if (!g2Var.m()) {
                int childCount = coordinatorLayout.getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    View childAt = coordinatorLayout.getChildAt(i10);
                    WeakHashMap weakHashMap = b1.f17953a;
                    if (j0.b(childAt) && ((k0.d) childAt.getLayoutParams()).f9998a != null && g2Var.m()) {
                        break;
                    }
                }
            }
            coordinatorLayout.requestLayout();
        }
        return j2Var;
    }

    public m(a0.o oVar) {
        this.f6610a = 26;
        oVar.getClass();
        this.f6611b = new int[0];
        int[] iArr = oVar.f48b;
        long[] jArr = oVar.f47a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i10 = 0;
        int i11 = 0;
        while (true) {
            long j10 = jArr[i10];
            if (((((-1) ^ j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i12 = 8 - (((i10 - length) ^ (-1)) >>> 31);
                for (int i13 = 0; i13 < i12; i13++) {
                    if ((255 & j10) < 128) {
                        ((int[]) this.f6611b)[i11] = iArr[(i10 << 3) + i13];
                        i11++;
                    }
                    j10 >>= 8;
                }
                if (i12 != 8) {
                    return;
                }
            }
            if (i10 == length) {
                return;
            } else {
                i10++;
            }
        }
    }

    public m(TextView textView) {
        this.f6610a = 22;
        if (Build.VERSION.SDK_INT < 19) {
            this.f6611b = new l2(8);
        } else {
            this.f6611b = new i1.h(textView);
        }
    }

    public m(EditText editText) {
        this.f6610a = 21;
        if (Build.VERSION.SDK_INT < 19) {
            this.f6611b = new ha.j2(7);
        } else {
            this.f6611b = new i1.a(editText);
        }
    }

    public m(int i10) {
        this.f6610a = i10;
        switch (i10) {
            case 29:
                this.f6611b = new l5.n();
                break;
            default:
                this.f6611b = new l5.a0(7);
                break;
        }
    }

    private final void c() {
    }

    private final void o() {
    }

    private final void p() {
    }

    private final void q() {
    }

    private final void r() {
    }

    private final void s() {
    }

    private final void u() {
    }

    private final void v() {
    }
}
