package ha;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.SignatureBean;
import com.yunpan.appmanage.db.AppBean;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* loaded from: classes.dex */
public final class o2 extends a4 {
    public static final /* synthetic */ int z = 0;

    /* renamed from: g, reason: collision with root package name */
    public int f7502g;

    /* renamed from: h, reason: collision with root package name */
    public AppBean f7503h;

    /* renamed from: i, reason: collision with root package name */
    public ApplicationInfo f7504i;

    /* renamed from: j, reason: collision with root package name */
    public PackageInfo f7505j;

    /* renamed from: k, reason: collision with root package name */
    public SignatureBean f7506k;
    public TvRecyclerView l;

    /* renamed from: m, reason: collision with root package name */
    public x9.t f7507m;

    /* renamed from: n, reason: collision with root package name */
    public final int f7508n;

    /* renamed from: p, reason: collision with root package name */
    public final l5.y f7509p;

    /* renamed from: q, reason: collision with root package name */
    public double f7510q;
    public boolean r;

    /* renamed from: s, reason: collision with root package name */
    public final HashSet f7511s;

    /* renamed from: t, reason: collision with root package name */
    public TextView f7512t;

    /* renamed from: v, reason: collision with root package name */
    public TextView f7513v;

    /* renamed from: w, reason: collision with root package name */
    public ImageView f7514w;

    /* renamed from: x, reason: collision with root package name */
    public TextView f7515x;

    /* renamed from: y, reason: collision with root package name */
    public TextView f7516y;

    public o2(da.g gVar, da.g gVar2, int i10, l5.y yVar) {
        super(gVar, gVar2, R.layout.dialog_app);
        this.f7506k = null;
        this.r = false;
        HashSet hashSet = new HashSet();
        this.f7511s = hashSet;
        this.f7508n = i10;
        this.f7509p = yVar;
        hashSet.add("android");
        hashSet.add("com.android.documentsui");
        hashSet.add("com.android.systemui");
        hashSet.add("com.android.shell");
        hashSet.add("com.android.bluetooth");
        hashSet.add("com.android.packageinstaller");
        hashSet.add("com.android.externalstorage");
    }

    public static void h(File file, String str, ZipOutputStream zipOutputStream) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        zipOutputStream.putNextEntry(new ZipEntry(str));
        byte[] bArr = new byte[3145728];
        while (true) {
            int i10 = fileInputStream.read(bArr);
            if (i10 < 0) {
                fileInputStream.close();
                zipOutputStream.closeEntry();
                return;
            }
            zipOutputStream.write(bArr, 0, i10);
        }
    }

    public static void i(File file, String str, ZipOutputStream zipOutputStream) throws IOException {
        for (File file2 : file.listFiles()) {
            if (file2.isDirectory()) {
                zipOutputStream.putNextEntry(new ZipEntry(file2.getPath().substring(str.length()) + "/"));
                zipOutputStream.closeEntry();
                i(file2, str, zipOutputStream);
            } else {
                file2.getPath();
                FileInputStream fileInputStream = new FileInputStream(file2);
                ZipEntry zipEntry = new ZipEntry(file2.getPath().substring(str.length()));
                zipEntry.getName();
                zipOutputStream.putNextEntry(zipEntry);
                byte[] bArr = new byte[3145728];
                while (true) {
                    int i10 = fileInputStream.read(bArr);
                    if (i10 < 0) {
                        break;
                    } else {
                        zipOutputStream.write(bArr, 0, i10);
                    }
                }
                fileInputStream.close();
                zipOutputStream.closeEntry();
            }
        }
    }

    public final void a() {
        a2.w0 w0Var = fa.b0.f5652a;
        AppBean appBean = this.f7503h;
        String str = appBean.pack;
        boolean z4 = !appBean.isDisable;
        w0Var.f347c = new g2(this, 9);
        u9.d.f15554a.execute(new fa.s(w0Var, str, z4, 0));
    }

    public final void b(int i10) {
        int i11 = 0;
        if (fa.g0.f5682a.d().isEmpty()) {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.f4073v.isEmpty()) {
                Toaster.showLong((CharSequence) "未找到可用的存储设备(sd卡、U盘)");
                return;
            }
        }
        this.f7507m.D(i10, new x9.l3(R.drawable.tp_apk1, "稍等"));
        double d10 = this.f7510q;
        if (d10 < 3.145728E8d) {
            com.yunpan.appmanage.util.a0.w("提取中，请稍等片刻");
        } else if (d10 > 7.340032E8d) {
            com.yunpan.appmanage.util.a0.w("提取中，文件较大，需稍等片刻");
        } else {
            com.yunpan.appmanage.util.a0.w("提取中，文件超大，请耐心等待");
        }
        new mc.c(i11, new g2(this, 1)).d(rc.f.f13757b).a(fc.b.a()).b(new n2(this, i10, i11));
    }

    public final void c() {
        AppBean appBean = this.f7503h;
        if (appBean.isSystem && !appBean.isHide && appBean.pack.equals("com.android.documentsui")) {
            com.yunpan.appmanage.util.a0.s("这个系统应用极其重要，我拒绝你这么做", false);
            return;
        }
        a2.w0 w0Var = fa.b0.f5652a;
        AppBean appBean2 = this.f7503h;
        String str = appBean2.pack;
        boolean z4 = !appBean2.isHide;
        w0Var.f347c = new g2(this, 0);
        u9.d.f15554a.execute(new fa.s(w0Var, str, z4, 3));
    }

    public final void d() {
        fa.b0.f5652a.getClass();
        if (a2.w0.O()) {
            AppBean appBean = this.f7503h;
            if (!appBean.isSystem || !appBean.apkPath.startsWith("/data/app/")) {
                dismiss();
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                if (com.yunpan.appmanage.util.j.f4033a.f4072u.size() <= 1) {
                    f(false);
                    return;
                } else {
                    new z6(this.f6724a, this.f6725b, "您系统中有多个用户，请问是否把系统中其它用户里的同款应用也一同卸载？", "", "只卸载当前用户", "全部卸载", new i2(this, 3)).show();
                    return;
                }
            }
        }
        AppBean appBean2 = this.f7503h;
        if (appBean2.isSystem && !appBean2.apkPath.startsWith("/data/app/")) {
            com.yunpan.appmanage.util.a0.z("没有权限卸载系统应用！", false);
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.UNINSTALL_PACKAGE");
            intent.setData(Uri.parse("package:" + this.f7503h.pack));
            intent.addFlags(268435456);
            this.f6724a.startActivity(intent);
        } catch (Exception unused) {
            com.yunpan.appmanage.util.a0.s("调用卸载程序出错！", false);
        }
        dismiss();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e(int i10, AppBean appBean) {
        show();
        this.f7502g = i10;
        this.f7503h = appBean;
        this.f7512t.setText(appBean.name);
        this.f7513v.setText(this.f7503h.pack);
        Context context = this.f6725b;
        com.bumptech.glide.m mVarA = com.bumptech.glide.b.f(context).u("file://" + com.yunpan.appmanage.util.v.f4106a.f4107a + this.f7503h.pack + ".png").a(w5.e.z(new o5.x(8)));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        int i11 = kVar.R;
        ((com.bumptech.glide.m) ((com.bumptech.glide.m) mVarA.o(i11, i11)).g(R.drawable.tp_cj)).D(this.f7514w);
        ArrayList arrayList = new ArrayList();
        if (this.f7508n == 1) {
            arrayList.add(new x9.l3(R.drawable.tp_cache1, "缓存"));
            arrayList.add(new x9.l3(R.drawable.tp_cache3, "重置"));
            arrayList.add(new x9.l3(R.drawable.tp_apk1, "提取"));
            if (this.f7503h.pack.equals(kVar.f4041d)) {
                fa.b0.f5652a.getClass();
                if (!a2.w0.N() || Build.VERSION.SDK_INT < 23) {
                    arrayList.add(new x9.l3(R.drawable.tp_delete3, "卸载"));
                } else {
                    arrayList.add(new x9.l3(R.drawable.root2, "权限"));
                }
            }
        } else if (this.f7503h.apkPath.isEmpty()) {
            arrayList.add(new x9.l3(R.drawable.tp_delete3, "卸载数据"));
        } else {
            AppBean appBean2 = this.f7503h;
            if (appBean2.isUnInstall) {
                arrayList.add(new x9.l3(R.drawable.tp_huifu, "恢复安装"));
                arrayList.add(new x9.l3(R.drawable.tp_apk1, "提取应用"));
                arrayList.add(new x9.l3(R.drawable.tp_delete3, "强制删除"));
            } else if (appBean2.isHide) {
                arrayList.add(new x9.l3(R.drawable.tp_hide2, "取消隐藏"));
                arrayList.add(new x9.l3(R.drawable.tp_apk1, "提取应用"));
            } else {
                if (appBean2.isDisable) {
                    arrayList.add(new x9.l3(R.drawable.tp_jj1, "解禁"));
                    arrayList.add(new x9.l3(R.drawable.tp_delete3, "卸载"));
                    arrayList.add(new x9.l3(R.drawable.tp_apk1, "提取"));
                } else {
                    arrayList.add(new x9.l3(R.drawable.tp_start2, "启动"));
                    arrayList.add(new x9.l3(R.drawable.tp_apk1, "提取"));
                    AppBean appBean3 = this.f7503h;
                    if (appBean3.isSystem) {
                        if (appBean3.apkPath.startsWith("/data/app/")) {
                            arrayList.add(new x9.l3(R.drawable.tp_hy1, "还原"));
                        }
                        fa.b0.f5652a.getClass();
                        if (a2.w0.L()) {
                            arrayList.add(new x9.l3(R.drawable.tp_delete3, "卸载"));
                        }
                    } else {
                        arrayList.add(new x9.l3(R.drawable.tp_delete3, "卸载"));
                    }
                    fa.b0.f5652a.getClass();
                    if (a2.w0.N()) {
                        boolean z4 = this.f7503h.isDisable;
                        arrayList.add(new x9.l3(z4 ? R.drawable.tp_jj1 : R.drawable.tp_jy2, z4 ? "解禁" : "禁用"));
                        arrayList.add(new x9.l3(R.drawable.tp_hide2, "隐藏"));
                        arrayList.add(new x9.l3(R.drawable.tp_cache1, "缓存"));
                        arrayList.add(new x9.l3(R.drawable.tp_cache3, "重置"));
                        if (Build.VERSION.SDK_INT >= 23) {
                            arrayList.add(new x9.l3(R.drawable.root2, "权限"));
                        }
                        arrayList.add(new x9.l3(R.drawable.tp_mode1, "组件"));
                    }
                    if (kVar.D) {
                        arrayList.add(new x9.l3(R.drawable.fankui2, "详情"));
                    }
                    if (arrayList.size() % 2 == 1) {
                        arrayList.add(new x9.l3(R.drawable.tp_fh1, "返回"));
                    }
                }
            }
        }
        this.f7507m.E(arrayList);
        TvRecyclerView tvRecyclerView = this.l;
        int size = arrayList.size();
        int size2 = arrayList.size();
        if (size >= 6) {
            size2 /= 2;
        }
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(context, size2));
        this.l.setSelection(0);
        this.l.requestFocus();
        this.r = false;
        this.f7505j = null;
        new mc.c(0, new g2(this, 4)).d(rc.f.f13757b).a(fc.b.a()).b(new m2(this, 1));
    }

    public final void f(boolean z4) {
        Toaster.showLong((CharSequence) "卸载中");
        a2.w0 w0Var = fa.b0.f5652a;
        String str = this.f7503h.pack;
        w0Var.f347c = new g2(this, 2);
        u9.d.f15554a.execute(new fa.s(w0Var, str, z4, 2));
    }

    public final void g(boolean z4) {
        new mc.c(0, new h2(this, z4, 0)).d(rc.f.f13757b).a(fc.b.a()).b(new l2(28));
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        findViewById(R.id.v_copy_pack).setOnClickListener(new com.google.android.material.datepicker.l(this, 7));
        this.f7512t = (TextView) findViewById(R.id.v_dialog_name);
        this.f7513v = (TextView) findViewById(R.id.v_pack);
        this.f7514w = (ImageView) findViewById(R.id.v_dialog_ico);
        this.f7515x = (TextView) findViewById(R.id.v_dialog_version);
        this.f7516y = (TextView) findViewById(R.id.v_time);
        this.f7507m = new x9.t();
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.l = tvRecyclerView;
        tvRecyclerView.setHasFixedSize(true);
        this.l.setAdapter(this.f7507m);
        this.f7507m.f2881e = new g2(this, 5);
        this.l.setOnItemListener(new k2());
        this.l.setOnInBorderKeyEventListener(new g2.c(4));
    }
}
