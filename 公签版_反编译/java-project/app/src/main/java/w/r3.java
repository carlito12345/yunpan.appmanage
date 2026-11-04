package w;

import android.content.Context;
import android.graphics.Rect;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import com.yunpan.appmanage.R;
import ha.v9;
import java.io.File;
import java.text.DecimalFormat;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class r3 {

    /* renamed from: a, reason: collision with root package name */
    public Object f17242a;

    /* renamed from: b, reason: collision with root package name */
    public Object f17243b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f17244c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f17245d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f17246e;

    /* renamed from: f, reason: collision with root package name */
    public Object f17247f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f17248g;

    public r3() {
        this.f17244c = Executors.newCachedThreadPool();
        this.f17245d = Executors.newFixedThreadPool(5);
        this.f17246e = new AtomicInteger(0);
        this.f17248g = new com.yunpan.appmanage.carsdk.u(this, Looper.getMainLooper(), 1);
    }

    public static boolean b(File file) {
        File[] fileArrListFiles;
        int length;
        try {
            fileArrListFiles = file.listFiles();
            length = fileArrListFiles.length;
        } catch (NullPointerException | SecurityException | Exception unused) {
        }
        if (length == 0) {
            file.delete();
            return true;
        }
        int i10 = 0;
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory() && b(file2)) {
                i10++;
            }
        }
        if (length == i10) {
            file.delete();
            return true;
        }
        return false;
    }

    public void a(long j10) {
        ((ja.b) this.f17247f).f9821g.incrementAndGet();
        if (j10 > 0) {
            ((ja.b) this.f17247f).f9823i.addAndGet(j10);
        }
        synchronized (((ja.b) this.f17247f)) {
            ((ja.b) this.f17247f).f9825k = v9.b(System.currentTimeMillis() - ((ja.b) this.f17247f).f9824j);
            ja.b bVar = (ja.b) this.f17247f;
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
            double d10 = bVar.f9823i.get();
            Double.isNaN(d10);
            double d11 = d10 * 100.0d;
            double d12 = ((ja.b) this.f17247f).f9822h.get();
            Double.isNaN(d12);
            bVar.f9819e = decimalFormat2.format(d11 / d12);
            ((ja.b) this.f17247f).f9818d = "均速:" + v9.a(0L, ((ja.b) this.f17247f).f9823i.get(), System.currentTimeMillis() - ((ja.b) this.f17247f).f9824j) + " MB/s";
        }
        ((com.yunpan.appmanage.carsdk.u) this.f17248g).sendEmptyMessage(301);
    }

    public r3(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f17245d = layoutParams;
        this.f17246e = new Rect();
        this.f17247f = new int[2];
        this.f17248g = new int[2];
        this.f17242a = context;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.abc_tooltip, (ViewGroup) null);
        this.f17243b = viewInflate;
        this.f17244c = (TextView) viewInflate.findViewById(R.id.message);
        layoutParams.setTitle(r3.class.getSimpleName());
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = R.style.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }

    public r3(k5.d dVar, k5.d dVar2, k5.d dVar3, k5.d dVar4, h5.n nVar, h5.n nVar2) {
        this.f17248g = b6.c.a(150, new h5.m(0, this));
        this.f17242a = dVar;
        this.f17243b = dVar2;
        this.f17244c = dVar3;
        this.f17245d = dVar4;
        this.f17246e = nVar;
        this.f17247f = nVar2;
    }
}
