package u;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class d extends ContextWrapper {

    /* renamed from: f, reason: collision with root package name */
    public static Configuration f15105f;

    /* renamed from: a, reason: collision with root package name */
    public int f15106a;

    /* renamed from: b, reason: collision with root package name */
    public Resources.Theme f15107b;

    /* renamed from: c, reason: collision with root package name */
    public LayoutInflater f15108c;

    /* renamed from: d, reason: collision with root package name */
    public Configuration f15109d;

    /* renamed from: e, reason: collision with root package name */
    public Resources f15110e;

    public d(Context context, int i10) {
        super(context);
        this.f15106a = i10;
    }

    public final void a(Configuration configuration) {
        if (this.f15110e != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.f15109d != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.f15109d = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public final void b() {
        if (this.f15107b == null) {
            this.f15107b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f15107b.setTo(theme);
            }
        }
        this.f15107b.applyStyle(this.f15106a, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AssetManager getAssets() {
        return getResources().getAssets();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
    @Override // android.content.ContextWrapper, android.content.Context
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Resources getResources() {
        if (this.f15110e == null) {
            Configuration configuration = this.f15109d;
            if (configuration == null) {
                this.f15110e = super.getResources();
            } else {
                if (Build.VERSION.SDK_INT >= 26) {
                    if (f15105f == null) {
                        Configuration configuration2 = new Configuration();
                        configuration2.fontScale = 0.0f;
                        f15105f = configuration2;
                    }
                    if (configuration.equals(f15105f)) {
                    }
                }
                this.f15110e = c.a(this, this.f15109d).getResources();
            }
        }
        return this.f15110e;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f15108c == null) {
            this.f15108c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f15108c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources.Theme getTheme() {
        Resources.Theme theme = this.f15107b;
        if (theme != null) {
            return theme;
        }
        if (this.f15106a == 0) {
            this.f15106a = R.style.Theme_AppCompat_Light;
        }
        b();
        return this.f15107b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i10) {
        if (this.f15106a != i10) {
            this.f15106a = i10;
            b();
        }
    }

    public d(Context context, Resources.Theme theme) {
        super(context);
        this.f15107b = theme;
    }
}
