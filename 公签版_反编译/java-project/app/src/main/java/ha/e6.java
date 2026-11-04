package ha;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.widget.NestedScrollView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import java.io.File;
import java.io.FileOutputStream;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class e6 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f6944g;

    /* renamed from: h, reason: collision with root package name */
    public x9.v0 f6945h;

    /* renamed from: i, reason: collision with root package name */
    public final ua.d8 f6946i;

    /* renamed from: j, reason: collision with root package name */
    public NestedScrollView f6947j;

    /* renamed from: k, reason: collision with root package name */
    public EditText f6948k;
    public EditText l;

    /* renamed from: m, reason: collision with root package name */
    public EditText f6949m;

    /* renamed from: n, reason: collision with root package name */
    public EditText f6950n;

    /* renamed from: p, reason: collision with root package name */
    public EditText f6951p;

    /* renamed from: q, reason: collision with root package name */
    public EditText f6952q;
    public EditText r;

    /* renamed from: s, reason: collision with root package name */
    public int f6953s;

    /* renamed from: t, reason: collision with root package name */
    public ImageView f6954t;

    /* renamed from: v, reason: collision with root package name */
    public ImageView f6955v;

    /* renamed from: w, reason: collision with root package name */
    public ImageView f6956w;

    /* renamed from: x, reason: collision with root package name */
    public LinearLayout f6957x;

    /* renamed from: y, reason: collision with root package name */
    public LinearLayout f6958y;
    public LinearLayout z;

    public e6(Activity activity, Context context, ua.d8 d8Var) {
        super(activity, context, R.layout.dialog_file_set);
        this.f6946i = d8Var;
    }

    public static void a() {
        List<ApplicationInfo> installedApplications;
        AppBean appBean;
        try {
            StringBuilder sb2 = new StringBuilder("rm -rf ");
            com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
            sb2.append(wVar.f4107a);
            u9.d.r(sb2.toString()).l0();
            new File(wVar.f4107a).mkdir();
        } catch (Exception unused) {
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        File file = new File(g.b.l(kVar.f4041d, ".png", sb3));
        if (!file.exists()) {
            try {
                Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(kVar.f4035a.getResources(), R.drawable.apk);
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    bitmapDecodeResource.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                    fileOutputStream.flush();
                    fileOutputStream.close();
                } catch (Throwable th2) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused2) {
                        }
                    }
                    throw th2;
                }
            } catch (Exception unused3) {
            }
        }
        MyDb.get().getAppDao().deleteAll();
        try {
            installedApplications = Build.VERSION.SDK_INT >= 24 ? com.yunpan.appmanage.util.j.f4033a.f4037b.getInstalledApplications(8192) : com.yunpan.appmanage.util.j.f4033a.f4037b.getInstalledApplications(8192);
            try {
                if (installedApplications.size() < 3) {
                    installedApplications = com.yunpan.appmanage.util.j.f4033a.f4037b.getInstalledApplications(1);
                }
            } catch (Exception unused4) {
            }
        } catch (Exception unused5) {
            installedApplications = null;
        }
        if (installedApplications != null) {
            Iterator<ApplicationInfo> it = installedApplications.iterator();
            while (it.hasNext()) {
                try {
                    appBean = new AppBean(it.next());
                } catch (Exception unused6) {
                    appBean = null;
                }
                if (appBean != null && !appBean.pack.equals(com.yunpan.appmanage.util.j.f4033a.f4041d)) {
                    try {
                        MyDb.get().getAppDao().insert(appBean);
                    } catch (Exception unused7) {
                    }
                }
            }
        }
    }

    public static String d(EditText editText) {
        String string = editText.getText().toString();
        if (string.contains(" ")) {
            string = string.replace(" ", "|");
        }
        if (string.contains(",")) {
            string = string.replace(",", "|");
        }
        if (string.contains("，")) {
            string = string.replace("，", "|");
        }
        if (string.contains("|.")) {
            string = string.replace("|.", "|");
        }
        return string.contains("||") ? string.replace("||", "|") : string;
    }

    public final void b(int i10) {
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        wVar.f4137p0 = i10;
        try {
            wVar.f4123i.l("ImageThumbnailMode", Integer.valueOf(i10));
        } catch (Exception unused) {
        }
        wVar.m();
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.j.f4033a.p();
        ImageView imageView = this.f6954t;
        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
        int i11 = wVar2.f4137p0;
        int i12 = R.drawable.tp_radio_no1;
        imageView.setImageResource(i11 == 0 ? R.drawable.tp_radio_yes7 : R.drawable.tp_radio_no1);
        this.f6955v.setImageResource(wVar2.f4137p0 == 1 ? R.drawable.tp_radio_yes7 : R.drawable.tp_radio_no1);
        ImageView imageView2 = this.f6956w;
        if (wVar2.f4137p0 == 2) {
            i12 = R.drawable.tp_radio_yes7;
        }
        imageView2.setImageResource(i12);
    }

    public final void c(View view) {
        view.setOnFocusChangeListener(new n(1, this));
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        int i10 = this.f6953s;
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        if (i10 != wVar.f4137p0) {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
            kVar.k();
            kVar.f4048g0.submit(new com.gj.server.a(2));
        }
        String strD = d(this.f6948k);
        wVar.f4153y0 = strD;
        try {
            wVar.f4123i.m("mFileType_apk", strD);
        } catch (Exception unused) {
        }
        wVar.m();
        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
        String strD2 = d(this.l);
        wVar2.D0 = strD2;
        try {
            wVar2.f4123i.m("mFileType_zip", strD2);
        } catch (Exception unused2) {
        }
        wVar2.m();
        com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
        String strD3 = d(this.f6949m);
        wVar3.f4154z0 = strD3;
        try {
            wVar3.f4123i.m("mFileType_image", strD3);
        } catch (Exception unused3) {
        }
        wVar3.m();
        com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
        String strD4 = d(this.f6950n);
        wVar4.A0 = strD4;
        try {
            wVar4.f4123i.m("mFileType_video", strD4);
        } catch (Exception unused4) {
        }
        wVar4.m();
        com.yunpan.appmanage.util.w wVar5 = com.yunpan.appmanage.util.v.f4106a;
        String strD5 = d(this.f6951p);
        wVar5.B0 = strD5;
        try {
            wVar5.f4123i.m("mFileType_music", strD5);
        } catch (Exception unused5) {
        }
        wVar5.m();
        com.yunpan.appmanage.util.w wVar6 = com.yunpan.appmanage.util.v.f4106a;
        String strD6 = d(this.f6952q);
        wVar6.C0 = strD6;
        try {
            wVar6.f4123i.m("mFileType_txt", strD6);
        } catch (Exception unused6) {
        }
        wVar6.m();
        com.yunpan.appmanage.util.w wVar7 = com.yunpan.appmanage.util.v.f4106a;
        String strD7 = d(this.r);
        wVar7.E0 = strD7;
        try {
            wVar7.f4123i.m("mFileType_wp_apk", strD7);
        } catch (Exception unused7) {
        }
        wVar7.m();
        HashSet hashSet = wVar7.F0;
        hashSet.clear();
        hashSet.addAll(Arrays.asList(strD7.split("\\|")));
        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.j.f4033a.l();
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_check);
        this.f6944g = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this.f6725b, 3));
        x9.v0 v0Var = new x9.v0();
        this.f6945h = v0Var;
        this.f6944g.setAdapter(v0Var);
        x9.v0 v0Var2 = this.f6945h;
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        v0Var2.q(new x9.x0("按名称来排序", wVar.f4133n0));
        this.f6945h.q(new x9.x0("显示隐藏文件", wVar.f4129l0));
        this.f6945h.q(new x9.x0("应用关联图标", wVar.f4131m0));
        this.f6945h.q(new x9.x0("允许多次粘贴", wVar.f4135o0));
        this.f6945h.q(new x9.x0("关闭图片预览", wVar.f4128k0));
        int i10 = wVar.f4126j0;
        this.f6945h.q(new x9.x0(i10 == 1 ? "文件菜单靠左" : i10 == 2 ? "文件菜单靠右" : "文件菜单居中", false));
        this.f6945h.q(new x9.x0("使用旧解压器", wVar.f4140r0));
        this.f6945h.q(new x9.x0("使用旧压缩器", wVar.s0));
        this.f6944g.setSelection(0);
        this.f6945h.f2881e = new a1.d(24, this);
        this.f6953s = wVar.f4137p0;
        this.f6954t = (ImageView) findViewById(R.id.v_thumbnail_1_ico);
        this.f6957x = (LinearLayout) findViewById(R.id.v_thumbnail_1);
        this.f6955v = (ImageView) findViewById(R.id.v_thumbnail_2_ico);
        this.f6958y = (LinearLayout) findViewById(R.id.v_thumbnail_2);
        this.f6956w = (ImageView) findViewById(R.id.v_thumbnail_3_ico);
        this.z = (LinearLayout) findViewById(R.id.v_thumbnail_3);
        b(wVar.f4137p0);
        final int i11 = 0;
        this.f6957x.setOnClickListener(new View.OnClickListener(this) { // from class: ha.c6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ e6 f6856b;

            {
                this.f6856b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        this.f6856b.b(0);
                        break;
                    case 1:
                        this.f6856b.b(1);
                        break;
                    default:
                        this.f6856b.b(2);
                        break;
                }
            }
        });
        final int i12 = 1;
        this.f6958y.setOnClickListener(new View.OnClickListener(this) { // from class: ha.c6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ e6 f6856b;

            {
                this.f6856b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i12) {
                    case 0:
                        this.f6856b.b(0);
                        break;
                    case 1:
                        this.f6856b.b(1);
                        break;
                    default:
                        this.f6856b.b(2);
                        break;
                }
            }
        });
        final int i13 = 2;
        this.z.setOnClickListener(new View.OnClickListener(this) { // from class: ha.c6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ e6 f6856b;

            {
                this.f6856b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i13) {
                    case 0:
                        this.f6856b.b(0);
                        break;
                    case 1:
                        this.f6856b.b(1);
                        break;
                    default:
                        this.f6856b.b(2);
                        break;
                }
            }
        });
        this.f6947j = (NestedScrollView) findViewById(R.id.v_scroll);
        ImageView imageView = (ImageView) findViewById(R.id.v_btn_is_not_scanning_usb_ico);
        imageView.setImageResource(wVar.f4139q0 ? R.drawable.check2 : R.drawable.check1);
        findViewById(R.id.v_btn_is_not_scanning_usb).setOnClickListener(new f(imageView, 1));
        this.f6948k = (EditText) findViewById(R.id.v_edit_apk);
        this.l = (EditText) findViewById(R.id.v_edit_zip);
        this.f6949m = (EditText) findViewById(R.id.v_edit_image);
        this.f6950n = (EditText) findViewById(R.id.v_edit_video);
        this.f6951p = (EditText) findViewById(R.id.v_edit_music);
        this.f6952q = (EditText) findViewById(R.id.v_edit_txt);
        this.r = (EditText) findViewById(R.id.v_edit_wp);
        c(this.f6944g);
        c(this.f6948k);
        c(this.f6949m);
        c(this.f6950n);
        c(this.f6952q);
        c(this.r);
        c(this.f6951p);
        c(this.l);
        this.f6948k.setText(wVar.f4153y0);
        this.l.setText(wVar.D0);
        this.f6949m.setText(wVar.f4154z0);
        this.f6950n.setText(wVar.A0);
        this.f6951p.setText(wVar.B0);
        this.f6952q.setText(wVar.C0);
        this.r.setText(wVar.E0);
        final int i14 = 0;
        this.f6948k.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.d6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ e6 f6893b;

            {
                this.f6893b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i15, KeyEvent keyEvent) {
                switch (i14) {
                    case 0:
                        e6 e6Var = this.f6893b;
                        e6Var.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i15 != 20) {
                                if (i15 == 19) {
                                    e6Var.f6944g.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var.l.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 1:
                        e6 e6Var2 = this.f6893b;
                        e6Var2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i15 != 20) {
                                if (i15 == 19) {
                                    e6Var2.f6948k.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var2.f6949m.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 2:
                        e6 e6Var3 = this.f6893b;
                        e6Var3.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i15 != 20) {
                                if (i15 == 19) {
                                    e6Var3.l.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var3.f6950n.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 3:
                        e6 e6Var4 = this.f6893b;
                        e6Var4.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i15 != 20) {
                                if (i15 == 19) {
                                    e6Var4.f6949m.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var4.f6951p.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 4:
                        e6 e6Var5 = this.f6893b;
                        e6Var5.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i15 != 20) {
                                if (i15 == 19) {
                                    e6Var5.f6950n.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var5.f6952q.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 5:
                        e6 e6Var6 = this.f6893b;
                        e6Var6.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i15 != 20) {
                                if (i15 == 19) {
                                    e6Var6.f6951p.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var6.r.requestFocus();
                                break;
                            }
                        }
                        break;
                    default:
                        e6 e6Var7 = this.f6893b;
                        e6Var7.getClass();
                        if (keyEvent.getAction() == 0 && i15 == 19) {
                            e6Var7.f6951p.requestFocus();
                            break;
                        }
                        break;
                }
                return false;
            }
        });
        final int i15 = 1;
        this.l.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.d6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ e6 f6893b;

            {
                this.f6893b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i152, KeyEvent keyEvent) {
                switch (i15) {
                    case 0:
                        e6 e6Var = this.f6893b;
                        e6Var.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var.f6944g.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var.l.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 1:
                        e6 e6Var2 = this.f6893b;
                        e6Var2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var2.f6948k.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var2.f6949m.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 2:
                        e6 e6Var3 = this.f6893b;
                        e6Var3.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var3.l.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var3.f6950n.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 3:
                        e6 e6Var4 = this.f6893b;
                        e6Var4.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var4.f6949m.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var4.f6951p.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 4:
                        e6 e6Var5 = this.f6893b;
                        e6Var5.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var5.f6950n.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var5.f6952q.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 5:
                        e6 e6Var6 = this.f6893b;
                        e6Var6.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var6.f6951p.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var6.r.requestFocus();
                                break;
                            }
                        }
                        break;
                    default:
                        e6 e6Var7 = this.f6893b;
                        e6Var7.getClass();
                        if (keyEvent.getAction() == 0 && i152 == 19) {
                            e6Var7.f6951p.requestFocus();
                            break;
                        }
                        break;
                }
                return false;
            }
        });
        final int i16 = 2;
        this.f6949m.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.d6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ e6 f6893b;

            {
                this.f6893b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i152, KeyEvent keyEvent) {
                switch (i16) {
                    case 0:
                        e6 e6Var = this.f6893b;
                        e6Var.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var.f6944g.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var.l.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 1:
                        e6 e6Var2 = this.f6893b;
                        e6Var2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var2.f6948k.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var2.f6949m.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 2:
                        e6 e6Var3 = this.f6893b;
                        e6Var3.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var3.l.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var3.f6950n.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 3:
                        e6 e6Var4 = this.f6893b;
                        e6Var4.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var4.f6949m.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var4.f6951p.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 4:
                        e6 e6Var5 = this.f6893b;
                        e6Var5.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var5.f6950n.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var5.f6952q.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 5:
                        e6 e6Var6 = this.f6893b;
                        e6Var6.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var6.f6951p.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var6.r.requestFocus();
                                break;
                            }
                        }
                        break;
                    default:
                        e6 e6Var7 = this.f6893b;
                        e6Var7.getClass();
                        if (keyEvent.getAction() == 0 && i152 == 19) {
                            e6Var7.f6951p.requestFocus();
                            break;
                        }
                        break;
                }
                return false;
            }
        });
        final int i17 = 3;
        this.f6950n.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.d6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ e6 f6893b;

            {
                this.f6893b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i152, KeyEvent keyEvent) {
                switch (i17) {
                    case 0:
                        e6 e6Var = this.f6893b;
                        e6Var.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var.f6944g.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var.l.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 1:
                        e6 e6Var2 = this.f6893b;
                        e6Var2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var2.f6948k.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var2.f6949m.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 2:
                        e6 e6Var3 = this.f6893b;
                        e6Var3.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var3.l.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var3.f6950n.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 3:
                        e6 e6Var4 = this.f6893b;
                        e6Var4.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var4.f6949m.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var4.f6951p.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 4:
                        e6 e6Var5 = this.f6893b;
                        e6Var5.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var5.f6950n.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var5.f6952q.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 5:
                        e6 e6Var6 = this.f6893b;
                        e6Var6.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var6.f6951p.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var6.r.requestFocus();
                                break;
                            }
                        }
                        break;
                    default:
                        e6 e6Var7 = this.f6893b;
                        e6Var7.getClass();
                        if (keyEvent.getAction() == 0 && i152 == 19) {
                            e6Var7.f6951p.requestFocus();
                            break;
                        }
                        break;
                }
                return false;
            }
        });
        final int i18 = 4;
        this.f6951p.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.d6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ e6 f6893b;

            {
                this.f6893b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i152, KeyEvent keyEvent) {
                switch (i18) {
                    case 0:
                        e6 e6Var = this.f6893b;
                        e6Var.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var.f6944g.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var.l.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 1:
                        e6 e6Var2 = this.f6893b;
                        e6Var2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var2.f6948k.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var2.f6949m.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 2:
                        e6 e6Var3 = this.f6893b;
                        e6Var3.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var3.l.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var3.f6950n.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 3:
                        e6 e6Var4 = this.f6893b;
                        e6Var4.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var4.f6949m.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var4.f6951p.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 4:
                        e6 e6Var5 = this.f6893b;
                        e6Var5.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var5.f6950n.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var5.f6952q.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 5:
                        e6 e6Var6 = this.f6893b;
                        e6Var6.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var6.f6951p.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var6.r.requestFocus();
                                break;
                            }
                        }
                        break;
                    default:
                        e6 e6Var7 = this.f6893b;
                        e6Var7.getClass();
                        if (keyEvent.getAction() == 0 && i152 == 19) {
                            e6Var7.f6951p.requestFocus();
                            break;
                        }
                        break;
                }
                return false;
            }
        });
        final int i19 = 5;
        this.f6952q.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.d6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ e6 f6893b;

            {
                this.f6893b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i152, KeyEvent keyEvent) {
                switch (i19) {
                    case 0:
                        e6 e6Var = this.f6893b;
                        e6Var.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var.f6944g.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var.l.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 1:
                        e6 e6Var2 = this.f6893b;
                        e6Var2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var2.f6948k.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var2.f6949m.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 2:
                        e6 e6Var3 = this.f6893b;
                        e6Var3.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var3.l.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var3.f6950n.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 3:
                        e6 e6Var4 = this.f6893b;
                        e6Var4.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var4.f6949m.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var4.f6951p.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 4:
                        e6 e6Var5 = this.f6893b;
                        e6Var5.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var5.f6950n.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var5.f6952q.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 5:
                        e6 e6Var6 = this.f6893b;
                        e6Var6.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var6.f6951p.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var6.r.requestFocus();
                                break;
                            }
                        }
                        break;
                    default:
                        e6 e6Var7 = this.f6893b;
                        e6Var7.getClass();
                        if (keyEvent.getAction() == 0 && i152 == 19) {
                            e6Var7.f6951p.requestFocus();
                            break;
                        }
                        break;
                }
                return false;
            }
        });
        final int i20 = 6;
        this.r.setOnKeyListener(new View.OnKeyListener(this) { // from class: ha.d6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ e6 f6893b;

            {
                this.f6893b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i152, KeyEvent keyEvent) {
                switch (i20) {
                    case 0:
                        e6 e6Var = this.f6893b;
                        e6Var.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var.f6944g.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var.l.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 1:
                        e6 e6Var2 = this.f6893b;
                        e6Var2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var2.f6948k.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var2.f6949m.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 2:
                        e6 e6Var3 = this.f6893b;
                        e6Var3.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var3.l.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var3.f6950n.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 3:
                        e6 e6Var4 = this.f6893b;
                        e6Var4.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var4.f6949m.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var4.f6951p.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 4:
                        e6 e6Var5 = this.f6893b;
                        e6Var5.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var5.f6950n.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var5.f6952q.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 5:
                        e6 e6Var6 = this.f6893b;
                        e6Var6.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i152 != 20) {
                                if (i152 == 19) {
                                    e6Var6.f6951p.requestFocus();
                                    break;
                                }
                            } else {
                                e6Var6.r.requestFocus();
                                break;
                            }
                        }
                        break;
                    default:
                        e6 e6Var7 = this.f6893b;
                        e6Var7.getClass();
                        if (keyEvent.getAction() == 0 && i152 == 19) {
                            e6Var7.f6951p.requestFocus();
                            break;
                        }
                        break;
                }
                return false;
            }
        });
    }
}
