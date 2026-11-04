package ha;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public abstract class a4 extends Dialog {

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f6723f = 0;

    /* renamed from: a, reason: collision with root package name */
    public final Activity f6724a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f6725b;

    /* renamed from: c, reason: collision with root package name */
    public final int f6726c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f6727d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f6728e;

    public a4(Activity activity, Context context, int i10) {
        super(context, R.style.CustomDialogStyle);
        this.f6727d = true;
        this.f6728e = true;
        this.f6725b = context;
        this.f6724a = activity;
        this.f6726c = i10;
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(this.f6726c);
        getWindow().getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        getWindow().setAttributes(attributes);
        Window window = getWindow();
        int i10 = com.yunpan.appmanage.util.v.f4106a.f4120g0;
        Context context = this.f6725b;
        p000if.a.A0(window, i10, true);
        View viewFindViewById = findViewById(R.id.v_root);
        View viewFindViewById2 = findViewById(R.id.v_root2);
        if (this.f6728e && viewFindViewById2 != null) {
            viewFindViewById.setBackgroundColor(n0.g.c(context, R.color.color_000000_60));
        }
        viewFindViewById.setOnClickListener(new com.google.android.material.datepicker.l(this, 11));
        if (viewFindViewById2 != null) {
            try {
                viewFindViewById2.setOnClickListener(new z3(0));
            } catch (Exception unused) {
            }
        }
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        if (wVar.H) {
            p000if.a.A0(getWindow(), wVar.f4120g0, true);
        }
    }

    public a4(Activity activity, Context context, int i10, boolean z) {
        this(activity, context, i10);
        this.f6727d = z;
    }
}
