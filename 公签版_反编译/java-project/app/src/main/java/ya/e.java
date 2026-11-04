package ya;

import android.content.SharedPreferences;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.FloatWindowInsets;
import com.yunpan.appmanage.service.AccService;
import z7.s;

/* loaded from: classes.dex */
public final class e {
    public static e J;

    /* renamed from: a, reason: collision with root package name */
    public AccService f19024a;

    /* renamed from: b, reason: collision with root package name */
    public SharedPreferences f19025b;

    /* renamed from: c, reason: collision with root package name */
    public SharedPreferences.Editor f19026c;

    /* renamed from: g, reason: collision with root package name */
    public WindowManager f19030g;

    /* renamed from: h, reason: collision with root package name */
    public View f19031h;

    /* renamed from: i, reason: collision with root package name */
    public ImageView f19032i;

    /* renamed from: j, reason: collision with root package name */
    public WindowManager.LayoutParams f19033j;

    /* renamed from: k, reason: collision with root package name */
    public WindowManager.LayoutParams f19034k;

    /* renamed from: p, reason: collision with root package name */
    public int f19038p;

    /* renamed from: q, reason: collision with root package name */
    public int f19039q;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public int f19040s;

    /* renamed from: t, reason: collision with root package name */
    public long f19041t;

    /* renamed from: u, reason: collision with root package name */
    public int f19042u;

    /* renamed from: v, reason: collision with root package name */
    public int f19043v;

    /* renamed from: w, reason: collision with root package name */
    public int f19044w;

    /* renamed from: x, reason: collision with root package name */
    public int f19045x;

    /* renamed from: y, reason: collision with root package name */
    public int f19046y;

    /* renamed from: d, reason: collision with root package name */
    public s f19027d = null;

    /* renamed from: e, reason: collision with root package name */
    public boolean f19028e = false;

    /* renamed from: f, reason: collision with root package name */
    public long f19029f = 0;
    public boolean l = false;

    /* renamed from: m, reason: collision with root package name */
    public boolean f19035m = false;

    /* renamed from: n, reason: collision with root package name */
    public boolean f19036n = false;

    /* renamed from: o, reason: collision with root package name */
    public boolean f19037o = false;
    public boolean z = false;
    public boolean A = false;
    public boolean B = false;
    public final d C = new d(this, 0);
    public final d D = new d(this, 1);
    public final d E = new d(this, 2);
    public final d F = new d(this, 3);
    public int G = 0;
    public final d H = new d(this, 4);
    public boolean I = false;

    public static synchronized e b() {
        try {
            if (J == null) {
                J = new e();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return J;
    }

    public final void a() {
        AccService accService = this.f19024a;
        if (accService.f3937i == null) {
            accService.f3937i = new y3.a(accService);
            this.f19024a.G.postDelayed(new b(this, 0), 300L);
            return;
        }
        this.f19028e = !this.f19027d.p("1").f19478a.isEmpty();
        boolean z = this.f19027d.o("auto_hide").b() || this.f19027d.o("auto_trans").b();
        this.z = z;
        if (!z && this.f19027d.o("antiBurnScreen").b()) {
            this.f19024a.G.postDelayed(this.H, 60000);
        }
        if (this.f19027d.f19480a.containsKey("lock")) {
            this.B = this.f19027d.o("lock").b();
        }
        this.A = (this.f19027d.p("3").f19478a.isEmpty() && this.f19027d.p("4").f19478a.isEmpty() && this.f19027d.p("5").f19478a.isEmpty() && this.f19027d.p("6").f19478a.isEmpty()) ? false : true;
        this.f19042u = this.f19027d.o("trans").e();
        if (this.f19027d.f19480a.containsKey("allow_move_outer_edge")) {
            this.I = this.f19027d.o("allow_move_outer_edge").b();
        }
        int iE = this.f19027d.o("size").e();
        this.f19043v = iE;
        this.f19044w = Math.round(iE * 0.8f);
        this.f19045x = Math.round((this.f19043v * 0.2f) / 2.0f);
        this.f19046y = this.f19043v / 2;
        ImageView imageView = new ImageView(this.f19024a);
        this.f19032i = imageView;
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.f19032i.setAdjustViewBounds(true);
        int iE2 = this.f19027d.o("ico").e();
        if (iE2 == -1) {
            this.f19032i.setImageBitmap(BitmapFactory.decodeFile(this.f19024a.getFilesDir() + "/FloatButtonIco"));
        } else if (iE2 == 1) {
            this.f19032i.setImageResource(R.drawable.float_icon_transparent_1);
        } else if (iE2 == 2) {
            this.f19032i.setImageResource(R.drawable.float_icon_transparent_2);
        } else if (iE2 == 3) {
            this.f19032i.setImageResource(R.drawable.float_icon_transparent_3);
        } else if (iE2 == 4) {
            this.f19032i.setImageResource(R.drawable.float_icon_transparent_4);
        } else if (iE2 == 5) {
            this.f19032i.setImageResource(R.drawable.tp_return5);
        } else {
            try {
                this.f19032i.setImageResource(iE2);
            } catch (Exception unused) {
                this.f19032i.setImageResource(R.drawable.float_icon_transparent_1);
            }
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 21) {
            this.f19032i.setBackground(null);
        } else {
            this.f19032i.setBackgroundColor(0);
        }
        this.f19032i.setImageAlpha(this.f19042u);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(this.f19027d.o("size").e(), this.f19027d.o("size").e(), i10 >= 22 ? 2032 : 2002, 808, -3);
        this.f19033j = layoutParams;
        if (i10 >= 28) {
            layoutParams.layoutInDisplayCutoutMode = 1;
        }
        WindowManager.LayoutParams layoutParams2 = this.f19033j;
        layoutParams2.gravity = 8388659;
        int i11 = this.f19025b.getInt("floatButton_x", (((Point) this.f19024a.f3937i.f18898e).x / 2) - this.f19046y);
        y3.a aVar = this.f19024a.f3937i;
        layoutParams2.x = i11 - ((FloatWindowInsets) aVar.f18897d).left;
        this.f19033j.y = this.f19025b.getInt("floatButton_y", (((Point) aVar.f18898e).y / 2) - this.f19046y) - ((FloatWindowInsets) this.f19024a.f3937i.f18897d).top;
        View view = new View(this.f19024a);
        this.f19031h = view;
        view.setWillNotDraw(true);
        Point point = (Point) this.f19024a.f3937i.f18898e;
        WindowManager.LayoutParams layoutParams3 = new WindowManager.LayoutParams(point.x, point.y, i10 >= 22 ? 2032 : 2002, 262968, -3);
        this.f19034k = layoutParams3;
        if (i10 >= 28) {
            layoutParams3.layoutInDisplayCutoutMode = 1;
        }
        WindowManager.LayoutParams layoutParams4 = this.f19034k;
        FloatWindowInsets floatWindowInsets = (FloatWindowInsets) this.f19024a.f3937i.f18897d;
        layoutParams4.x = -floatWindowInsets.left;
        layoutParams4.y = -floatWindowInsets.top;
        final int i12 = 0;
        this.f19031h.setOnTouchListener(new View.OnTouchListener(this) { // from class: ya.c

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ e f19021b;

            {
                this.f19021b = this;
            }

            /* JADX WARN: Removed duplicated region for block: B:32:0x00b4  */
            /* JADX WARN: Removed duplicated region for block: B:71:0x0189  */
            @Override // android.view.View.OnTouchListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                switch (i12) {
                    case 0:
                        e eVar = this.f19021b;
                        eVar.getClass();
                        if (motionEvent.getAction() != 4 && motionEvent.getAction() != 0 && motionEvent.getAction() != 2) {
                            return false;
                        }
                        eVar.c();
                        return false;
                    default:
                        e eVar2 = this.f19021b;
                        eVar2.getClass();
                        int rawX = (int) motionEvent.getRawX();
                        int rawY = (int) motionEvent.getRawY();
                        int action = motionEvent.getAction();
                        d dVar = eVar2.C;
                        d dVar2 = eVar2.E;
                        d dVar3 = eVar2.F;
                        if (action == 0) {
                            eVar2.l = false;
                            eVar2.f19035m = false;
                            eVar2.f19036n = false;
                            eVar2.f19037o = false;
                            eVar2.f19038p = rawX;
                            eVar2.f19039q = rawY;
                            eVar2.f19041t = System.currentTimeMillis();
                            eVar2.f(eVar2.f19044w);
                            if (!eVar2.f19027d.p("2").f19478a.isEmpty()) {
                                eVar2.f19024a.G.postDelayed(dVar2, 800L);
                                if (!eVar2.B) {
                                    eVar2.f19024a.G.postDelayed(dVar3, 200L);
                                }
                            } else if (eVar2.A) {
                                if (!eVar2.B) {
                                    eVar2.f19024a.G.postDelayed(dVar3, 200L);
                                }
                            } else if (!eVar2.B) {
                                eVar2.f19024a.G.postDelayed(dVar3, 0L);
                            }
                            eVar2.f19024a.G.removeCallbacks(dVar);
                        } else if (action == 1) {
                            eVar2.f19024a.G.removeCallbacks(dVar2);
                            eVar2.f19024a.G.removeCallbacks(dVar3);
                            eVar2.f19024a.G.removeCallbacks(dVar);
                            eVar2.c();
                            if (!eVar2.l) {
                                eVar2.f(eVar2.f19043v);
                                if (!eVar2.l && !eVar2.f19036n) {
                                    if (eVar2.f19035m) {
                                        eVar2.f19024a.G.postDelayed(new b(eVar2, 1), 150L);
                                    } else if (System.currentTimeMillis() - eVar2.f19041t <= 300) {
                                        if (eVar2.f19028e) {
                                            ta.e eVar3 = eVar2.f19024a.G;
                                            d dVar4 = eVar2.D;
                                            eVar3.removeCallbacks(dVar4);
                                            if (eVar2.f19029f <= 0 || System.currentTimeMillis() - eVar2.f19029f >= 500) {
                                                eVar2.f19024a.G.postDelayed(dVar4, 500L);
                                            } else {
                                                eVar2.f19029f = 0L;
                                                eVar2.f19024a.b(eVar2.f19027d.p("1"));
                                            }
                                            eVar2.f19029f = System.currentTimeMillis();
                                        } else if (!eVar2.f19027d.p("0").f19478a.isEmpty()) {
                                            eVar2.f19024a.b(eVar2.f19027d.p("0"));
                                        }
                                    }
                                }
                            }
                        } else if (action != 2) {
                            if (action == 3) {
                            }
                        } else if (!eVar2.l && !eVar2.f19036n) {
                            int i13 = rawX - eVar2.f19038p;
                            int i14 = rawY - eVar2.f19039q;
                            float fSqrt = (float) Math.sqrt((i14 * i14) + (i13 * i13));
                            if (!eVar2.f19037o) {
                                if (fSqrt > 15.0f) {
                                    eVar2.f19024a.G.removeCallbacks(dVar2);
                                }
                                if (fSqrt > 50.0f) {
                                    eVar2.f19036n = true;
                                    eVar2.f19024a.G.removeCallbacks(dVar3);
                                    if (Math.abs(i13) > Math.abs(i14)) {
                                        if (i13 > 0) {
                                            eVar2.f19024a.b(eVar2.f19027d.p("6"));
                                        } else {
                                            eVar2.f19024a.b(eVar2.f19027d.p("5"));
                                        }
                                    } else if (i14 > 0) {
                                        eVar2.f19024a.b(eVar2.f19027d.p("4"));
                                    } else {
                                        eVar2.f19024a.b(eVar2.f19027d.p("3"));
                                    }
                                }
                            } else if (eVar2.f19037o && fSqrt > 15.0f) {
                                if (!eVar2.f19035m) {
                                    eVar2.f19035m = true;
                                    eVar2.f19024a.G.removeCallbacks(dVar2);
                                }
                                if (eVar2.I) {
                                    int i15 = eVar2.f19045x;
                                    if (rawX < i15) {
                                        eVar2.r = (-eVar2.f19046y) + i15;
                                    } else {
                                        int i16 = ((Point) eVar2.f19024a.f3937i.f18898e).x;
                                        if (rawX > i16) {
                                            eVar2.r = (i16 - eVar2.f19046y) + i15;
                                        } else {
                                            eVar2.r = (rawX - eVar2.f19046y) + i15;
                                        }
                                    }
                                    if (rawY < i15) {
                                        eVar2.f19040s = (-eVar2.f19046y) + i15;
                                    } else {
                                        int i17 = ((Point) eVar2.f19024a.f3937i.f18898e).y;
                                        if (rawY > i17) {
                                            eVar2.f19040s = (i17 - eVar2.f19046y) + i15;
                                        } else {
                                            eVar2.f19040s = (rawY - eVar2.f19046y) + i15;
                                        }
                                    }
                                } else {
                                    int i18 = eVar2.f19046y;
                                    if (rawX <= i18) {
                                        eVar2.r = eVar2.f19045x;
                                    } else {
                                        int i19 = ((Point) eVar2.f19024a.f3937i.f18898e).x;
                                        if (rawX > i19 - i18) {
                                            eVar2.r = (i19 - eVar2.f19043v) + eVar2.f19045x;
                                        } else {
                                            eVar2.r = (rawX - i18) + eVar2.f19045x;
                                        }
                                    }
                                    if (rawY <= i18) {
                                        eVar2.f19040s = eVar2.f19045x;
                                    } else {
                                        int i20 = ((Point) eVar2.f19024a.f3937i.f18898e).y;
                                        if (rawY > i20 - i18) {
                                            eVar2.f19040s = (i20 - eVar2.f19043v) + eVar2.f19045x;
                                        } else {
                                            eVar2.f19040s = (rawY - i18) + eVar2.f19045x;
                                        }
                                    }
                                }
                                y3.a aVar2 = eVar2.f19024a.f3937i;
                                if (aVar2.f18894a) {
                                    int i21 = eVar2.r;
                                    FloatWindowInsets floatWindowInsets2 = (FloatWindowInsets) aVar2.f18897d;
                                    eVar2.r = i21 - floatWindowInsets2.left;
                                    eVar2.f19040s -= floatWindowInsets2.top;
                                }
                                WindowManager.LayoutParams layoutParams5 = eVar2.f19033j;
                                layoutParams5.x = eVar2.r;
                                layoutParams5.y = eVar2.f19040s;
                                eVar2.f19030g.updateViewLayout(view2, layoutParams5);
                            }
                        }
                        return true;
                }
            }
        });
        final int i13 = 1;
        this.f19032i.setOnTouchListener(new View.OnTouchListener(this) { // from class: ya.c

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ e f19021b;

            {
                this.f19021b = this;
            }

            /* JADX WARN: Removed duplicated region for block: B:32:0x00b4  */
            /* JADX WARN: Removed duplicated region for block: B:71:0x0189  */
            @Override // android.view.View.OnTouchListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                switch (i13) {
                    case 0:
                        e eVar = this.f19021b;
                        eVar.getClass();
                        if (motionEvent.getAction() != 4 && motionEvent.getAction() != 0 && motionEvent.getAction() != 2) {
                            return false;
                        }
                        eVar.c();
                        return false;
                    default:
                        e eVar2 = this.f19021b;
                        eVar2.getClass();
                        int rawX = (int) motionEvent.getRawX();
                        int rawY = (int) motionEvent.getRawY();
                        int action = motionEvent.getAction();
                        d dVar = eVar2.C;
                        d dVar2 = eVar2.E;
                        d dVar3 = eVar2.F;
                        if (action == 0) {
                            eVar2.l = false;
                            eVar2.f19035m = false;
                            eVar2.f19036n = false;
                            eVar2.f19037o = false;
                            eVar2.f19038p = rawX;
                            eVar2.f19039q = rawY;
                            eVar2.f19041t = System.currentTimeMillis();
                            eVar2.f(eVar2.f19044w);
                            if (!eVar2.f19027d.p("2").f19478a.isEmpty()) {
                                eVar2.f19024a.G.postDelayed(dVar2, 800L);
                                if (!eVar2.B) {
                                    eVar2.f19024a.G.postDelayed(dVar3, 200L);
                                }
                            } else if (eVar2.A) {
                                if (!eVar2.B) {
                                    eVar2.f19024a.G.postDelayed(dVar3, 200L);
                                }
                            } else if (!eVar2.B) {
                                eVar2.f19024a.G.postDelayed(dVar3, 0L);
                            }
                            eVar2.f19024a.G.removeCallbacks(dVar);
                        } else if (action == 1) {
                            eVar2.f19024a.G.removeCallbacks(dVar2);
                            eVar2.f19024a.G.removeCallbacks(dVar3);
                            eVar2.f19024a.G.removeCallbacks(dVar);
                            eVar2.c();
                            if (!eVar2.l) {
                                eVar2.f(eVar2.f19043v);
                                if (!eVar2.l && !eVar2.f19036n) {
                                    if (eVar2.f19035m) {
                                        eVar2.f19024a.G.postDelayed(new b(eVar2, 1), 150L);
                                    } else if (System.currentTimeMillis() - eVar2.f19041t <= 300) {
                                        if (eVar2.f19028e) {
                                            ta.e eVar3 = eVar2.f19024a.G;
                                            d dVar4 = eVar2.D;
                                            eVar3.removeCallbacks(dVar4);
                                            if (eVar2.f19029f <= 0 || System.currentTimeMillis() - eVar2.f19029f >= 500) {
                                                eVar2.f19024a.G.postDelayed(dVar4, 500L);
                                            } else {
                                                eVar2.f19029f = 0L;
                                                eVar2.f19024a.b(eVar2.f19027d.p("1"));
                                            }
                                            eVar2.f19029f = System.currentTimeMillis();
                                        } else if (!eVar2.f19027d.p("0").f19478a.isEmpty()) {
                                            eVar2.f19024a.b(eVar2.f19027d.p("0"));
                                        }
                                    }
                                }
                            }
                        } else if (action != 2) {
                            if (action == 3) {
                            }
                        } else if (!eVar2.l && !eVar2.f19036n) {
                            int i132 = rawX - eVar2.f19038p;
                            int i14 = rawY - eVar2.f19039q;
                            float fSqrt = (float) Math.sqrt((i14 * i14) + (i132 * i132));
                            if (!eVar2.f19037o) {
                                if (fSqrt > 15.0f) {
                                    eVar2.f19024a.G.removeCallbacks(dVar2);
                                }
                                if (fSqrt > 50.0f) {
                                    eVar2.f19036n = true;
                                    eVar2.f19024a.G.removeCallbacks(dVar3);
                                    if (Math.abs(i132) > Math.abs(i14)) {
                                        if (i132 > 0) {
                                            eVar2.f19024a.b(eVar2.f19027d.p("6"));
                                        } else {
                                            eVar2.f19024a.b(eVar2.f19027d.p("5"));
                                        }
                                    } else if (i14 > 0) {
                                        eVar2.f19024a.b(eVar2.f19027d.p("4"));
                                    } else {
                                        eVar2.f19024a.b(eVar2.f19027d.p("3"));
                                    }
                                }
                            } else if (eVar2.f19037o && fSqrt > 15.0f) {
                                if (!eVar2.f19035m) {
                                    eVar2.f19035m = true;
                                    eVar2.f19024a.G.removeCallbacks(dVar2);
                                }
                                if (eVar2.I) {
                                    int i15 = eVar2.f19045x;
                                    if (rawX < i15) {
                                        eVar2.r = (-eVar2.f19046y) + i15;
                                    } else {
                                        int i16 = ((Point) eVar2.f19024a.f3937i.f18898e).x;
                                        if (rawX > i16) {
                                            eVar2.r = (i16 - eVar2.f19046y) + i15;
                                        } else {
                                            eVar2.r = (rawX - eVar2.f19046y) + i15;
                                        }
                                    }
                                    if (rawY < i15) {
                                        eVar2.f19040s = (-eVar2.f19046y) + i15;
                                    } else {
                                        int i17 = ((Point) eVar2.f19024a.f3937i.f18898e).y;
                                        if (rawY > i17) {
                                            eVar2.f19040s = (i17 - eVar2.f19046y) + i15;
                                        } else {
                                            eVar2.f19040s = (rawY - eVar2.f19046y) + i15;
                                        }
                                    }
                                } else {
                                    int i18 = eVar2.f19046y;
                                    if (rawX <= i18) {
                                        eVar2.r = eVar2.f19045x;
                                    } else {
                                        int i19 = ((Point) eVar2.f19024a.f3937i.f18898e).x;
                                        if (rawX > i19 - i18) {
                                            eVar2.r = (i19 - eVar2.f19043v) + eVar2.f19045x;
                                        } else {
                                            eVar2.r = (rawX - i18) + eVar2.f19045x;
                                        }
                                    }
                                    if (rawY <= i18) {
                                        eVar2.f19040s = eVar2.f19045x;
                                    } else {
                                        int i20 = ((Point) eVar2.f19024a.f3937i.f18898e).y;
                                        if (rawY > i20 - i18) {
                                            eVar2.f19040s = (i20 - eVar2.f19043v) + eVar2.f19045x;
                                        } else {
                                            eVar2.f19040s = (rawY - i18) + eVar2.f19045x;
                                        }
                                    }
                                }
                                y3.a aVar2 = eVar2.f19024a.f3937i;
                                if (aVar2.f18894a) {
                                    int i21 = eVar2.r;
                                    FloatWindowInsets floatWindowInsets2 = (FloatWindowInsets) aVar2.f18897d;
                                    eVar2.r = i21 - floatWindowInsets2.left;
                                    eVar2.f19040s -= floatWindowInsets2.top;
                                }
                                WindowManager.LayoutParams layoutParams5 = eVar2.f19033j;
                                layoutParams5.x = eVar2.r;
                                layoutParams5.y = eVar2.f19040s;
                                eVar2.f19030g.updateViewLayout(view2, layoutParams5);
                            }
                        }
                        return true;
                }
            }
        });
        try {
            this.f19030g.addView(this.f19032i, this.f19033j);
            if (this.z) {
                this.f19030g.addView(this.f19031h, this.f19034k);
                ta.e eVar = this.f19024a.G;
                d dVar = this.C;
                eVar.removeCallbacks(dVar);
                this.f19024a.G.postDelayed(dVar, 60000);
            }
        } catch (Exception unused2) {
        }
    }

    public final void c() {
        if (this.z) {
            try {
                ta.e eVar = this.f19024a.G;
                d dVar = this.C;
                eVar.removeCallbacks(dVar);
                if (this.f19032i.getVisibility() == 8) {
                    this.f19032i.setVisibility(0);
                }
                this.f19032i.setImageAlpha(this.f19042u);
                this.f19024a.G.postDelayed(dVar, 60000);
            } catch (Exception unused) {
            }
        }
    }

    public final void d() {
        AccService accService = this.f19024a;
        if (accService == null) {
            return;
        }
        s sVarN = q4.a.n(accService);
        this.f19027d = sVarN;
        if (sVarN == null) {
            return;
        }
        e();
        if (this.f19027d.o("isOpen").b()) {
            a();
        }
    }

    public final void e() {
        if (this.f19032i != null) {
            try {
                this.f19024a.G.removeCallbacks(this.H);
                this.f19024a.G.removeCallbacks(this.C);
                this.f19024a.G.removeCallbacks(this.D);
                this.f19024a.G.removeCallbacks(this.E);
                this.f19024a.G.removeCallbacks(this.F);
            } catch (Exception unused) {
            }
        }
        try {
            View view = this.f19031h;
            if (view != null) {
                this.f19030g.removeView(view);
                this.f19031h = null;
            }
        } catch (Exception unused2) {
        }
        try {
            ImageView imageView = this.f19032i;
            if (imageView != null) {
                this.f19030g.removeView(imageView);
                this.f19032i = null;
            }
        } catch (Exception unused3) {
        }
    }

    public final void f(int i10) {
        ImageView imageView = this.f19032i;
        if (imageView == null || i10 <= 0) {
            return;
        }
        try {
            WindowManager.LayoutParams layoutParams = this.f19033j;
            layoutParams.width = i10;
            layoutParams.height = i10;
            if (i10 == this.f19043v) {
                int i11 = layoutParams.x;
                int i12 = this.f19045x;
                layoutParams.x = i11 - i12;
                layoutParams.y -= i12;
            } else {
                int i13 = layoutParams.x;
                int i14 = this.f19045x;
                layoutParams.x = i13 + i14;
                layoutParams.y += i14;
            }
            this.f19030g.updateViewLayout(imageView, layoutParams);
        } catch (Exception unused) {
        }
    }
}
