package x9;

import android.content.Context;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.WpPathBean;
import ha.ze;
import java.io.File;
import java.text.DecimalFormat;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class y5 extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final com.yunpan.appmanage.carsdk.u f18402h;

    /* renamed from: i, reason: collision with root package name */
    public final Context f18403i;

    public y5(Context context, com.yunpan.appmanage.carsdk.u uVar) {
        this.f18403i = context;
        this.f18402h = uVar;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_file_wl, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        final int i11 = 1;
        final int i12 = 0;
        h6.a aVar = (h6.a) viewHolder;
        final WpPathBean wpPathBean = (WpPathBean) obj;
        final ImageView imageView = (ImageView) aVar.a(R.id.v_file_ico);
        imageView.setTag(wpPathBean.path);
        imageView.setImageDrawable(null);
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(this.f18403i);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        aVar.c(R.id.v_file_name, wpPathBean.name);
        aVar.c(R.id.v_file_attribute, wpPathBean.time_txt + "  " + wpPathBean.size_txt);
        ImageView imageView2 = (ImageView) aVar.a(R.id.v_select);
        if (wpPathBean.isSelect) {
            imageView2.setVisibility(0);
            imageView2.setImageResource(R.drawable.check2);
        } else {
            imageView2.setVisibility(8);
        }
        if (wpPathBean.is_dir) {
            imageView.setImageResource(R.drawable.folder1);
            return;
        }
        if (p000if.a.X(wpPathBean.name)) {
            imageView.setImageResource(R.drawable.tp_apk1);
        } else if (p000if.a.c0(wpPathBean.name)) {
            imageView.setImageResource(R.drawable.tp);
        } else if (p000if.a.j0(wpPathBean.name)) {
            imageView.setImageResource(R.drawable.tp_video1);
        } else if (p000if.a.f0(wpPathBean.name)) {
            imageView.setImageResource(R.drawable.tp_music1);
        } else if (za.g.g(wpPathBean.name)) {
            imageView.setImageResource(R.drawable.tp_rar);
        } else {
            imageView.setImageResource(R.drawable.tp_file5);
        }
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        int i13 = kVar.A.f18290a;
        String strI = "";
        if (i13 == 1) {
            if (p000if.a.X(wpPathBean.name)) {
                try {
                    strI = wpPathBean.jsonObject.o("ico").i();
                } catch (Exception unused) {
                }
                if (strI.isEmpty()) {
                    return;
                }
                com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                if (kVar2.Y.isEmpty()) {
                    return;
                }
                String strA = g.b.A("https://image.woozooo.com/image/ico/", strI, "?x-oss-process=image/auto-orient,1/resize,m_fill,w_100,h_100/format,png");
                String str = kVar2.Y + kVar2.A.f18296g + "/" + wpPathBean.path;
                qf.c.V(strA, str).b(new ze((KeyEvent.Callback) imageView, (Object) wpPathBean, (Object) str, 9));
                return;
            }
            return;
        }
        if (i13 == 2) {
            try {
                strI = wpPathBean.jsonObject.o("DownloadUrl").i();
            } catch (Exception unused2) {
            }
            if (strI.isEmpty()) {
                return;
            }
            com.yunpan.appmanage.util.k kVar3 = com.yunpan.appmanage.util.j.f4033a;
            if (kVar3.Y.isEmpty()) {
                return;
            }
            String str2 = kVar3.Y + kVar3.A.f18296g + "/" + wpPathBean.path;
            qf.c.V(strI, str2).b(new x5(this, imageView, wpPathBean, str2, 0));
            return;
        }
        if (i13 == 20) {
            try {
                strI = wpPathBean.jsonObject.o("fileIcon").i();
            } catch (Exception unused3) {
            }
            if (strI.isEmpty()) {
                return;
            }
            com.yunpan.appmanage.util.k kVar4 = com.yunpan.appmanage.util.j.f4033a;
            if (kVar4.Y.isEmpty()) {
                return;
            }
            String str3 = kVar4.Y + kVar4.A.f18296g + "/" + wpPathBean.path;
            qf.c.V(strI, str3).b(new x5(this, imageView, wpPathBean, str3, 1));
            return;
        }
        if (i13 != 21) {
            if (kVar.Y.isEmpty()) {
                return;
            }
            boolean zC0 = p000if.a.c0(wpPathBean.name);
            ExecutorService executorService = kVar.f4048g0;
            if (zC0) {
                if (wpPathBean.size_long > 10240000) {
                    return;
                }
                executorService.submit(new Runnable(this) { // from class: x9.v5

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ y5 f18358b;

                    {
                        this.f18358b = this;
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Removed duplicated region for block: B:40:0x00e4  */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final void run() throws Exception {
                        final int i14 = 1;
                        boolean zA = false;
                        Object[] objArr = 0;
                        final ImageView imageView3 = imageView;
                        WpPathBean wpPathBean2 = wpPathBean;
                        final y5 y5Var = this.f18358b;
                        int i15 = i12;
                        y5Var.getClass();
                        switch (i15) {
                            case 0:
                                String strP0 = p000if.a.p0(wpPathBean2.path);
                                if (!strP0.isEmpty()) {
                                    StringBuilder sb2 = new StringBuilder();
                                    DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.k kVar5 = com.yunpan.appmanage.util.j.f4033a;
                                    sb2.append(kVar5.Y);
                                    final String strU = android.support.v4.media.session.a.u(sb2, kVar5.A.f18296g, "/", strP0);
                                    boolean z = com.yunpan.appmanage.util.a0.g(strU) && new File(strU).length() == wpPathBean2.size_long;
                                    if (z) {
                                        zA = z;
                                    } else {
                                        n5 n5Var = kVar5.A;
                                        int i16 = n5Var.f18290a;
                                        if (i16 == 3) {
                                            zA = qa.f.a(wpPathBean2, strU, n5Var);
                                        } else if (i16 == 4) {
                                            zA = com.bumptech.glide.c.a(wpPathBean2, strU, n5Var);
                                        } else if (i16 == 5) {
                                            zA = com.bumptech.glide.d.d(wpPathBean2, strU, n5Var);
                                        } else if (i16 == 6) {
                                            p000if.a.f(n5Var);
                                        } else if (i16 == 7) {
                                            zA = qa.g.a(wpPathBean2, strU, n5Var);
                                        }
                                    }
                                    if (zA && imageView3.getTag().equals(wpPathBean2.path)) {
                                        y5Var.f18402h.post(new Runnable() { // from class: x9.w5
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                ImageView imageView4 = imageView3;
                                                String str4 = strU;
                                                y5 y5Var2 = y5Var;
                                                switch (i14) {
                                                    case 0:
                                                        com.bumptech.glide.m mVarU = com.bumptech.glide.b.f(y5Var2.f18403i).u(str4);
                                                        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                                        int i17 = com.yunpan.appmanage.util.j.f4033a.R;
                                                        ((com.bumptech.glide.m) ((com.bumptech.glide.m) mVarU.o(i17, i17)).g(R.drawable.tp_video1)).D(imageView4);
                                                        break;
                                                    default:
                                                        com.bumptech.glide.m mVarU2 = com.bumptech.glide.b.f(y5Var2.f18403i).u(str4);
                                                        DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                                                        int i18 = com.yunpan.appmanage.util.j.f4033a.R;
                                                        ((com.bumptech.glide.m) ((com.bumptech.glide.m) mVarU2.o(i18, i18)).g(R.drawable.tp)).D(imageView4);
                                                        break;
                                                }
                                            }
                                        });
                                        break;
                                    }
                                }
                                break;
                            default:
                                String strP02 = p000if.a.p0(wpPathBean2.path);
                                if (!strP02.isEmpty()) {
                                    StringBuilder sb3 = new StringBuilder();
                                    DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.k kVar6 = com.yunpan.appmanage.util.j.f4033a;
                                    sb3.append(kVar6.Y);
                                    final String strU2 = android.support.v4.media.session.a.u(sb3, kVar6.A.f18296g, "/", strP02);
                                    System.out.getClass();
                                    String str4 = kVar6.A.f18296g;
                                    String str5 = "http://127.0.0.1:" + kVar6.f4054j0 + "/videoimage/" + wpPathBean2.path;
                                    boolean zG = com.yunpan.appmanage.util.a0.g(strU2);
                                    if (!zG) {
                                        zG = q4.a.z(str5, strU2);
                                    }
                                    if (zG && imageView3.getTag().equals(wpPathBean2.path)) {
                                        final Object[] objArr2 = objArr == true ? 1 : 0;
                                        y5Var.f18402h.post(new Runnable() { // from class: x9.w5
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                ImageView imageView4 = imageView3;
                                                String str42 = strU2;
                                                y5 y5Var2 = y5Var;
                                                switch (objArr2) {
                                                    case 0:
                                                        com.bumptech.glide.m mVarU = com.bumptech.glide.b.f(y5Var2.f18403i).u(str42);
                                                        DecimalFormat decimalFormat32 = com.yunpan.appmanage.util.k.f4034u0;
                                                        int i17 = com.yunpan.appmanage.util.j.f4033a.R;
                                                        ((com.bumptech.glide.m) ((com.bumptech.glide.m) mVarU.o(i17, i17)).g(R.drawable.tp_video1)).D(imageView4);
                                                        break;
                                                    default:
                                                        com.bumptech.glide.m mVarU2 = com.bumptech.glide.b.f(y5Var2.f18403i).u(str42);
                                                        DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                                                        int i18 = com.yunpan.appmanage.util.j.f4033a.R;
                                                        ((com.bumptech.glide.m) ((com.bumptech.glide.m) mVarU2.o(i18, i18)).g(R.drawable.tp)).D(imageView4);
                                                        break;
                                                }
                                            }
                                        });
                                        break;
                                    }
                                }
                                break;
                        }
                    }
                });
                return;
            } else {
                if (p000if.a.j0(wpPathBean.name)) {
                    executorService.submit(new Runnable(this) { // from class: x9.v5

                        /* renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ y5 f18358b;

                        {
                            this.f18358b = this;
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Removed duplicated region for block: B:40:0x00e4  */
                        @Override // java.lang.Runnable
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final void run() throws Exception {
                            final int i14 = 1;
                            boolean zA = false;
                            Object[] objArr = 0;
                            final ImageView imageView3 = imageView;
                            WpPathBean wpPathBean2 = wpPathBean;
                            final y5 y5Var = this.f18358b;
                            int i15 = i11;
                            y5Var.getClass();
                            switch (i15) {
                                case 0:
                                    String strP0 = p000if.a.p0(wpPathBean2.path);
                                    if (!strP0.isEmpty()) {
                                        StringBuilder sb2 = new StringBuilder();
                                        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                        com.yunpan.appmanage.util.k kVar5 = com.yunpan.appmanage.util.j.f4033a;
                                        sb2.append(kVar5.Y);
                                        final String strU = android.support.v4.media.session.a.u(sb2, kVar5.A.f18296g, "/", strP0);
                                        boolean z = com.yunpan.appmanage.util.a0.g(strU) && new File(strU).length() == wpPathBean2.size_long;
                                        if (z) {
                                            zA = z;
                                        } else {
                                            n5 n5Var = kVar5.A;
                                            int i16 = n5Var.f18290a;
                                            if (i16 == 3) {
                                                zA = qa.f.a(wpPathBean2, strU, n5Var);
                                            } else if (i16 == 4) {
                                                zA = com.bumptech.glide.c.a(wpPathBean2, strU, n5Var);
                                            } else if (i16 == 5) {
                                                zA = com.bumptech.glide.d.d(wpPathBean2, strU, n5Var);
                                            } else if (i16 == 6) {
                                                p000if.a.f(n5Var);
                                            } else if (i16 == 7) {
                                                zA = qa.g.a(wpPathBean2, strU, n5Var);
                                            }
                                        }
                                        if (zA && imageView3.getTag().equals(wpPathBean2.path)) {
                                            y5Var.f18402h.post(new Runnable() { // from class: x9.w5
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    ImageView imageView4 = imageView3;
                                                    String str42 = strU;
                                                    y5 y5Var2 = y5Var;
                                                    switch (i14) {
                                                        case 0:
                                                            com.bumptech.glide.m mVarU = com.bumptech.glide.b.f(y5Var2.f18403i).u(str42);
                                                            DecimalFormat decimalFormat32 = com.yunpan.appmanage.util.k.f4034u0;
                                                            int i17 = com.yunpan.appmanage.util.j.f4033a.R;
                                                            ((com.bumptech.glide.m) ((com.bumptech.glide.m) mVarU.o(i17, i17)).g(R.drawable.tp_video1)).D(imageView4);
                                                            break;
                                                        default:
                                                            com.bumptech.glide.m mVarU2 = com.bumptech.glide.b.f(y5Var2.f18403i).u(str42);
                                                            DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                                                            int i18 = com.yunpan.appmanage.util.j.f4033a.R;
                                                            ((com.bumptech.glide.m) ((com.bumptech.glide.m) mVarU2.o(i18, i18)).g(R.drawable.tp)).D(imageView4);
                                                            break;
                                                    }
                                                }
                                            });
                                            break;
                                        }
                                    }
                                    break;
                                default:
                                    String strP02 = p000if.a.p0(wpPathBean2.path);
                                    if (!strP02.isEmpty()) {
                                        StringBuilder sb3 = new StringBuilder();
                                        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                        com.yunpan.appmanage.util.k kVar6 = com.yunpan.appmanage.util.j.f4033a;
                                        sb3.append(kVar6.Y);
                                        final String strU2 = android.support.v4.media.session.a.u(sb3, kVar6.A.f18296g, "/", strP02);
                                        System.out.getClass();
                                        String str4 = kVar6.A.f18296g;
                                        String str5 = "http://127.0.0.1:" + kVar6.f4054j0 + "/videoimage/" + wpPathBean2.path;
                                        boolean zG = com.yunpan.appmanage.util.a0.g(strU2);
                                        if (!zG) {
                                            zG = q4.a.z(str5, strU2);
                                        }
                                        if (zG && imageView3.getTag().equals(wpPathBean2.path)) {
                                            final int objArr2 = objArr == true ? 1 : 0;
                                            y5Var.f18402h.post(new Runnable() { // from class: x9.w5
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    ImageView imageView4 = imageView3;
                                                    String str42 = strU2;
                                                    y5 y5Var2 = y5Var;
                                                    switch (objArr2) {
                                                        case 0:
                                                            com.bumptech.glide.m mVarU = com.bumptech.glide.b.f(y5Var2.f18403i).u(str42);
                                                            DecimalFormat decimalFormat32 = com.yunpan.appmanage.util.k.f4034u0;
                                                            int i17 = com.yunpan.appmanage.util.j.f4033a.R;
                                                            ((com.bumptech.glide.m) ((com.bumptech.glide.m) mVarU.o(i17, i17)).g(R.drawable.tp_video1)).D(imageView4);
                                                            break;
                                                        default:
                                                            com.bumptech.glide.m mVarU2 = com.bumptech.glide.b.f(y5Var2.f18403i).u(str42);
                                                            DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                                                            int i18 = com.yunpan.appmanage.util.j.f4033a.R;
                                                            ((com.bumptech.glide.m) ((com.bumptech.glide.m) mVarU2.o(i18, i18)).g(R.drawable.tp)).D(imageView4);
                                                            break;
                                                    }
                                                }
                                            });
                                            break;
                                        }
                                    }
                                    break;
                            }
                        }
                    });
                    return;
                }
                return;
            }
        }
        try {
            strI = wpPathBean.jsonObject.o("thumbnail").i();
        } catch (Exception unused4) {
        }
        if (strI.isEmpty()) {
            return;
        }
        com.yunpan.appmanage.util.k kVar5 = com.yunpan.appmanage.util.j.f4033a;
        if (kVar5.Y.isEmpty()) {
            return;
        }
        String str4 = kVar5.Y + kVar5.A.f18296g + "/" + wpPathBean.path;
        qf.c.V(strI, str4).b(new x5(this, imageView, wpPathBean, str4, 2));
    }
}
