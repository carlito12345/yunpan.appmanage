package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class rb extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final ua.d8 f7700g;

    /* renamed from: h, reason: collision with root package name */
    public TvRecyclerView f7701h;

    /* renamed from: i, reason: collision with root package name */
    public x9.r4 f7702i;

    /* renamed from: j, reason: collision with root package name */
    public TvRecyclerView f7703j;

    /* renamed from: k, reason: collision with root package name */
    public x9.b5 f7704k;
    public RecyclerView l;

    /* renamed from: m, reason: collision with root package name */
    public x9.q4 f7705m;

    public rb(Activity activity, Context context, ua.d8 d8Var) {
        super(activity, context, R.layout.dialog_search);
        this.f7700g = d8Var;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        final int i10 = 0;
        final int i11 = 1;
        super.onCreate(bundle);
        ImageView imageView = (ImageView) findViewById(R.id.v_filtration_ico);
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        imageView.setImageResource(wVar.f4149w0 ? R.drawable.tp_check1 : R.drawable.tp_check2);
        findViewById(R.id.v_filtration).setOnClickListener(new f(imageView, 3));
        this.l = (RecyclerView) findViewById(R.id.v_list_option);
        x9.q4 q4Var = new x9.q4();
        this.f7705m = q4Var;
        q4Var.q(new x9.x0("名称排序", wVar.f4143t0));
        this.f7705m.q(new x9.x0("时间排序", !wVar.f4143t0));
        this.f7705m.q(new x9.x0("包括隐藏文件", wVar.f4145u0));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        if (kVar.K) {
            this.f7705m.q(new x9.x0("包括/Android/data/", wVar.f4147v0));
        }
        RecyclerView recyclerView = this.l;
        Context context = this.f6725b;
        recyclerView.setLayoutManager(new LinearLayoutManager(0, false));
        this.l.setAdapter(this.f7705m);
        this.f7705m.f2881e = new c6.e(this) { // from class: ha.pb

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ rb f7586b;

            {
                this.f7586b = this;
            }

            @Override // c6.e
            public final void x(c6.g gVar, View view, int i12) {
                switch (i10) {
                    case 0:
                        rb rbVar = this.f7586b;
                        x9.x0 x0Var = (x9.x0) rbVar.f7705m.t(i12);
                        x0Var.f18384b = !x0Var.f18384b;
                        rbVar.f7705m.D(i12, x0Var);
                        if (i12 == 0) {
                            com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                            wVar2.f4143t0 = true;
                            try {
                                wVar2.f4123i.k("mFile_search_sort", Boolean.TRUE);
                            } catch (Exception unused) {
                            }
                            wVar2.m();
                            x9.x0 x0Var2 = (x9.x0) rbVar.f7705m.t(1);
                            x0Var2.f18384b = !x0Var2.f18384b;
                            rbVar.f7705m.D(1, x0Var2);
                            break;
                        } else if (i12 == 1) {
                            com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                            wVar3.f4143t0 = false;
                            try {
                                wVar3.f4123i.k("mFile_search_sort", Boolean.FALSE);
                            } catch (Exception unused2) {
                            }
                            wVar3.m();
                            x9.x0 x0Var3 = (x9.x0) rbVar.f7705m.t(0);
                            x0Var3.f18384b = !x0Var3.f18384b;
                            rbVar.f7705m.D(0, x0Var3);
                            break;
                        } else if (i12 == 2) {
                            com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                            boolean z = x0Var.f18384b;
                            wVar4.f4145u0 = z;
                            try {
                                wVar4.f4123i.k("File_search_including_hide_file", Boolean.valueOf(z));
                            } catch (Exception unused3) {
                            }
                            wVar4.m();
                            break;
                        } else if (i12 == 3) {
                            com.yunpan.appmanage.util.w wVar5 = com.yunpan.appmanage.util.v.f4106a;
                            boolean z4 = x0Var.f18384b;
                            wVar5.f4147v0 = z4;
                            try {
                                wVar5.f4123i.k("File_search_including_android_data", Boolean.valueOf(z4));
                            } catch (Exception unused4) {
                            }
                            wVar5.m();
                            break;
                        }
                        break;
                    case 1:
                        rb rbVar2 = this.f7586b;
                        rbVar2.getClass();
                        ArrayList arrayList = new ArrayList();
                        for (int i13 = 0; i13 < rbVar2.f7702i.b(); i13++) {
                            x9.w3 w3Var = (x9.w3) rbVar2.f7702i.t(i13);
                            if (w3Var.f18372i) {
                                arrayList.add(w3Var);
                            }
                        }
                        if (arrayList.isEmpty()) {
                            com.yunpan.appmanage.util.a0.y("请选择要搜索的分区");
                            break;
                        } else {
                            rbVar2.dismiss();
                            String str = (String) rbVar2.f7704k.t(i12);
                            ua.q8 q8Var = rbVar2.f7700g.f15641b;
                            q8Var.getClass();
                            if (str.endsWith("关键字")) {
                                new o1(q8Var.f4530f, q8Var.f4529e, new ua.g6(q8Var, 6, arrayList)).show();
                                break;
                            } else {
                                q8Var.A(false, str, arrayList);
                                break;
                            }
                        }
                    default:
                        rb rbVar3 = this.f7586b;
                        rbVar3.getClass();
                        s1.g.Y(view);
                        x9.w3 w3Var2 = (x9.w3) rbVar3.f7702i.t(i12);
                        w3Var2.f18372i = !w3Var2.f18372i;
                        rbVar3.f7702i.D(i12, w3Var2);
                        if (w3Var2.f18364a.equals("U盘")) {
                            com.yunpan.appmanage.util.w wVar6 = com.yunpan.appmanage.util.v.f4106a;
                            boolean z10 = w3Var2.f18372i;
                            wVar6.f4151x0 = z10;
                            try {
                                wVar6.f4123i.k("mFile_search_usb", Boolean.valueOf(z10));
                            } catch (Exception unused5) {
                            }
                            wVar6.m();
                            break;
                        }
                        break;
                }
            }
        };
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_parti);
        this.f7701h = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 0, false));
        this.f7702i = new x9.r4();
        fa.h0 h0Var = fa.g0.f5682a;
        if (!h0Var.d().isEmpty()) {
            this.f7702i.q(new x9.w3("内部存储", 0, h0Var.d(), true));
        }
        Iterator it = kVar.f4073v.iterator();
        while (it.hasNext()) {
            this.f7702i.q(new x9.w3("U盘", 0, (String) it.next(), com.yunpan.appmanage.util.v.f4106a.f4151x0));
        }
        this.f7701h.setAdapter(this.f7702i);
        final int i12 = 2;
        this.f7702i.f2881e = new c6.e(this) { // from class: ha.pb

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ rb f7586b;

            {
                this.f7586b = this;
            }

            @Override // c6.e
            public final void x(c6.g gVar, View view, int i122) {
                switch (i12) {
                    case 0:
                        rb rbVar = this.f7586b;
                        x9.x0 x0Var = (x9.x0) rbVar.f7705m.t(i122);
                        x0Var.f18384b = !x0Var.f18384b;
                        rbVar.f7705m.D(i122, x0Var);
                        if (i122 == 0) {
                            com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                            wVar2.f4143t0 = true;
                            try {
                                wVar2.f4123i.k("mFile_search_sort", Boolean.TRUE);
                            } catch (Exception unused) {
                            }
                            wVar2.m();
                            x9.x0 x0Var2 = (x9.x0) rbVar.f7705m.t(1);
                            x0Var2.f18384b = !x0Var2.f18384b;
                            rbVar.f7705m.D(1, x0Var2);
                            break;
                        } else if (i122 == 1) {
                            com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                            wVar3.f4143t0 = false;
                            try {
                                wVar3.f4123i.k("mFile_search_sort", Boolean.FALSE);
                            } catch (Exception unused2) {
                            }
                            wVar3.m();
                            x9.x0 x0Var3 = (x9.x0) rbVar.f7705m.t(0);
                            x0Var3.f18384b = !x0Var3.f18384b;
                            rbVar.f7705m.D(0, x0Var3);
                            break;
                        } else if (i122 == 2) {
                            com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                            boolean z = x0Var.f18384b;
                            wVar4.f4145u0 = z;
                            try {
                                wVar4.f4123i.k("File_search_including_hide_file", Boolean.valueOf(z));
                            } catch (Exception unused3) {
                            }
                            wVar4.m();
                            break;
                        } else if (i122 == 3) {
                            com.yunpan.appmanage.util.w wVar5 = com.yunpan.appmanage.util.v.f4106a;
                            boolean z4 = x0Var.f18384b;
                            wVar5.f4147v0 = z4;
                            try {
                                wVar5.f4123i.k("File_search_including_android_data", Boolean.valueOf(z4));
                            } catch (Exception unused4) {
                            }
                            wVar5.m();
                            break;
                        }
                        break;
                    case 1:
                        rb rbVar2 = this.f7586b;
                        rbVar2.getClass();
                        ArrayList arrayList = new ArrayList();
                        for (int i13 = 0; i13 < rbVar2.f7702i.b(); i13++) {
                            x9.w3 w3Var = (x9.w3) rbVar2.f7702i.t(i13);
                            if (w3Var.f18372i) {
                                arrayList.add(w3Var);
                            }
                        }
                        if (arrayList.isEmpty()) {
                            com.yunpan.appmanage.util.a0.y("请选择要搜索的分区");
                            break;
                        } else {
                            rbVar2.dismiss();
                            String str = (String) rbVar2.f7704k.t(i122);
                            ua.q8 q8Var = rbVar2.f7700g.f15641b;
                            q8Var.getClass();
                            if (str.endsWith("关键字")) {
                                new o1(q8Var.f4530f, q8Var.f4529e, new ua.g6(q8Var, 6, arrayList)).show();
                                break;
                            } else {
                                q8Var.A(false, str, arrayList);
                                break;
                            }
                        }
                    default:
                        rb rbVar3 = this.f7586b;
                        rbVar3.getClass();
                        s1.g.Y(view);
                        x9.w3 w3Var2 = (x9.w3) rbVar3.f7702i.t(i122);
                        w3Var2.f18372i = !w3Var2.f18372i;
                        rbVar3.f7702i.D(i122, w3Var2);
                        if (w3Var2.f18364a.equals("U盘")) {
                            com.yunpan.appmanage.util.w wVar6 = com.yunpan.appmanage.util.v.f4106a;
                            boolean z10 = w3Var2.f18372i;
                            wVar6.f4151x0 = z10;
                            try {
                                wVar6.f4123i.k("mFile_search_usb", Boolean.valueOf(z10));
                            } catch (Exception unused5) {
                            }
                            wVar6.m();
                            break;
                        }
                        break;
                }
            }
        };
        if (!fa.g0.f5682a.d().isEmpty() && this.f7702i.b() == 1) {
            this.f7701h.setVisibility(8);
            findViewById(R.id.v_text).setVisibility(8);
        } else if (com.yunpan.appmanage.util.j.f4033a.f4074w) {
            com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
            wVar2.f4151x0 = false;
            try {
                wVar2.f4123i.k("mFile_search_usb", Boolean.FALSE);
            } catch (Exception unused) {
            }
            wVar2.m();
            this.f7701h.setVisibility(8);
            findViewById(R.id.v_text).setVisibility(8);
        }
        this.f7703j = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7704k = new x9.b5();
        this.f7703j.setLayoutManager(new V7GridLayoutManager(context, 5));
        this.f7704k.q("安装包");
        this.f7704k.q("图片");
        this.f7704k.q("视频");
        this.f7704k.q("音乐");
        this.f7704k.q("文档");
        this.f7704k.q("压缩包");
        this.f7704k.q("关键字");
        this.f7704k.q(">10M");
        this.f7704k.q(">100M");
        this.f7704k.q("两天内");
        this.f7703j.setAdapter(this.f7704k);
        this.f7703j.setSelection(0);
        this.f7704k.f2881e = new c6.e(this) { // from class: ha.pb

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ rb f7586b;

            {
                this.f7586b = this;
            }

            @Override // c6.e
            public final void x(c6.g gVar, View view, int i122) {
                switch (i11) {
                    case 0:
                        rb rbVar = this.f7586b;
                        x9.x0 x0Var = (x9.x0) rbVar.f7705m.t(i122);
                        x0Var.f18384b = !x0Var.f18384b;
                        rbVar.f7705m.D(i122, x0Var);
                        if (i122 == 0) {
                            com.yunpan.appmanage.util.w wVar22 = com.yunpan.appmanage.util.v.f4106a;
                            wVar22.f4143t0 = true;
                            try {
                                wVar22.f4123i.k("mFile_search_sort", Boolean.TRUE);
                            } catch (Exception unused2) {
                            }
                            wVar22.m();
                            x9.x0 x0Var2 = (x9.x0) rbVar.f7705m.t(1);
                            x0Var2.f18384b = !x0Var2.f18384b;
                            rbVar.f7705m.D(1, x0Var2);
                            break;
                        } else if (i122 == 1) {
                            com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                            wVar3.f4143t0 = false;
                            try {
                                wVar3.f4123i.k("mFile_search_sort", Boolean.FALSE);
                            } catch (Exception unused22) {
                            }
                            wVar3.m();
                            x9.x0 x0Var3 = (x9.x0) rbVar.f7705m.t(0);
                            x0Var3.f18384b = !x0Var3.f18384b;
                            rbVar.f7705m.D(0, x0Var3);
                            break;
                        } else if (i122 == 2) {
                            com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                            boolean z = x0Var.f18384b;
                            wVar4.f4145u0 = z;
                            try {
                                wVar4.f4123i.k("File_search_including_hide_file", Boolean.valueOf(z));
                            } catch (Exception unused3) {
                            }
                            wVar4.m();
                            break;
                        } else if (i122 == 3) {
                            com.yunpan.appmanage.util.w wVar5 = com.yunpan.appmanage.util.v.f4106a;
                            boolean z4 = x0Var.f18384b;
                            wVar5.f4147v0 = z4;
                            try {
                                wVar5.f4123i.k("File_search_including_android_data", Boolean.valueOf(z4));
                            } catch (Exception unused4) {
                            }
                            wVar5.m();
                            break;
                        }
                        break;
                    case 1:
                        rb rbVar2 = this.f7586b;
                        rbVar2.getClass();
                        ArrayList arrayList = new ArrayList();
                        for (int i13 = 0; i13 < rbVar2.f7702i.b(); i13++) {
                            x9.w3 w3Var = (x9.w3) rbVar2.f7702i.t(i13);
                            if (w3Var.f18372i) {
                                arrayList.add(w3Var);
                            }
                        }
                        if (arrayList.isEmpty()) {
                            com.yunpan.appmanage.util.a0.y("请选择要搜索的分区");
                            break;
                        } else {
                            rbVar2.dismiss();
                            String str = (String) rbVar2.f7704k.t(i122);
                            ua.q8 q8Var = rbVar2.f7700g.f15641b;
                            q8Var.getClass();
                            if (str.endsWith("关键字")) {
                                new o1(q8Var.f4530f, q8Var.f4529e, new ua.g6(q8Var, 6, arrayList)).show();
                                break;
                            } else {
                                q8Var.A(false, str, arrayList);
                                break;
                            }
                        }
                    default:
                        rb rbVar3 = this.f7586b;
                        rbVar3.getClass();
                        s1.g.Y(view);
                        x9.w3 w3Var2 = (x9.w3) rbVar3.f7702i.t(i122);
                        w3Var2.f18372i = !w3Var2.f18372i;
                        rbVar3.f7702i.D(i122, w3Var2);
                        if (w3Var2.f18364a.equals("U盘")) {
                            com.yunpan.appmanage.util.w wVar6 = com.yunpan.appmanage.util.v.f4106a;
                            boolean z10 = w3Var2.f18372i;
                            wVar6.f4151x0 = z10;
                            try {
                                wVar6.f4123i.k("mFile_search_usb", Boolean.valueOf(z10));
                            } catch (Exception unused5) {
                            }
                            wVar6.m();
                            break;
                        }
                        break;
                }
            }
        };
        this.f7703j.setOnInBorderKeyEventListener(new g2.c(25));
        this.f7703j.setOnItemListener(new qb());
    }
}
