package da;

import a9.o;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.View;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.util.v;
import java.util.Stack;
import me.jessyan.autosize.AutoSize;
import me.jessyan.autosize.AutoSizeCompat;
import me.jessyan.autosize.AutoSizeConfig;
import me.jessyan.autosize.internal.CustomAdapt;
import q.i;

/* loaded from: classes.dex */
public abstract class g extends i implements CustomAdapt {
    public g A;
    public final Handler B = new Handler(Looper.getMainLooper());

    @Override // q.i, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        if (Build.VERSION.SDK_INT >= 34) {
            context.getResources().getConfiguration().fontScale = 1.0f;
        }
    }

    @Override // q.i, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        if (Looper.myLooper() == Looper.getMainLooper() && super.getResources() != null) {
            AutoSizeCompat.autoConvertDensity(super.getResources(), v.f4106a.r, true);
        }
        return super.getResources();
    }

    @Override // me.jessyan.autosize.internal.CustomAdapt
    public final float getSizeInDp() {
        return v.f4106a.r;
    }

    @Override // me.jessyan.autosize.internal.CustomAdapt
    public final boolean isBaseOnWidth() {
        return true;
    }

    @Override // q.i, androidx.activity.m, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Handler handler = this.B;
        handler.removeCallbacksAndMessages(null);
        handler.postDelayed(new e(this, 0), 1000L);
    }

    @Override // androidx.fragment.app.j0, androidx.activity.m, m0.k, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(t());
        this.A = this;
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: da.f
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public final void onSystemUiVisibilityChange(int i10) {
                p000if.a.B0(this.f4524a.getWindow(), v.f4106a.f4120g0);
            }
        });
        getWindow().setBackgroundDrawable(AppStart.f3772h.f3774b);
        p000if.a.A0(getWindow(), v.f4106a.f4120g0, false);
        getWindow().addFlags(128);
        if (o.f513a == null) {
            o.f513a = new Stack();
        }
        o.f513a.add(this);
        v();
        u();
    }

    @Override // q.i, androidx.fragment.app.j0, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.B.removeCallbacksAndMessages(null);
        o.f513a.remove(this);
    }

    @Override // androidx.activity.m, android.app.Activity
    public final void onMultiWindowModeChanged(boolean z, Configuration configuration) {
        super.onMultiWindowModeChanged(z, configuration);
        v();
    }

    @Override // androidx.activity.m, android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z) {
        super.onPictureInPictureModeChanged(z);
        v();
    }

    @Override // androidx.fragment.app.j0, android.app.Activity
    public void onResume() {
        super.onResume();
        if (getWindow().getAttributes().width != -1) {
            p000if.a.A0(getWindow(), v.f4106a.f4120g0, false);
        }
        Handler handler = this.B;
        handler.removeCallbacksAndMessages(null);
        handler.postDelayed(new e(this, 3), 333L);
        handler.postDelayed(new e(this, 4), 1000L);
    }

    @Override // q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onStop() {
        super.onStop();
        this.B.removeCallbacksAndMessages(null);
    }

    public abstract int t();

    public abstract void u();

    public final void v() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        AutoSizeConfig.getInstance().setScreenWidth(displayMetrics.widthPixels).setScreenHeight(displayMetrics.heightPixels);
        AutoSize.autoConvertDensity(this, v.f4106a.r, true);
    }

    public final void w(Class cls) {
        startActivity(new Intent(this.A, (Class<?>) cls));
    }

    @Override // androidx.activity.m, android.app.Activity
    public final void onMultiWindowModeChanged(boolean z) {
        super.onMultiWindowModeChanged(z);
        Handler handler = this.B;
        handler.removeCallbacksAndMessages(null);
        handler.postDelayed(new e(this, 1), 333L);
        handler.postDelayed(new e(this, 2), 1000L);
    }
}
