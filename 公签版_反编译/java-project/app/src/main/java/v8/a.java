package v8;

import android.R;
import android.accessibilityservice.AccessibilityService;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.service.AccService;
import ha.Cif;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f16654a;

    /* renamed from: b, reason: collision with root package name */
    public ContextWrapper f16655b;

    /* renamed from: c, reason: collision with root package name */
    public h f16656c;

    /* renamed from: d, reason: collision with root package name */
    public WindowManager f16657d;

    /* renamed from: e, reason: collision with root package name */
    public WindowManager.LayoutParams f16658e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f16659f;

    /* renamed from: g, reason: collision with root package name */
    public int f16660g;

    /* renamed from: h, reason: collision with root package name */
    public String f16661h;

    /* renamed from: i, reason: collision with root package name */
    public g f16662i;

    /* renamed from: j, reason: collision with root package name */
    public w8.b f16663j;

    /* renamed from: k, reason: collision with root package name */
    public d f16664k;
    public final Object l;

    /* renamed from: m, reason: collision with root package name */
    public final Runnable f16665m;

    /* renamed from: n, reason: collision with root package name */
    public final Runnable f16666n;

    /* renamed from: o, reason: collision with root package name */
    public final Runnable f16667o;

    /* renamed from: p, reason: collision with root package name */
    public final Runnable f16668p;

    public a(Activity activity) {
        WeakReference weakReference = new WeakReference(this);
        this.f16654a = weakReference;
        this.l = new Object();
        byte b10 = 0;
        this.f16665m = new Cif(this, 1, b10);
        this.f16666n = new Cif(this, 2, b10);
        this.f16667o = new Cif(this, 3, b10);
        this.f16668p = new Cif(this, 4, b10);
        f(activity);
        View decorView = activity.getWindow().getDecorView();
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        if ((attributes.flags & 1024) != 0 || (decorView.getSystemUiVisibility() & 4) != 0) {
            a(1024);
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            l(attributes.layoutInDisplayCutoutMode);
        }
        int i11 = attributes.systemUiVisibility;
        if (i11 != 0) {
            this.f16658e.systemUiVisibility = i11;
            e();
        }
        if (decorView.getSystemUiVisibility() != 0) {
            this.f16656c.setSystemUiVisibility(decorView.getSystemUiVisibility());
        }
        g gVar = new g(weakReference, activity);
        this.f16662i = gVar;
        if (i10 >= 29) {
            activity.registerActivityLifecycleCallbacks(gVar);
        } else {
            activity.getApplication().registerActivityLifecycleCallbacks(gVar);
        }
    }

    public static a v(AccService accService) {
        return new a(accService);
    }

    public final void a(int i10) {
        WindowManager.LayoutParams layoutParams = this.f16658e;
        layoutParams.flags = i10 | layoutParams.flags;
        e();
    }

    public final void b() {
        if (this.f16659f) {
            try {
                try {
                    this.f16657d.removeViewImmediate(this.f16656c);
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
            } finally {
                this.f16659f = false;
            }
        }
    }

    public final void c(long j10) {
        if (this.f16659f) {
            Handler handler = i.f16679a;
            Runnable runnable = this.f16666n;
            handler.removeCallbacks(runnable);
            i(runnable, j10);
        }
    }

    public final void d() {
        if (this.f16659f) {
            return;
        }
        Handler handler = i.f16679a;
        Runnable runnable = this.f16665m;
        handler.removeCallbacks(runnable);
        i(runnable, 0L);
    }

    public final void e() {
        if (this.f16659f) {
            Handler handler = i.f16679a;
            Runnable runnable = this.f16667o;
            handler.removeCallbacks(runnable);
            i(runnable, 0L);
        }
    }

    public final void f(ContextWrapper contextWrapper) {
        this.f16655b = contextWrapper;
        this.f16656c = new h(contextWrapper);
        this.f16657d = (WindowManager) contextWrapper.getSystemService("window");
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f16658e = layoutParams;
        layoutParams.height = -2;
        layoutParams.width = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = R.style.Animation.Toast;
        layoutParams.packageName = contextWrapper.getPackageName();
        this.f16658e.flags = 40;
        WeakReference weakReference = this.f16654a;
        ArrayList arrayList = b.f16669a;
        synchronized (b.class) {
            if (((a) weakReference.get()) == null) {
                return;
            }
            b.f16669a.add(weakReference);
        }
    }

    public final void g() {
        i.f16679a.removeCallbacksAndMessages(this.l);
        if (this.f16659f) {
            b();
        }
        d dVar = this.f16664k;
        if (dVar != null) {
            ContextWrapper contextWrapper = this.f16655b;
            if (contextWrapper != null) {
                Context applicationContext = contextWrapper.getApplicationContext();
                if (applicationContext != null) {
                    applicationContext.unregisterComponentCallbacks(dVar);
                }
                WeakReference weakReference = dVar.f16671b;
                if (weakReference != null) {
                    weakReference.clear();
                }
                dVar.f16671b = null;
            }
            this.f16664k = null;
        }
        g gVar = this.f16662i;
        if (gVar != null) {
            Activity activity = gVar.f16675a;
            if (activity != null) {
                if (Build.VERSION.SDK_INT >= 29) {
                    activity.unregisterActivityLifecycleCallbacks(gVar);
                } else {
                    activity.getApplication().unregisterActivityLifecycleCallbacks(gVar);
                }
            }
            this.f16662i = null;
        }
        w8.b bVar = this.f16663j;
        if (bVar != null) {
            bVar.f17632a = null;
            h hVar = bVar.f17633b;
            if (hVar != null) {
                hVar.setOnTouchListener(null);
                bVar.f17633b = null;
            }
            this.f16663j = null;
        }
        this.f16655b = null;
        this.f16656c = null;
        WeakReference weakReference2 = this.f16654a;
        ArrayList arrayList = b.f16669a;
        synchronized (b.class) {
            weakReference2.clear();
            b.f16669a.remove(weakReference2);
        }
    }

    public final void h(int i10) {
        WindowManager.LayoutParams layoutParams = this.f16658e;
        layoutParams.flags = (i10 ^ (-1)) & layoutParams.flags;
        e();
    }

    public final void i(Runnable runnable, long j10) {
        Handler handler = i.f16679a;
        if (j10 < 0) {
            j10 = 0;
        }
        i.f16679a.postAtTime(runnable, this.l, SystemClock.uptimeMillis() + j10);
    }

    public final void j(int i10) {
        ContextWrapper contextWrapper = this.f16655b;
        if (contextWrapper == null || this.f16656c == null) {
            return;
        }
        k(LayoutInflater.from(contextWrapper).inflate(i10, (ViewGroup) this.f16656c, false));
    }

    public final void k(View view) {
        int i10;
        h hVar = this.f16656c;
        if (hVar == null) {
            return;
        }
        if (hVar.getChildCount() > 0) {
            this.f16656c.removeAllViews();
        }
        this.f16656c.addView(view);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.topMargin = 0;
            marginLayoutParams.bottomMargin = 0;
            marginLayoutParams.leftMargin = 0;
            marginLayoutParams.rightMargin = 0;
        }
        WindowManager.LayoutParams layoutParams2 = this.f16658e;
        if (layoutParams2.gravity == 0) {
            if (layoutParams instanceof FrameLayout.LayoutParams) {
                int i11 = ((FrameLayout.LayoutParams) layoutParams).gravity;
                if (i11 != -1) {
                    layoutParams2.gravity = i11;
                }
            } else if ((layoutParams instanceof LinearLayout.LayoutParams) && (i10 = ((LinearLayout.LayoutParams) layoutParams).gravity) != -1) {
                layoutParams2.gravity = i10;
            }
            if (layoutParams2.gravity == 0) {
                layoutParams2.gravity = 17;
            }
        }
        if (layoutParams != null) {
            int i12 = layoutParams2.width;
            if (i12 == -2 && layoutParams2.height == -2) {
                layoutParams2.width = layoutParams.width;
                layoutParams2.height = layoutParams.height;
            } else {
                layoutParams.width = i12;
                layoutParams.height = layoutParams2.height;
            }
        }
        e();
    }

    public final void l(int i10) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f16658e.layoutInDisplayCutoutMode = i10;
            e();
        }
    }

    public final void m(int i10, c cVar) {
        h hVar = this.f16656c;
        View viewFindViewById = hVar == null ? null : hVar.findViewById(i10);
        if (viewFindViewById == null) {
            return;
        }
        h(16);
        viewFindViewById.setClickable(true);
        viewFindViewById.setOnClickListener(new e(this, cVar));
    }

    public final void n(int i10) {
        this.f16658e.screenOrientation = i10;
        e();
    }

    public final void o(int i10, String str) {
        if (str == null) {
            str = "";
        }
        h hVar = this.f16656c;
        TextView textView = (TextView) (hVar == null ? null : hVar.findViewById(i10));
        if (textView != null) {
            textView.setText(str);
        }
    }

    public final void p() {
        this.f16658e.windowAnimations = R.style.Animation.Translucent;
        e();
    }

    public final void q(w8.b bVar) {
        this.f16663j = bVar;
        h(16);
        h(512);
        if (this.f16659f) {
            u();
            bVar.f17632a = this;
            h hVar = this.f16656c;
            bVar.f17633b = hVar;
            if (hVar != null) {
                hVar.setOnTouchListener(bVar);
                bVar.g();
                bVar.f();
            }
        }
        ContextWrapper contextWrapper = this.f16655b;
        Resources resources = contextWrapper != null ? contextWrapper.getResources() : null;
        Configuration configuration = resources != null ? resources.getConfiguration() : null;
        if (configuration != null) {
            if (this.f16664k == null) {
                this.f16664k = new d(configuration.orientation);
            }
            d dVar = this.f16664k;
            ContextWrapper contextWrapper2 = this.f16655b;
            dVar.getClass();
            if (contextWrapper2 == null) {
                return;
            }
            Context applicationContext = contextWrapper2.getApplicationContext();
            if (applicationContext != null) {
                applicationContext.registerComponentCallbacks(dVar);
            }
            dVar.f16671b = new WeakReference(this);
        }
    }

    public final void r(int i10) {
        this.f16660g = i10;
        if (!this.f16659f || i10 == 0) {
            return;
        }
        c(i10);
    }

    public final void s(String str) {
        this.f16661h = str;
    }

    public final void t() {
        h hVar = this.f16656c;
        if (hVar == null) {
            return;
        }
        if (hVar.getChildCount() == 0) {
            throw new IllegalArgumentException("WindowParams and view cannot be empty");
        }
        if (this.f16659f) {
            u();
            return;
        }
        ContextWrapper contextWrapper = this.f16655b;
        if (contextWrapper instanceof Activity) {
            Activity activity = (Activity) contextWrapper;
            if (activity.isFinishing() || activity.isDestroyed()) {
                return;
            }
        }
        try {
            if (this.f16656c.getParent() != null) {
                this.f16657d.removeViewImmediate(this.f16656c);
            }
            this.f16657d.addView(this.f16656c, this.f16658e);
            this.f16659f = true;
            int i10 = this.f16660g;
            if (i10 != 0) {
                c(i10);
            }
            w8.b bVar = this.f16663j;
            if (bVar != null) {
                bVar.f17632a = this;
                h hVar2 = this.f16656c;
                bVar.f17633b = hVar2;
                if (hVar2 == null) {
                    return;
                }
                hVar2.setOnTouchListener(bVar);
                bVar.g();
                bVar.f();
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public final void u() {
        if (this.f16659f) {
            try {
                this.f16657d.updateViewLayout(this.f16656c, this.f16658e);
            } catch (IllegalArgumentException e7) {
                e7.printStackTrace();
            }
        }
    }

    public a(AppStart appStart) {
        this.f16654a = new WeakReference(this);
        this.l = new Object();
        byte b10 = 0;
        this.f16665m = new Cif(this, 1, b10);
        this.f16666n = new Cif(this, 2, b10);
        this.f16667o = new Cif(this, 3, b10);
        this.f16668p = new Cif(this, 4, b10);
        f(appStart);
        if (Build.VERSION.SDK_INT >= 26) {
            this.f16658e.type = 2038;
            e();
        } else {
            this.f16658e.type = 2003;
            e();
        }
    }

    public a(AccessibilityService accessibilityService) {
        this.f16654a = new WeakReference(this);
        this.l = new Object();
        byte b10 = 0;
        this.f16665m = new Cif(this, 1, b10);
        this.f16666n = new Cif(this, 2, b10);
        this.f16667o = new Cif(this, 3, b10);
        this.f16668p = new Cif(this, 4, b10);
        f(accessibilityService);
        if (Build.VERSION.SDK_INT >= 22) {
            this.f16658e.type = 2032;
            e();
        } else {
            this.f16658e.type = 2003;
            e();
        }
    }
}
