package ba;

import com.yunpan.appmanage.bean.WpPathBean;
import java.text.DecimalFormat;
import java.util.Date;
import okhttp3.Request;
import x9.n5;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2680a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n5 f2681b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WpPathBean f2682c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ WpPathBean f2683d;

    public /* synthetic */ d(WpPathBean wpPathBean, WpPathBean wpPathBean2, n5 n5Var) {
        this.f2680a = 9;
        this.f2682c = wpPathBean;
        this.f2683d = wpPathBean2;
        this.f2681b = n5Var;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:89:0x019a
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [com.hierynomus.smbj.connection.Connection] */
    /* JADX WARN: Type inference failed for: r11v5, types: [com.hierynomus.smbj.connection.Connection] */
    /* JADX WARN: Type inference failed for: r11v7, types: [com.hierynomus.smbj.connection.Connection] */
    /* JADX WARN: Type inference failed for: r4v0, types: [x9.n5] */
    /* JADX WARN: Type inference failed for: r4v13, types: [com.hierynomus.smbj.session.Session] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [com.hierynomus.smbj.session.Session] */
    /* JADX WARN: Type inference failed for: r4v7, types: [com.hierynomus.smbj.session.Session] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    private final void a(mc.b r23) {
        /*
            Method dump skipped, instructions count: 500
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ba.d.a(mc.b):void");
    }

    private final void b(mc.b bVar) {
        n5 n5Var = this.f2681b;
        WpPathBean wpPathBean = this.f2682c;
        WpPathBean wpPathBean2 = this.f2683d;
        String strZ = "";
        try {
            r9.a aVarF = qa.g.f(n5Var, 60L, 16L, 16L);
            String str = wpPathBean.path + wpPathBean2.name;
            if (wpPathBean2.is_dir) {
                str = str + "/";
            }
            System.out.getClass();
            aVarF.a(wpPathBean2.path, str);
        } catch (Exception e7) {
            strZ = g.b.z(e7, new StringBuilder(""));
            if (strZ.contains("Internal Server Error")) {
                strZ = "WebDAV暂时不支持文件夹复制";
            } else if (strZ.isEmpty()) {
                strZ = "复制失败";
            }
        }
        if (strZ.isEmpty()) {
            bVar.b();
        } else {
            android.support.v4.media.session.a.B(strZ, bVar);
        }
    }

    private final void c(mc.b bVar) {
        WpPathBean wpPathBean = this.f2682c;
        WpPathBean wpPathBean2 = this.f2683d;
        String strZ = "";
        try {
            p000if.a.M0(qa.g.f(this.f2681b, 20L, 16L, 16L).f13722a.newCall(new Request.Builder().url(r9.a.f(wpPathBean.path + wpPathBean2.name)).method("MKCOL", null).build()).execute());
            wpPathBean2.path = wpPathBean.path + wpPathBean2.name + "/";
            wpPathBean2.is_dir = true;
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            wpPathBean2.time_txt = com.yunpan.appmanage.util.j.f4033a.f4038b0.format(new Date());
        } catch (Exception e7) {
            strZ = g.b.z(e7, new StringBuilder(""));
            if (strZ.isEmpty()) {
                strZ = "新建失败";
            }
        }
        if (!strZ.isEmpty() || wpPathBean2.path.isEmpty()) {
            android.support.v4.media.session.a.B(strZ, bVar);
        } else {
            bVar.b();
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:313:0x0355
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /* JADX WARN: Removed duplicated region for block: B:291:0x05fd  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:260:0x0553 -> B:352:0x0555). Please report as a decompilation issue!!! */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g(mc.b r30) {
        /*
            Method dump skipped, instructions count: 1600
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ba.d.g(mc.b):void");
    }

    public /* synthetic */ d(n5 n5Var, WpPathBean wpPathBean, WpPathBean wpPathBean2, int i10) {
        this.f2680a = i10;
        this.f2681b = n5Var;
        this.f2682c = wpPathBean;
        this.f2683d = wpPathBean2;
    }
}
