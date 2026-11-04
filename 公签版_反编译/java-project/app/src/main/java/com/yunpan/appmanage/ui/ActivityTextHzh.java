package com.yunpan.appmanage.ui;

import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityTextHzh;
import com.yunpan.appmanage.util.a0;
import da.g;
import g.b;
import i0.e;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import ua.m7;

/* loaded from: classes.dex */
public class ActivityTextHzh extends g {
    public static final /* synthetic */ int P = 0;
    public ConstraintLayout C;
    public TextView D;
    public TextView E;
    public TextView F;
    public m7 G;
    public m7 H;
    public m7 I;
    public String K;
    public String L;
    public int M;
    public int N;
    public final Handler O = new Handler(Looper.getMainLooper());

    public static String z(Throwable th2) {
        String simpleName = th2.getClass().getSimpleName();
        String message = th2.getMessage();
        return (message == null || message.isEmpty()) ? simpleName : b.k(simpleName, ": ", message);
    }

    public final void A(boolean z, String str, Throwable th2) {
        int i10;
        if (z) {
            i10 = this.M + 1;
            this.M = i10;
        } else {
            i10 = this.N + 1;
            this.N = i10;
        }
        for (Throwable cause = th2; cause != null; cause = cause.getCause()) {
            String message = cause.getMessage();
            if ((cause instanceof SecurityException) && message != null && message.contains("allowEmbedded")) {
                a0.t("Android 7.x 需要目标页面声明 allowEmbedded=true");
                return;
            }
        }
        if (i10 <= 30) {
            this.O.postDelayed(new androidx.fragment.app.g(this, z, str), 350L);
            return;
        }
        a0.t("启动失败: " + z(th2));
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0088  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void B(String str, boolean z) {
        int iF;
        boolean zBooleanValue;
        boolean z4 = true;
        m7 m7Var = z ? this.G : this.H;
        if (m7Var == null) {
            return;
        }
        View view = m7Var.f15826a;
        int i10 = Build.VERSION.SDK_INT;
        Intent leanbackLaunchIntentForPackage = i10 >= 21 ? getPackageManager().getLeanbackLaunchIntentForPackage(str) : null;
        if (leanbackLaunchIntentForPackage == null) {
            leanbackLaunchIntentForPackage = getPackageManager().getLaunchIntentForPackage(str);
        }
        if (leanbackLaunchIntentForPackage != null) {
            leanbackLaunchIntentForPackage.addFlags(268435456);
            if (i10 < 24 || i10 >= 26) {
                leanbackLaunchIntentForPackage.addFlags(134217728);
            } else {
                leanbackLaunchIntentForPackage.setFlags(leanbackLaunchIntentForPackage.getFlags() & (-134217729));
            }
        }
        if (leanbackLaunchIntentForPackage == null) {
            a0.u("未找到该应用的启动入口");
            return;
        }
        try {
            if (m7.c(view, "mSurface") == null && m7.c(view, "mVirtualDisplay") == null && m7Var.f() < 0) {
                Method method = m7Var.f15831f;
                if (method == null || i10 < 26) {
                    zBooleanValue = false;
                } else {
                    try {
                        Object objInvoke = method.invoke(view, null);
                        if (objInvoke instanceof Boolean) {
                            zBooleanValue = ((Boolean) objInvoke).booleanValue();
                        }
                    } catch (Throwable unused) {
                    }
                }
            } else {
                zBooleanValue = true;
            }
            if (!zBooleanValue) {
                A(z, str, new IllegalStateException("embedded host not ready"));
                return;
            }
            this.I = m7Var;
            m7Var.f15827b.invoke(view, leanbackLaunchIntentForPackage);
            view.requestFocus();
            if (z) {
                this.M = 0;
            } else {
                this.N = 0;
            }
            a0.u((z ? "左侧" : "右侧").concat("已启动"));
        } catch (Throwable th2) {
            th = th2;
            Throwable targetException = th;
            while (targetException instanceof InvocationTargetException) {
                InvocationTargetException invocationTargetException = (InvocationTargetException) targetException;
                if (invocationTargetException.getTargetException() == null) {
                    break;
                } else {
                    targetException = invocationTargetException.getTargetException();
                }
            }
            if (targetException != null) {
                th = targetException;
            }
            z(th);
            Throwable cause = th;
            while (true) {
                if (cause == null) {
                    z4 = false;
                    break;
                }
                String message = cause.getMessage();
                if ((cause instanceof SecurityException) && message != null && message.contains("allowEmbedded")) {
                    break;
                } else {
                    cause = cause.getCause();
                }
            }
            if (z4) {
                a0.t("Android 7.x 需要目标页面声明 allowEmbedded=true");
                return;
            }
            if (Build.VERSION.SDK_INT >= 26 && (iF = m7Var.f()) >= 0) {
                try {
                    ActivityOptions activityOptionsMakeBasic = ActivityOptions.makeBasic();
                    activityOptionsMakeBasic.setLaunchDisplayId(iF);
                    startActivity(leanbackLaunchIntentForPackage, activityOptionsMakeBasic.toBundle());
                    this.I = m7Var;
                    view.requestFocus();
                    if (z) {
                        this.M = 0;
                    } else {
                        this.N = 0;
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(z ? "左侧" : "右侧");
                    sb2.append("已启动");
                    a0.u(sb2.toString());
                    return;
                } catch (Throwable unused2) {
                    A(z, str, th);
                }
            }
            A(z, str, th);
        }
    }

    @Override // q.i, m0.k, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                m7 m7Var = this.I;
                if (m7Var == null) {
                    m7Var = this.G;
                }
                boolean zH = false;
                if (m7Var != null) {
                    try {
                        zH = m7Var.h();
                    } catch (Throwable unused) {
                    }
                }
                if (zH) {
                    return true;
                }
                return super.dispatchKeyEvent(keyEvent);
            }
            if (keyEvent.getAction() == 1) {
                return true;
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        this.O.removeCallbacksAndMessages(null);
        m7 m7Var = this.G;
        if (m7Var != null) {
            try {
                Method method = m7Var.f15828c;
                if (method != null) {
                    method.invoke(m7Var.f15826a, null);
                }
            } catch (Throwable unused) {
            }
        }
        m7 m7Var2 = this.H;
        if (m7Var2 != null) {
            try {
                Method method2 = m7Var2.f15828c;
                if (method2 != null) {
                    method2.invoke(m7Var2.f15826a, null);
                }
            } catch (Throwable unused2) {
            }
        }
        super.onDestroy();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_text_hzh;
    }

    @Override // da.g
    public final void u() {
        final int i10 = 2;
        final int i11 = 1;
        this.C = (ConstraintLayout) findViewById(R.id.v_root);
        final int i12 = 0;
        findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ua.k7

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityTextHzh f15790b;

            {
                this.f15790b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i13 = 7;
                ActivityTextHzh activityTextHzh = this.f15790b;
                switch (i12) {
                    case 0:
                        int i14 = ActivityTextHzh.P;
                        activityTextHzh.finish();
                        break;
                    case 1:
                        int i15 = ActivityTextHzh.P;
                        activityTextHzh.getClass();
                        new ha.q2(activityTextHzh, activityTextHzh.A, 2, new ha.h2(activityTextHzh, true, i13)).show();
                        break;
                    default:
                        int i16 = ActivityTextHzh.P;
                        activityTextHzh.getClass();
                        new ha.q2(activityTextHzh, activityTextHzh.A, 2, new ha.h2(activityTextHzh, false, i13)).show();
                        break;
                }
            }
        });
        View viewFindViewById = findViewById(R.id.v_surface);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
        TextView textView = (TextView) findViewById(R.id.v_btn_start);
        this.D = textView;
        textView.setText("左应用");
        this.D.setOnClickListener(new View.OnClickListener(this) { // from class: ua.k7

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityTextHzh f15790b;

            {
                this.f15790b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i13 = 7;
                ActivityTextHzh activityTextHzh = this.f15790b;
                switch (i11) {
                    case 0:
                        int i14 = ActivityTextHzh.P;
                        activityTextHzh.finish();
                        break;
                    case 1:
                        int i15 = ActivityTextHzh.P;
                        activityTextHzh.getClass();
                        new ha.q2(activityTextHzh, activityTextHzh.A, 2, new ha.h2(activityTextHzh, true, i13)).show();
                        break;
                    default:
                        int i16 = ActivityTextHzh.P;
                        activityTextHzh.getClass();
                        new ha.q2(activityTextHzh, activityTextHzh.A, 2, new ha.h2(activityTextHzh, false, i13)).show();
                        break;
                }
            }
        });
        TextView textView2 = new TextView(this.A);
        this.E = textView2;
        textView2.setId(View.generateViewId());
        this.E.setText("右应用");
        this.E.setTextColor(this.A.getResources().getColor(R.color.btn_text_color1));
        this.E.setTextSize(0, this.A.getResources().getDimensionPixelSize(R.dimen.sp_14));
        this.E.setBackgroundResource(R.drawable.bg_btn1);
        this.E.setClickable(true);
        this.E.setFocusable(true);
        this.E.setGravity(17);
        int dimension = (int) this.A.getResources().getDimension(R.dimen.dp_18);
        int dimension2 = (int) this.A.getResources().getDimension(R.dimen.dp_11);
        this.E.setPadding(dimension, dimension2, dimension, dimension2);
        e eVar = new e(-2, -2);
        eVar.f8267i = this.D.getId();
        eVar.l = this.D.getId();
        eVar.f8283s = this.D.getId();
        eVar.setMarginStart((int) this.A.getResources().getDimension(R.dimen.dp_8));
        this.C.addView(this.E, eVar);
        this.E.setOnClickListener(new View.OnClickListener(this) { // from class: ua.k7

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityTextHzh f15790b;

            {
                this.f15790b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i13 = 7;
                ActivityTextHzh activityTextHzh = this.f15790b;
                switch (i10) {
                    case 0:
                        int i14 = ActivityTextHzh.P;
                        activityTextHzh.finish();
                        break;
                    case 1:
                        int i15 = ActivityTextHzh.P;
                        activityTextHzh.getClass();
                        new ha.q2(activityTextHzh, activityTextHzh.A, 2, new ha.h2(activityTextHzh, true, i13)).show();
                        break;
                    default:
                        int i16 = ActivityTextHzh.P;
                        activityTextHzh.getClass();
                        new ha.q2(activityTextHzh, activityTextHzh.A, 2, new ha.h2(activityTextHzh, false, i13)).show();
                        break;
                }
            }
        });
        TextView textView3 = new TextView(this.A);
        this.F = textView3;
        textView3.setText("双应用同屏触控");
        this.F.setTextColor(this.A.getResources().getColor(R.color.color_3));
        this.F.setTextSize(0, this.A.getResources().getDimensionPixelSize(R.dimen.sp_26));
        this.F.setGravity(17);
        e eVar2 = new e(0, -2);
        eVar2.f8267i = R.id.v_btn_return;
        eVar2.l = R.id.v_btn_return;
        eVar2.f8283s = this.E.getId();
        eVar2.f8286v = 0;
        eVar2.setMarginStart((int) this.A.getResources().getDimension(R.dimen.dp_8));
        this.C.addView(this.F, eVar2);
        try {
            this.G = y();
            this.H = y();
            this.I = this.G;
            x();
            a0.u("请选择左右两侧应用");
        } catch (Throwable th2) {
            String[] strArr = {"android.app.ActivityView", "com.android.wm.shell.TaskView", "com.android.wm.shell.TaskViewFactory", "com.android.wm.shell.TaskViewFactoryController", "com.android.wm.shell.ShellTaskOrganizer", "com.android.wm.shell.common.SyncTransactionQueue", "com.android.wm.shell.taskview.TaskView", "com.android.wm.shell.taskview.TaskViewTaskController", "android.window.TaskOrganizer", "android.window.TaskView"};
            for (int i13 = 0; i13 < 10; i13++) {
                try {
                    int length = Class.forName(strArr[i13]).getDeclaredConstructors().length;
                } catch (Throwable th3) {
                    z(th3);
                }
            }
            TextView textView4 = new TextView(this.A);
            textView4.setText("当前系统没有可用的 android.app.ActivityView。\n\n兼容建议：\n1. Android 5.0-11：优先使用 ActivityView，画面和触摸由系统容器分发。\n2. Android 12+：如果 framework ActivityView 被删除，需要接入 ROM/Shell TaskView。\n3. MediaProjection 只适合显示，触摸需要额外坐标映射和事件注入。" + (th2.getMessage() == null ? "" : "\n\n" + th2.getMessage()));
            textView4.setTextColor(this.A.getResources().getColor(R.color.color_3));
            textView4.setTextSize(2, 18.0f);
            textView4.setGravity(17);
            textView4.setPadding(30, 30, 30, 30);
            e eVar3 = new e(0, 0);
            eVar3.f8269j = R.id.v_btn_return;
            eVar3.l = 0;
            eVar3.f8284t = 0;
            eVar3.f8286v = 0;
            this.C.addView(textView4, eVar3);
            a0.t("当前系统不支持 ActivityView");
        }
    }

    public final void x() {
        int iGenerateViewId = View.generateViewId();
        int iGenerateViewId2 = View.generateViewId();
        this.G.f15826a.setId(iGenerateViewId);
        this.H.f15826a.setId(iGenerateViewId2);
        this.G.f15826a.setFocusable(true);
        this.G.f15826a.setFocusableInTouchMode(true);
        this.H.f15826a.setFocusable(true);
        this.H.f15826a.setFocusableInTouchMode(true);
        final int i10 = 0;
        this.G.f15826a.setOnTouchListener(new View.OnTouchListener(this) { // from class: ua.l7

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityTextHzh f15811b;

            {
                this.f15811b = this;
            }

            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                switch (i10) {
                    case 0:
                        ActivityTextHzh activityTextHzh = this.f15811b;
                        activityTextHzh.I = activityTextHzh.G;
                        break;
                    default:
                        ActivityTextHzh activityTextHzh2 = this.f15811b;
                        activityTextHzh2.I = activityTextHzh2.H;
                        break;
                }
                return false;
            }
        });
        final int i11 = 1;
        this.H.f15826a.setOnTouchListener(new View.OnTouchListener(this) { // from class: ua.l7

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityTextHzh f15811b;

            {
                this.f15811b = this;
            }

            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                switch (i11) {
                    case 0:
                        ActivityTextHzh activityTextHzh = this.f15811b;
                        activityTextHzh.I = activityTextHzh.G;
                        break;
                    default:
                        ActivityTextHzh activityTextHzh2 = this.f15811b;
                        activityTextHzh2.I = activityTextHzh2.H;
                        break;
                }
                return false;
            }
        });
        int dimension = (int) this.A.getResources().getDimension(R.dimen.dp_10);
        int dimension2 = (int) this.A.getResources().getDimension(R.dimen.dp_5);
        e eVar = new e(0, 0);
        eVar.f8269j = R.id.v_btn_return;
        eVar.l = 0;
        eVar.f8284t = 0;
        eVar.f8285u = iGenerateViewId2;
        eVar.setMargins(dimension, dimension, dimension2, dimension);
        e eVar2 = new e(0, 0);
        eVar2.f8269j = R.id.v_btn_return;
        eVar2.l = 0;
        eVar2.f8283s = iGenerateViewId;
        eVar2.f8286v = 0;
        eVar2.setMargins(dimension2, dimension, dimension, dimension);
        this.C.addView(this.G.f15826a, eVar);
        this.C.addView(this.H.f15826a, eVar2);
    }

    public final m7 y() throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        Class<?> cls = Class.forName("android.app.ActivityView");
        Constructor<?> constructor = null;
        for (Constructor<?> constructor2 : cls.getConstructors()) {
            if (m7.b(constructor2) && (constructor == null || constructor2.getParameterTypes().length < constructor.getParameterTypes().length)) {
                constructor = constructor2;
            }
        }
        if (constructor == null) {
            Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
            int length = declaredConstructors.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                }
                Constructor<?> constructor3 = declaredConstructors[i10];
                if (m7.b(constructor3)) {
                    constructor = constructor3;
                    break;
                }
                i10++;
            }
        }
        if (constructor == null) {
            throw new NoSuchMethodException("No supported ActivityView constructor");
        }
        constructor.setAccessible(true);
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        Object[] objArr = new Object[parameterTypes.length];
        for (int i11 = 0; i11 < parameterTypes.length; i11++) {
            Class<?> cls2 = parameterTypes[i11];
            if (Context.class.isAssignableFrom(cls2)) {
                objArr[i11] = this;
            } else if (AttributeSet.class.isAssignableFrom(cls2)) {
                objArr[i11] = null;
            } else if (cls2 == Integer.TYPE || cls2 == Integer.class) {
                objArr[i11] = 0;
            } else if (cls2 == Boolean.TYPE || cls2 == Boolean.class) {
                objArr[i11] = Boolean.FALSE;
            }
        }
        View view = (View) constructor.newInstance(objArr);
        Method method = cls.getMethod("startActivity", Intent.class);
        Method methodD = m7.d(cls, "release");
        Method methodD2 = m7.d(cls, "getVirtualDisplayId");
        Method methodD3 = m7.d(cls, "getDisplayId");
        Method methodD4 = m7.d(cls, "isAttachedToDisplay");
        Method methodD5 = m7.d(cls, "performBackPress");
        if (methodD5 == null) {
            methodD5 = m7.d(cls, "onBackPressed");
        }
        Method method2 = methodD5;
        Method methodE = m7.e(cls, "injectInputEvent", InputEvent.class);
        Object objC = m7.c(view, "mActivityContainer");
        Method methodE2 = objC == null ? null : m7.e(objC.getClass(), "injectEvent", InputEvent.class);
        Object objC2 = objC == null ? null : m7.c(objC, "mIActivityContainer");
        return new m7(view, method, methodD, methodD2, methodD3, methodD4, method2, methodE, objC, methodE2, objC2, objC2 == null ? null : m7.d(objC2.getClass(), "getDisplayId"), objC2 != null ? m7.d(objC2.getClass(), "getStackId") : null);
    }
}
