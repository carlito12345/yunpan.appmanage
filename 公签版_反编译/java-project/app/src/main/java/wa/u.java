package wa;

import com.hsae.autosdk.core.NoConst;
import com.yunpan.appmanage.base.AppStart;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    public File f17729a;

    /* renamed from: d, reason: collision with root package name */
    public AppStart f17735d;

    /* renamed from: b, reason: collision with root package name */
    public z7.s f17731b = null;

    /* renamed from: c, reason: collision with root package name */
    public final SimpleDateFormat f17733c = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    /* renamed from: e, reason: collision with root package name */
    public boolean f17737e = false;

    /* renamed from: f, reason: collision with root package name */
    public boolean f17739f = false;

    /* renamed from: g, reason: collision with root package name */
    public long f17741g = 0;

    /* renamed from: h, reason: collision with root package name */
    public boolean f17743h = false;

    /* renamed from: i, reason: collision with root package name */
    public boolean f17744i = false;

    /* renamed from: j, reason: collision with root package name */
    public boolean f17745j = true;

    /* renamed from: k, reason: collision with root package name */
    public boolean f17746k = true;
    public long l = 0;

    /* renamed from: m, reason: collision with root package name */
    public int f17747m = 50;

    /* renamed from: n, reason: collision with root package name */
    public int f17748n = 2;

    /* renamed from: o, reason: collision with root package name */
    public int f17749o = 1;

    /* renamed from: p, reason: collision with root package name */
    public long f17750p = 0;

    /* renamed from: q, reason: collision with root package name */
    public int f17751q = NoConst.RECORDING_TIME_INTERVAL;
    public int r = NoConst.RECORDING_TIME_INTERVAL;

    /* renamed from: s, reason: collision with root package name */
    public boolean f17752s = false;

    /* renamed from: t, reason: collision with root package name */
    public boolean f17753t = false;

    /* renamed from: u, reason: collision with root package name */
    public boolean f17754u = false;

    /* renamed from: v, reason: collision with root package name */
    public boolean f17755v = false;

    /* renamed from: w, reason: collision with root package name */
    public final HashSet f17756w = new HashSet();

    /* renamed from: x, reason: collision with root package name */
    public Set f17757x = new HashSet();

    /* renamed from: y, reason: collision with root package name */
    public Set f17758y = new HashSet();
    public int z = 40;
    public int A = 40;
    public boolean B = false;
    public boolean C = false;
    public boolean D = false;
    public boolean E = false;
    public boolean F = false;
    public boolean G = false;
    public boolean H = false;
    public boolean I = false;
    public boolean J = true;
    public boolean K = false;
    public int L = 4;
    public z7.o M = new z7.o();
    public String N = "";
    public String O = "";
    public boolean P = true;
    public boolean Q = true;
    public boolean R = true;
    public boolean S = false;
    public boolean T = false;
    public int U = 1;
    public boolean V = false;
    public boolean W = true;
    public String X = "";
    public boolean Y = false;
    public String Z = "";

    /* renamed from: a0, reason: collision with root package name */
    public String f17730a0 = "";

    /* renamed from: b0, reason: collision with root package name */
    public boolean f17732b0 = false;

    /* renamed from: c0, reason: collision with root package name */
    public boolean f17734c0 = false;

    /* renamed from: d0, reason: collision with root package name */
    public boolean f17736d0 = false;

    /* renamed from: e0, reason: collision with root package name */
    public boolean f17738e0 = true;

    /* renamed from: f0, reason: collision with root package name */
    public boolean f17740f0 = true;

    /* renamed from: g0, reason: collision with root package name */
    public long f17742g0 = 0;

    public static u a() {
        return t.f17728a;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:109:0x0083
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    public final void b(com.yunpan.appmanage.base.AppStart r6) {
        /*
            Method dump skipped, instructions count: 987
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: wa.u.b(com.yunpan.appmanage.base.AppStart):void");
    }

    public final void c() {
        try {
            if (this.f17742g0 != this.f17729a.lastModified()) {
                t.f17728a.b(this.f17735d);
            }
        } catch (Exception unused) {
        }
    }

    public final void d(long j10) {
        try {
            this.l = j10;
            this.f17731b.l("AppCloseTime", Long.valueOf(j10));
        } catch (Exception unused) {
        }
        i();
    }

    public final void e(String str) {
        try {
            this.N = str;
            this.f17731b.m("AutoRotationHorizontal", str);
        } catch (Exception unused) {
        }
        i();
    }

    public final void f(String str) {
        try {
            this.O = str;
            this.f17731b.m("AutoRotationVertical", str);
        } catch (Exception unused) {
        }
        i();
    }

    public final void g(long j10) {
        if (this.f17753t) {
            w.c("保存执行任务时间");
        }
        try {
            this.f17741g = j10;
            this.f17731b.l("BootStartTaskRunTime", Long.valueOf(j10));
        } catch (Exception unused) {
        }
        i();
    }

    public final void h(boolean z) {
        try {
            this.f17743h = z;
            this.f17731b.k("BootStartTaskSpecialDevice", Boolean.valueOf(z));
        } catch (Exception unused) {
        }
        i();
    }

    public final void i() {
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(this.f17729a));
            bufferedWriter.write(this.f17731b.toString());
            bufferedWriter.close();
        } catch (IOException e7) {
            e7.printStackTrace();
        }
    }

    public final void j() {
        try {
            StringBuilder sb2 = new StringBuilder();
            Iterator it = this.f17756w.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (!str.isEmpty()) {
                    sb2.append(str);
                    sb2.append(",");
                }
            }
            if (sb2.length() > 0) {
                sb2.deleteCharAt(sb2.length() - 1);
            }
            this.f17731b.m("MemoryCleanKillFree", sb2.toString());
        } catch (Exception unused) {
        }
        i();
        ta.m.e(this.f17735d);
    }
}
