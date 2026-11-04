package ha;

import android.content.Context;
import android.hardware.display.VirtualDisplay;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityDisplayManager;

/* loaded from: classes.dex */
public final class m5 extends a4 {

    /* renamed from: w, reason: collision with root package name */
    public static final /* synthetic */ int f7399w = 0;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f7400g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f7401h;

    /* renamed from: i, reason: collision with root package name */
    public final String f7402i;

    /* renamed from: j, reason: collision with root package name */
    public final String f7403j;

    /* renamed from: k, reason: collision with root package name */
    public final Display f7404k;
    public g5 l;

    /* renamed from: m, reason: collision with root package name */
    public final Handler f7405m;

    /* renamed from: n, reason: collision with root package name */
    public VirtualDisplay f7406n;

    /* renamed from: p, reason: collision with root package name */
    public int f7407p;

    /* renamed from: q, reason: collision with root package name */
    public int f7408q;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public Context f7409s;

    /* renamed from: t, reason: collision with root package name */
    public WindowManager f7410t;

    /* renamed from: v, reason: collision with root package name */
    public View f7411v;

    public m5(ActivityDisplayManager activityDisplayManager, ActivityDisplayManager activityDisplayManager2, boolean z, boolean z4, Display display, String str) {
        super(activityDisplayManager, activityDisplayManager2, R.layout.dialog_display_show);
        this.f7400g = false;
        this.f7401h = false;
        this.f7402i = "DisplayShowHzhDialog";
        this.f7405m = new Handler(Looper.getMainLooper());
        this.f7400g = z;
        this.f7401h = z4;
        this.f7404k = display;
        this.f7403j = str;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        VirtualDisplay virtualDisplay;
        this.f7405m.removeCallbacksAndMessages(null);
        if (Build.VERSION.SDK_INT >= 19 && (virtualDisplay = this.f7406n) != null) {
            try {
                virtualDisplay.release();
            } catch (Throwable unused) {
            }
            this.f7406n = null;
        }
        g5 g5Var = this.l;
        if (g5Var != null) {
            g5Var.dismiss();
        }
        if (this.f7401h) {
            this.f7410t.removeView(this.f7411v);
        }
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        findViewById(R.id.v_btn_close).setOnClickListener(new com.google.android.material.datepicker.l(this, 13));
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 21) {
            boolean z = this.f7401h;
            Display display = this.f7404k;
            Context context = this.f6725b;
            if (!z) {
                g5 g5Var = new g5(this, context, display, 4);
                this.l = g5Var;
                g5Var.setContentView(R.layout.activity_text_tp_hzh);
                this.l.show();
                SurfaceView surfaceView = (SurfaceView) this.l.findViewById(R.id.v_surface);
                surfaceView.getViewTreeObserver().addOnGlobalLayoutListener(new l5(this, surfaceView));
                return;
            }
            Context contextCreateDisplayContext = context.createDisplayContext(display);
            this.f7409s = contextCreateDisplayContext;
            this.f7410t = (WindowManager) contextCreateDisplayContext.getSystemService("window");
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, i10 >= 26 ? 2038 : 2002, 808, -3);
            View viewInflate = LayoutInflater.from(this.f7409s).inflate(R.layout.activity_text_tp_hzh, (ViewGroup) null);
            this.f7411v = viewInflate;
            SurfaceView surfaceView2 = (SurfaceView) viewInflate.findViewById(R.id.v_surface);
            surfaceView2.getViewTreeObserver().addOnGlobalLayoutListener(new l5(this, surfaceView2));
            this.f7410t.addView(this.f7411v, layoutParams);
        }
    }
}
