package ha;

import android.app.Presentation;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.hardware.display.VirtualDisplay;
import android.media.projection.MediaProjection;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityDisplayManager;

/* loaded from: classes.dex */
public final class j5 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final int f7257g;

    /* renamed from: h, reason: collision with root package name */
    public final MediaProjection f7258h;

    /* renamed from: i, reason: collision with root package name */
    public final Display f7259i;

    /* renamed from: j, reason: collision with root package name */
    public VirtualDisplay f7260j;

    /* renamed from: k, reason: collision with root package name */
    public Presentation f7261k;
    public final Handler l;

    /* renamed from: m, reason: collision with root package name */
    public Context f7262m;

    /* renamed from: n, reason: collision with root package name */
    public WindowManager f7263n;

    /* renamed from: p, reason: collision with root package name */
    public View f7264p;

    public j5(ActivityDisplayManager activityDisplayManager, ActivityDisplayManager activityDisplayManager2, int i10, Display display, MediaProjection mediaProjection) {
        super(activityDisplayManager, activityDisplayManager2, R.layout.dialog_display_show);
        this.f7257g = -1;
        this.l = new Handler(Looper.getMainLooper());
        this.f7264p = null;
        this.f7257g = i10;
        this.f7259i = display;
        this.f7258h = mediaProjection;
    }

    public static void a(j5 j5Var) {
        Presentation presentation = j5Var.f7261k;
        if (presentation == null || presentation.getWindow() == null) {
            return;
        }
        Window window = j5Var.f7261k.getWindow();
        try {
            window.getDecorView().setBackgroundColor(0);
            window.setBackgroundDrawableResource(android.R.color.transparent);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.dimAmount = 0.0f;
            window.setAttributes(attributes);
            window.addFlags(2);
            window.addFlags(512);
        } catch (Exception unused) {
        }
    }

    public static void b(j5 j5Var) {
        Presentation presentation = j5Var.f7261k;
        if (presentation == null || presentation.getWindow() == null) {
            return;
        }
        Window window = j5Var.f7261k.getWindow();
        window.setBackgroundDrawable(new ColorDrawable(0));
        window.setFlags(552, 552);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = 0.0f;
        attributes.alpha = 1.0f;
        attributes.width = -1;
        attributes.height = -1;
        window.setAttributes(attributes);
        if (Build.VERSION.SDK_INT >= 26) {
            window.setType(2038);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        View view;
        this.l.removeCallbacksAndMessages(null);
        VirtualDisplay virtualDisplay = this.f7260j;
        if (virtualDisplay != null && Build.VERSION.SDK_INT >= 19) {
            virtualDisplay.release();
        }
        WindowManager windowManager = this.f7263n;
        if (windowManager != null && (view = this.f7264p) != null) {
            windowManager.removeView(view);
        }
        Presentation presentation = this.f7261k;
        if (presentation != null) {
            presentation.dismiss();
        }
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        findViewById(R.id.v_btn_close).setOnClickListener(new com.google.android.material.datepicker.l(this, 12));
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 21) {
            dismiss();
            return;
        }
        Display display = this.f7259i;
        Context context = this.f6725b;
        int i11 = this.f7257g;
        if (i11 == 0) {
            this.f7261k = new Presentation(context, display);
            SurfaceView surfaceView = new SurfaceView(context);
            this.f7261k.setContentView(surfaceView);
            DisplayMetrics displayMetrics = new DisplayMetrics();
            display.getMetrics(displayMetrics);
            surfaceView.getHolder().addCallback(new f5(this, displayMetrics.widthPixels, displayMetrics.heightPixels, displayMetrics.densityDpi, 0));
            this.f7261k.show();
            return;
        }
        if (i11 == 1) {
            DisplayMetrics displayMetrics2 = new DisplayMetrics();
            display.getMetrics(displayMetrics2);
            int i12 = displayMetrics2.widthPixels;
            int i13 = displayMetrics2.heightPixels;
            int i14 = displayMetrics2.densityDpi;
            this.f7261k = new g5(this, context, display, 0);
            SurfaceView surfaceView2 = new SurfaceView(context);
            this.f7261k.setContentView(surfaceView2);
            surfaceView2.getHolder().addCallback(new f5(this, i12, i13, i14, 1));
            this.f7261k.show();
            return;
        }
        if (i11 == 2) {
            Presentation presentation = new Presentation(context, display);
            this.f7261k = presentation;
            presentation.setContentView(R.layout.activity_text_tp);
            this.f7261k.show();
            return;
        }
        if (i11 == 3) {
            g5 g5Var = new g5(this, context, display, 3);
            this.f7261k = g5Var;
            g5Var.setContentView(R.layout.activity_text_tp);
            this.f7261k.setOnShowListener(new h5());
            this.f7261k.setOnDismissListener(new i5());
            try {
                this.f7261k.show();
                return;
            } catch (Exception e7) {
                e7.printStackTrace();
                return;
            }
        }
        if (i11 == 4) {
            g5 g5Var2 = new g5(this, context, display, 1);
            this.f7261k = g5Var2;
            g5Var2.setContentView(R.layout.activity_text_tm);
            this.f7261k.show();
            return;
        }
        if (i11 == 5) {
            g5 g5Var3 = new g5(this, context, display, 2);
            this.f7261k = g5Var3;
            g5Var3.setContentView(R.layout.activity_text_zj);
            this.f7261k.show();
            return;
        }
        if (i11 == 6) {
            Context contextCreateDisplayContext = context.createDisplayContext(display);
            this.f7262m = contextCreateDisplayContext;
            this.f7263n = (WindowManager) contextCreateDisplayContext.getSystemService("window");
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, i10 >= 26 ? 2038 : 2002, 808, -3);
            View viewInflate = LayoutInflater.from(this.f7262m).inflate(R.layout.activity_text_floating_zd, (ViewGroup) null);
            this.f7264p = viewInflate;
            this.f7263n.addView(viewInflate, layoutParams);
            return;
        }
        if (i11 == 7) {
            Context contextCreateDisplayContext2 = context.createDisplayContext(display);
            this.f7262m = contextCreateDisplayContext2;
            this.f7263n = (WindowManager) contextCreateDisplayContext2.getSystemService("window");
            DisplayMetrics displayMetrics3 = new DisplayMetrics();
            display.getRealMetrics(displayMetrics3);
            WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(displayMetrics3.widthPixels / 2, displayMetrics3.heightPixels / 2, i10 >= 26 ? 2038 : 2002, 808, -3);
            layoutParams2.gravity = 17;
            View viewInflate2 = LayoutInflater.from(this.f7262m).inflate(R.layout.activity_text_floating_zd, (ViewGroup) null);
            this.f7264p = viewInflate2;
            this.f7263n.addView(viewInflate2, layoutParams2);
            return;
        }
        if (i11 == 10) {
            Context contextCreateDisplayContext3 = context.createDisplayContext(display);
            this.f7262m = contextCreateDisplayContext3;
            this.f7263n = (WindowManager) contextCreateDisplayContext3.getSystemService("window");
            WindowManager.LayoutParams layoutParams3 = new WindowManager.LayoutParams(-1, -1, i10 >= 26 ? 2038 : 2002, 808, -3);
            View viewInflate3 = LayoutInflater.from(this.f7262m).inflate(R.layout.activity_text_tp_hzh, (ViewGroup) null);
            this.f7264p = viewInflate3;
            SurfaceView surfaceView3 = (SurfaceView) viewInflate3.findViewById(R.id.v_surface);
            DisplayMetrics displayMetrics4 = new DisplayMetrics();
            display.getMetrics(displayMetrics4);
            surfaceView3.getHolder().addCallback(new f5(this, displayMetrics4.widthPixels, displayMetrics4.heightPixels, displayMetrics4.densityDpi, 2));
            this.f7263n.addView(this.f7264p, layoutParams3);
        }
    }
}
