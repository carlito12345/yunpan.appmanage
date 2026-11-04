package v3;

import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.m1;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.R;
import j$.util.Objects;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import r1.c1;
import r1.w0;
import r1.x0;
import u7.y0;
import ua.g8;
import ua.z6;
import y1.v0;

/* loaded from: classes.dex */
public final class t extends FrameLayout {

    /* renamed from: y1, reason: collision with root package name */
    public static final float[] f16543y1;
    public final TextView A;
    public final TextView B;
    public final ImageView C;
    public final ImageView D;
    public final ImageView E;
    public final ImageView F;
    public final ImageView G;
    public final ImageView H;
    public final View I;
    public final View K;
    public final View L;
    public final TextView M;
    public final Drawable M0;
    public final TextView N;
    public final Drawable N0;
    public final l0 O;
    public final Drawable O0;
    public final StringBuilder P;
    public final String P0;
    public final String Q0;
    public final Formatter R;
    public final String R0;
    public final r1.o0 S;
    public final Drawable S0;
    public final r1.p0 T;
    public final Drawable T0;
    public final float U0;
    public final g8 V;
    public final float V0;
    public final String W0;
    public final String X0;
    public final Drawable Y0;
    public final Drawable Z0;

    /* renamed from: a, reason: collision with root package name */
    public final y f16544a;

    /* renamed from: a1, reason: collision with root package name */
    public final String f16545a1;

    /* renamed from: b, reason: collision with root package name */
    public final Resources f16546b;

    /* renamed from: b1, reason: collision with root package name */
    public final String f16547b1;

    /* renamed from: c, reason: collision with root package name */
    public final Handler f16548c;

    /* renamed from: c1, reason: collision with root package name */
    public final Drawable f16549c1;

    /* renamed from: d, reason: collision with root package name */
    public final h f16550d;

    /* renamed from: d1, reason: collision with root package name */
    public final Drawable f16551d1;

    /* renamed from: e, reason: collision with root package name */
    public final Class f16552e;

    /* renamed from: e1, reason: collision with root package name */
    public final String f16553e1;

    /* renamed from: f, reason: collision with root package name */
    public final Method f16554f;

    /* renamed from: f1, reason: collision with root package name */
    public final String f16555f1;

    /* renamed from: g, reason: collision with root package name */
    public final Method f16556g;
    public r1.m0 g1;

    /* renamed from: h, reason: collision with root package name */
    public final Class f16557h;

    /* renamed from: h0, reason: collision with root package name */
    public final Drawable f16558h0;

    /* renamed from: h1, reason: collision with root package name */
    public i f16559h1;

    /* renamed from: i, reason: collision with root package name */
    public final Method f16560i;

    /* renamed from: i1, reason: collision with root package name */
    public boolean f16561i1;

    /* renamed from: j, reason: collision with root package name */
    public final Method f16562j;

    /* renamed from: j1, reason: collision with root package name */
    public boolean f16563j1;

    /* renamed from: k, reason: collision with root package name */
    public final CopyOnWriteArrayList f16564k;

    /* renamed from: k1, reason: collision with root package name */
    public boolean f16565k1;
    public final RecyclerView l;

    /* renamed from: l1, reason: collision with root package name */
    public boolean f16566l1;

    /* renamed from: m, reason: collision with root package name */
    public final n f16567m;

    /* renamed from: m1, reason: collision with root package name */
    public boolean f16568m1;

    /* renamed from: n, reason: collision with root package name */
    public final k f16569n;

    /* renamed from: n1, reason: collision with root package name */
    public boolean f16570n1;

    /* renamed from: o1, reason: collision with root package name */
    public int f16571o1;

    /* renamed from: p, reason: collision with root package name */
    public final p f16572p;

    /* renamed from: p1, reason: collision with root package name */
    public boolean f16573p1;

    /* renamed from: q, reason: collision with root package name */
    public final g f16574q;

    /* renamed from: q1, reason: collision with root package name */
    public int f16575q1;
    public final l5.x r;

    /* renamed from: r1, reason: collision with root package name */
    public int f16576r1;

    /* renamed from: s, reason: collision with root package name */
    public final PopupWindow f16577s;

    /* renamed from: s1, reason: collision with root package name */
    public long[] f16578s1;

    /* renamed from: t, reason: collision with root package name */
    public final int f16579t;

    /* renamed from: t0, reason: collision with root package name */
    public final Drawable f16580t0;

    /* renamed from: t1, reason: collision with root package name */
    public boolean[] f16581t1;

    /* renamed from: u1, reason: collision with root package name */
    public final long[] f16582u1;

    /* renamed from: v, reason: collision with root package name */
    public final ImageView f16583v;

    /* renamed from: v1, reason: collision with root package name */
    public final boolean[] f16584v1;

    /* renamed from: w, reason: collision with root package name */
    public final ImageView f16585w;

    /* renamed from: w1, reason: collision with root package name */
    public long f16586w1;

    /* renamed from: x, reason: collision with root package name */
    public final ImageView f16587x;

    /* renamed from: x1, reason: collision with root package name */
    public boolean f16588x1;

    /* renamed from: y, reason: collision with root package name */
    public final View f16589y;
    public final View z;

    static {
        r1.z.a("media3.ui");
        f16543y1 = new float[]{0.25f, 0.5f, 0.75f, 1.0f, 1.25f, 1.5f, 2.0f};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Can't wrap try/catch for region: R(55:0|2|3|(2:98|4)|(2:102|5)|10|100|11|94|12|96|13|19|(1:21)|22|(1:25)|26|(1:29)|30|(1:32)|33|(1:35)|36|(1:38)|39|(1:41)(1:(1:43)(1:44))|45|(1:47)|48|(1:50)|51|(1:53)|54|(1:56)|57|(1:59)(1:60)|61|(1:63)(1:(1:65)(1:66))|67|(1:69)|70|(1:72)(1:(1:74)(1:75))|76|(1:78)|79|(1:81)|82|(1:84)|85|(1:87)|88|(1:90)|91|92|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(56:0|2|3|98|4|(2:102|5)|10|100|11|94|12|96|13|19|(1:21)|22|(1:25)|26|(1:29)|30|(1:32)|33|(1:35)|36|(1:38)|39|(1:41)(1:(1:43)(1:44))|45|(1:47)|48|(1:50)|51|(1:53)|54|(1:56)|57|(1:59)(1:60)|61|(1:63)(1:(1:65)(1:66))|67|(1:69)|70|(1:72)(1:(1:74)(1:75))|76|(1:78)|79|(1:81)|82|(1:84)|85|(1:87)|88|(1:90)|91|92|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00a4, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00a7, code lost:
    
        r3 = null;
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00aa, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x048a  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public t(ContextWrapper contextWrapper) throws NoSuchMethodException, Resources.NotFoundException, SecurityException, ClassNotFoundException {
        Method method;
        Method method2;
        ImageView imageView;
        ImageView imageView2;
        ImageView imageView3;
        View viewFindViewById;
        View viewFindViewById2;
        View viewFindViewById3;
        l0 l0Var;
        l0 l0Var2;
        ImageView imageView4;
        ImageView imageView5;
        ImageView imageView6;
        ImageView imageView7;
        Typeface typefaceC;
        ImageView imageView8;
        View view;
        ImageView imageView9;
        View view2;
        ImageView imageView10;
        ImageView imageView11;
        ImageView imageView12;
        super(contextWrapper, null, 0);
        int i10 = 6;
        int i11 = 1;
        this.f16566l1 = true;
        this.f16571o1 = 5000;
        this.f16576r1 = 0;
        this.f16575q1 = 200;
        LayoutInflater.from(contextWrapper).inflate(R.layout.exo_player_control_view, this);
        setDescendantFocusability(262144);
        this.f16550d = new h(this);
        this.f16564k = new CopyOnWriteArrayList();
        this.S = new r1.o0();
        this.T = new r1.p0();
        StringBuilder sb2 = new StringBuilder();
        this.P = sb2;
        this.R = new Formatter(sb2, Locale.getDefault());
        this.f16578s1 = new long[0];
        this.f16581t1 = new boolean[0];
        this.f16582u1 = new long[0];
        this.f16584v1 = new boolean[0];
        this.V = new g8(3, this);
        try {
            method = ExoPlayer.class.getMethod("setScrubbingModeEnabled", Boolean.TYPE);
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            method = null;
        }
        try {
            method2 = ExoPlayer.class.getMethod("isScrubbingModeEnabled", null);
        } catch (ClassNotFoundException | NoSuchMethodException unused2) {
            method2 = null;
            this.f16552e = ExoPlayer.class;
            this.f16554f = method;
            this.f16556g = method2;
            Class<?> cls = Class.forName("androidx.media3.transformer.CompositionPlayer");
            Method method3 = cls.getMethod("setScrubbingModeEnabled", Boolean.TYPE);
            Method method4 = cls.getMethod("isScrubbingModeEnabled", null);
            this.f16557h = cls;
            this.f16560i = method3;
            this.f16562j = method4;
            this.M = (TextView) findViewById(R.id.exo_duration);
            this.N = (TextView) findViewById(R.id.exo_position);
            imageView = (ImageView) findViewById(R.id.exo_subtitle);
            this.F = imageView;
            if (imageView != null) {
            }
            imageView2 = (ImageView) findViewById(R.id.exo_fullscreen);
            this.G = imageView2;
            z6 z6Var = new z6(i10, this);
            if (imageView2 != null) {
            }
            imageView3 = (ImageView) findViewById(R.id.exo_minimal_fullscreen);
            this.H = imageView3;
            z6 z6Var2 = new z6(i10, this);
            if (imageView3 != null) {
            }
            viewFindViewById = findViewById(R.id.exo_settings);
            this.I = viewFindViewById;
            if (viewFindViewById != null) {
            }
            viewFindViewById2 = findViewById(R.id.exo_playback_speed);
            this.K = viewFindViewById2;
            if (viewFindViewById2 != null) {
            }
            viewFindViewById3 = findViewById(R.id.exo_audio_track);
            this.L = viewFindViewById3;
            if (viewFindViewById3 != null) {
            }
            l0Var = (l0) findViewById(R.id.exo_progress);
            View viewFindViewById4 = findViewById(R.id.exo_progress_placeholder);
            if (l0Var != null) {
            }
            l0Var2 = this.O;
            if (l0Var2 != null) {
            }
            this.f16548c = u1.f0.k(null);
            Resources resources = contextWrapper.getResources();
            this.f16546b = resources;
            imageView4 = (ImageView) findViewById(R.id.exo_play_pause);
            this.f16587x = imageView4;
            if (imageView4 != null) {
            }
            imageView5 = (ImageView) findViewById(R.id.exo_prev);
            this.f16583v = imageView5;
            if (imageView5 != null) {
            }
            imageView6 = (ImageView) findViewById(R.id.exo_next);
            this.f16585w = imageView6;
            if (imageView6 != null) {
            }
            ThreadLocal threadLocal = o0.o.f11472a;
            if (contextWrapper.isRestricted()) {
            }
            imageView8 = (ImageView) findViewById(R.id.exo_rew);
            TextView textView = (TextView) findViewById(R.id.exo_rew_with_amount);
            if (imageView8 != null) {
            }
            view = this.z;
            if (view != null) {
            }
            imageView9 = (ImageView) findViewById(R.id.exo_ffwd);
            TextView textView2 = (TextView) findViewById(R.id.exo_ffwd_with_amount);
            if (imageView9 != null) {
            }
            view2 = this.f16589y;
            if (view2 != null) {
            }
            imageView10 = (ImageView) findViewById(R.id.exo_repeat_toggle);
            this.C = imageView10;
            if (imageView10 != null) {
            }
            imageView11 = (ImageView) findViewById(R.id.exo_shuffle);
            this.D = imageView11;
            if (imageView11 != null) {
            }
            this.U0 = resources.getInteger(R.integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
            this.V0 = resources.getInteger(R.integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
            imageView12 = (ImageView) findViewById(R.id.exo_vr);
            this.E = imageView12;
            if (imageView12 != null) {
            }
            y yVar = new y(this);
            this.f16544a = yVar;
            yVar.D = true;
            n nVar = new n(this, new String[]{resources.getString(R.string.exo_controls_playback_speed), resources.getString(R.string.exo_track_selection_title_audio)}, new Drawable[]{resources.getDrawable(R.drawable.exo_styled_controls_speed, contextWrapper.getTheme()), resources.getDrawable(R.drawable.exo_styled_controls_audiotrack, contextWrapper.getTheme())});
            this.f16567m = nVar;
            this.f16579t = resources.getDimensionPixelSize(R.dimen.exo_settings_offset);
            RecyclerView recyclerView = (RecyclerView) LayoutInflater.from(contextWrapper).inflate(R.layout.exo_styled_settings_list, (ViewGroup) null);
            this.l = recyclerView;
            recyclerView.setAdapter(nVar);
            getContext();
            recyclerView.setLayoutManager(new LinearLayoutManager());
            PopupWindow popupWindow = new PopupWindow((View) recyclerView, -2, -2, true);
            this.f16577s = popupWindow;
            popupWindow.setOnDismissListener(this.f16550d);
            this.f16588x1 = true;
            this.r = new l5.x(getResources());
            this.Y0 = resources.getDrawable(R.drawable.exo_styled_controls_subtitle_on, contextWrapper.getTheme());
            this.Z0 = resources.getDrawable(R.drawable.exo_styled_controls_subtitle_off, contextWrapper.getTheme());
            this.f16545a1 = resources.getString(R.string.exo_controls_cc_enabled_description);
            this.f16547b1 = resources.getString(R.string.exo_controls_cc_disabled_description);
            this.f16572p = new p(this);
            this.f16574q = new g(this);
            this.f16569n = new k(this, resources.getStringArray(R.array.exo_controls_playback_speeds), f16543y1);
            this.f16558h0 = resources.getDrawable(R.drawable.exo_styled_controls_play, contextWrapper.getTheme());
            this.f16580t0 = resources.getDrawable(R.drawable.exo_styled_controls_pause, contextWrapper.getTheme());
            this.f16549c1 = resources.getDrawable(R.drawable.exo_styled_controls_fullscreen_exit, contextWrapper.getTheme());
            this.f16551d1 = resources.getDrawable(R.drawable.exo_styled_controls_fullscreen_enter, contextWrapper.getTheme());
            this.M0 = resources.getDrawable(R.drawable.exo_styled_controls_repeat_off, contextWrapper.getTheme());
            this.N0 = resources.getDrawable(R.drawable.exo_styled_controls_repeat_one, contextWrapper.getTheme());
            this.O0 = resources.getDrawable(R.drawable.exo_styled_controls_repeat_all, contextWrapper.getTheme());
            this.S0 = resources.getDrawable(R.drawable.exo_styled_controls_shuffle_on, contextWrapper.getTheme());
            this.T0 = resources.getDrawable(R.drawable.exo_styled_controls_shuffle_off, contextWrapper.getTheme());
            this.f16553e1 = resources.getString(R.string.exo_controls_fullscreen_exit_description);
            this.f16555f1 = resources.getString(R.string.exo_controls_fullscreen_enter_description);
            this.P0 = resources.getString(R.string.exo_controls_repeat_off_description);
            this.Q0 = resources.getString(R.string.exo_controls_repeat_one_description);
            this.R0 = resources.getString(R.string.exo_controls_repeat_all_description);
            this.W0 = resources.getString(R.string.exo_controls_shuffle_on_description);
            this.X0 = resources.getString(R.string.exo_controls_shuffle_off_description);
            yVar.h((ViewGroup) findViewById(R.id.exo_bottom_bar), true);
            yVar.h(this.f16589y, true);
            yVar.h(this.z, true);
            yVar.h(imageView5, true);
            yVar.h(imageView7, true);
            yVar.h(imageView11, false);
            yVar.h(imageView, false);
            yVar.h(imageView12, false);
            yVar.h(imageView10, this.f16576r1 != 0);
            addOnLayoutChangeListener(new ub.a(i11, this));
        }
        this.f16552e = ExoPlayer.class;
        this.f16554f = method;
        this.f16556g = method2;
        Class<?> cls2 = Class.forName("androidx.media3.transformer.CompositionPlayer");
        Method method32 = cls2.getMethod("setScrubbingModeEnabled", Boolean.TYPE);
        Method method42 = cls2.getMethod("isScrubbingModeEnabled", null);
        this.f16557h = cls2;
        this.f16560i = method32;
        this.f16562j = method42;
        this.M = (TextView) findViewById(R.id.exo_duration);
        this.N = (TextView) findViewById(R.id.exo_position);
        imageView = (ImageView) findViewById(R.id.exo_subtitle);
        this.F = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(this.f16550d);
        }
        imageView2 = (ImageView) findViewById(R.id.exo_fullscreen);
        this.G = imageView2;
        z6 z6Var3 = new z6(i10, this);
        if (imageView2 != null) {
            imageView2.setVisibility(8);
            imageView2.setOnClickListener(z6Var3);
        }
        imageView3 = (ImageView) findViewById(R.id.exo_minimal_fullscreen);
        this.H = imageView3;
        z6 z6Var22 = new z6(i10, this);
        if (imageView3 != null) {
            imageView3.setVisibility(8);
            imageView3.setOnClickListener(z6Var22);
        }
        viewFindViewById = findViewById(R.id.exo_settings);
        this.I = viewFindViewById;
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(this.f16550d);
        }
        viewFindViewById2 = findViewById(R.id.exo_playback_speed);
        this.K = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(this.f16550d);
        }
        viewFindViewById3 = findViewById(R.id.exo_audio_track);
        this.L = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(this.f16550d);
        }
        l0Var = (l0) findViewById(R.id.exo_progress);
        View viewFindViewById42 = findViewById(R.id.exo_progress_placeholder);
        if (l0Var != null) {
            this.O = l0Var;
        } else if (viewFindViewById42 != null) {
            e eVar = new e(contextWrapper);
            eVar.setId(R.id.exo_progress);
            eVar.setLayoutParams(viewFindViewById42.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById42.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById42);
            viewGroup.removeView(viewFindViewById42);
            viewGroup.addView(eVar, iIndexOfChild);
            this.O = eVar;
        } else {
            this.O = null;
        }
        l0Var2 = this.O;
        if (l0Var2 != null) {
            h hVar = this.f16550d;
            hVar.getClass();
            ((e) l0Var2).z.add(hVar);
        }
        this.f16548c = u1.f0.k(null);
        Resources resources2 = contextWrapper.getResources();
        this.f16546b = resources2;
        imageView4 = (ImageView) findViewById(R.id.exo_play_pause);
        this.f16587x = imageView4;
        if (imageView4 != null) {
            imageView4.setOnClickListener(this.f16550d);
        }
        imageView5 = (ImageView) findViewById(R.id.exo_prev);
        this.f16583v = imageView5;
        if (imageView5 != null) {
            imageView5.setImageDrawable(resources2.getDrawable(R.drawable.exo_styled_controls_previous, contextWrapper.getTheme()));
            imageView5.setOnClickListener(this.f16550d);
        }
        imageView6 = (ImageView) findViewById(R.id.exo_next);
        this.f16585w = imageView6;
        if (imageView6 != null) {
            imageView6.setImageDrawable(resources2.getDrawable(R.drawable.exo_styled_controls_next, contextWrapper.getTheme()));
            imageView6.setOnClickListener(this.f16550d);
        }
        ThreadLocal threadLocal2 = o0.o.f11472a;
        if (contextWrapper.isRestricted()) {
            imageView7 = imageView6;
            typefaceC = null;
        } else {
            imageView7 = imageView6;
            typefaceC = o0.o.c(contextWrapper, R.font.roboto_medium_numbers, new TypedValue(), 0, null, false, false);
        }
        imageView8 = (ImageView) findViewById(R.id.exo_rew);
        TextView textView3 = (TextView) findViewById(R.id.exo_rew_with_amount);
        if (imageView8 != null) {
            imageView8.setImageDrawable(resources2.getDrawable(R.drawable.exo_styled_controls_simple_rewind, contextWrapper.getTheme()));
            this.z = imageView8;
            this.B = null;
        } else if (textView3 != null) {
            textView3.setTypeface(typefaceC);
            this.B = textView3;
            this.z = textView3;
        } else {
            this.B = null;
            this.z = null;
        }
        view = this.z;
        if (view != null) {
            view.setOnClickListener(this.f16550d);
        }
        imageView9 = (ImageView) findViewById(R.id.exo_ffwd);
        TextView textView22 = (TextView) findViewById(R.id.exo_ffwd_with_amount);
        if (imageView9 != null) {
            imageView9.setImageDrawable(resources2.getDrawable(R.drawable.exo_styled_controls_simple_fastforward, contextWrapper.getTheme()));
            this.f16589y = imageView9;
            this.A = null;
        } else if (textView22 != null) {
            textView22.setTypeface(typefaceC);
            this.A = textView22;
            this.f16589y = textView22;
        } else {
            this.A = null;
            this.f16589y = null;
        }
        view2 = this.f16589y;
        if (view2 != null) {
            view2.setOnClickListener(this.f16550d);
        }
        imageView10 = (ImageView) findViewById(R.id.exo_repeat_toggle);
        this.C = imageView10;
        if (imageView10 != null) {
            imageView10.setOnClickListener(this.f16550d);
        }
        imageView11 = (ImageView) findViewById(R.id.exo_shuffle);
        this.D = imageView11;
        if (imageView11 != null) {
            imageView11.setOnClickListener(this.f16550d);
        }
        this.U0 = resources2.getInteger(R.integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.V0 = resources2.getInteger(R.integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        imageView12 = (ImageView) findViewById(R.id.exo_vr);
        this.E = imageView12;
        if (imageView12 != null) {
            imageView12.setImageDrawable(resources2.getDrawable(R.drawable.exo_styled_controls_vr, contextWrapper.getTheme()));
            n(imageView12, false);
        }
        y yVar2 = new y(this);
        this.f16544a = yVar2;
        yVar2.D = true;
        n nVar2 = new n(this, new String[]{resources2.getString(R.string.exo_controls_playback_speed), resources2.getString(R.string.exo_track_selection_title_audio)}, new Drawable[]{resources2.getDrawable(R.drawable.exo_styled_controls_speed, contextWrapper.getTheme()), resources2.getDrawable(R.drawable.exo_styled_controls_audiotrack, contextWrapper.getTheme())});
        this.f16567m = nVar2;
        this.f16579t = resources2.getDimensionPixelSize(R.dimen.exo_settings_offset);
        RecyclerView recyclerView2 = (RecyclerView) LayoutInflater.from(contextWrapper).inflate(R.layout.exo_styled_settings_list, (ViewGroup) null);
        this.l = recyclerView2;
        recyclerView2.setAdapter(nVar2);
        getContext();
        recyclerView2.setLayoutManager(new LinearLayoutManager());
        PopupWindow popupWindow2 = new PopupWindow((View) recyclerView2, -2, -2, true);
        this.f16577s = popupWindow2;
        popupWindow2.setOnDismissListener(this.f16550d);
        this.f16588x1 = true;
        this.r = new l5.x(getResources());
        this.Y0 = resources2.getDrawable(R.drawable.exo_styled_controls_subtitle_on, contextWrapper.getTheme());
        this.Z0 = resources2.getDrawable(R.drawable.exo_styled_controls_subtitle_off, contextWrapper.getTheme());
        this.f16545a1 = resources2.getString(R.string.exo_controls_cc_enabled_description);
        this.f16547b1 = resources2.getString(R.string.exo_controls_cc_disabled_description);
        this.f16572p = new p(this);
        this.f16574q = new g(this);
        this.f16569n = new k(this, resources2.getStringArray(R.array.exo_controls_playback_speeds), f16543y1);
        this.f16558h0 = resources2.getDrawable(R.drawable.exo_styled_controls_play, contextWrapper.getTheme());
        this.f16580t0 = resources2.getDrawable(R.drawable.exo_styled_controls_pause, contextWrapper.getTheme());
        this.f16549c1 = resources2.getDrawable(R.drawable.exo_styled_controls_fullscreen_exit, contextWrapper.getTheme());
        this.f16551d1 = resources2.getDrawable(R.drawable.exo_styled_controls_fullscreen_enter, contextWrapper.getTheme());
        this.M0 = resources2.getDrawable(R.drawable.exo_styled_controls_repeat_off, contextWrapper.getTheme());
        this.N0 = resources2.getDrawable(R.drawable.exo_styled_controls_repeat_one, contextWrapper.getTheme());
        this.O0 = resources2.getDrawable(R.drawable.exo_styled_controls_repeat_all, contextWrapper.getTheme());
        this.S0 = resources2.getDrawable(R.drawable.exo_styled_controls_shuffle_on, contextWrapper.getTheme());
        this.T0 = resources2.getDrawable(R.drawable.exo_styled_controls_shuffle_off, contextWrapper.getTheme());
        this.f16553e1 = resources2.getString(R.string.exo_controls_fullscreen_exit_description);
        this.f16555f1 = resources2.getString(R.string.exo_controls_fullscreen_enter_description);
        this.P0 = resources2.getString(R.string.exo_controls_repeat_off_description);
        this.Q0 = resources2.getString(R.string.exo_controls_repeat_one_description);
        this.R0 = resources2.getString(R.string.exo_controls_repeat_all_description);
        this.W0 = resources2.getString(R.string.exo_controls_shuffle_on_description);
        this.X0 = resources2.getString(R.string.exo_controls_shuffle_off_description);
        yVar2.h((ViewGroup) findViewById(R.id.exo_bottom_bar), true);
        yVar2.h(this.f16589y, true);
        yVar2.h(this.z, true);
        yVar2.h(imageView5, true);
        yVar2.h(imageView7, true);
        yVar2.h(imageView11, false);
        yVar2.h(imageView, false);
        yVar2.h(imageView12, false);
        yVar2.h(imageView10, this.f16576r1 != 0);
        addOnLayoutChangeListener(new ub.a(i11, this));
    }

    public static void a(t tVar, r1.m0 m0Var, long j10) {
        if (tVar.f16568m1) {
            a.b bVar = (a.b) m0Var;
            if (bVar.i(17) && bVar.i(10)) {
                r1.q0 q0VarE = ((y1.x) bVar).E();
                int iO = q0VarE.o();
                int i10 = 0;
                while (true) {
                    long jR = u1.f0.R(q0VarE.m(i10, tVar.T, 0L).l);
                    if (j10 < jR) {
                        break;
                    }
                    if (i10 == iO - 1) {
                        j10 = jR;
                        break;
                    } else {
                        j10 -= jR;
                        i10++;
                    }
                }
                bVar.p(i10, j10, false);
            }
        } else {
            a.b bVar2 = (a.b) m0Var;
            if (bVar2.i(5)) {
                bVar2.p(((y1.x) bVar2).A(), j10, false);
            }
        }
        tVar.s();
    }

    public static boolean c(r1.m0 m0Var, r1.p0 p0Var) {
        r1.q0 q0VarE;
        int iO;
        a.b bVar = (a.b) m0Var;
        if (!bVar.i(17) || (iO = (q0VarE = ((y1.x) bVar).E()).o()) <= 1 || iO > 100) {
            return false;
        }
        for (int i10 = 0; i10 < iO; i10++) {
            if (q0VarE.m(i10, p0Var, 0L).l == -9223372036854775807L) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlaybackSpeed(float f10) {
        r1.m0 m0Var = this.g1;
        if (m0Var == null || !((a.b) m0Var).i(13)) {
            return;
        }
        y1.x xVar = (y1.x) this.g1;
        xVar.h0();
        r1.h0 h0Var = new r1.h0(f10, xVar.f18853f1.f18837o.f13453b);
        xVar.h0();
        if (xVar.f18853f1.f18837o.equals(h0Var)) {
            return;
        }
        v0 v0VarG = xVar.f18853f1.g(h0Var);
        xVar.M++;
        xVar.l.f18660h.b(4, h0Var).b();
        xVar.f0(v0VarG, 0, false, 5, -9223372036854775807L, -1, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean d(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        r1.m0 m0Var = this.g1;
        if (m0Var == null || !(keyCode == 90 || keyCode == 89 || keyCode == 85 || keyCode == 79 || keyCode == 126 || keyCode == 127 || keyCode == 87 || keyCode == 88)) {
            return false;
        }
        if (keyEvent.getAction() == 0) {
            if (keyCode == 90) {
                if (((y1.x) m0Var).J() != 4) {
                    a.b bVar = (a.b) m0Var;
                    if (bVar.i(12)) {
                        y1.x xVar = (y1.x) bVar;
                        xVar.h0();
                        bVar.r(12, xVar.f18847c1);
                    }
                }
            } else if (keyCode == 89) {
                a.b bVar2 = (a.b) m0Var;
                if (bVar2.i(11)) {
                    y1.x xVar2 = (y1.x) bVar2;
                    xVar2.h0();
                    bVar2.r(11, -xVar2.f18845b1);
                } else if (keyEvent.getRepeatCount() == 0) {
                    if (keyCode == 79 || keyCode == 85) {
                        if (u1.f0.O(m0Var, this.f16566l1)) {
                            u1.f0.y(m0Var);
                        } else {
                            a.b bVar3 = (a.b) m0Var;
                            if (bVar3.i(1)) {
                                y1.x xVar3 = (y1.x) bVar3;
                                xVar3.h0();
                                xVar3.e0(1, false);
                            }
                        }
                    } else if (keyCode == 87) {
                        a.b bVar4 = (a.b) m0Var;
                        if (bVar4.i(9)) {
                            bVar4.q();
                        }
                    } else if (keyCode == 88) {
                        a.b bVar5 = (a.b) m0Var;
                        if (bVar5.i(7)) {
                            bVar5.s();
                        }
                    } else if (keyCode == 126) {
                        u1.f0.y(m0Var);
                    } else if (keyCode == 127) {
                        String str = u1.f0.f15206a;
                        a.b bVar6 = (a.b) m0Var;
                        if (bVar6.i(1)) {
                            y1.x xVar4 = (y1.x) bVar6;
                            xVar4.h0();
                            xVar4.e0(1, false);
                        }
                    }
                }
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return d(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public final void e(m1 m1Var, View view) {
        this.l.setAdapter(m1Var);
        u();
        this.f16588x1 = false;
        PopupWindow popupWindow = this.f16577s;
        popupWindow.dismiss();
        this.f16588x1 = true;
        int width = getWidth() - popupWindow.getWidth();
        int i10 = this.f16579t;
        popupWindow.showAsDropDown(view, width - i10, (-popupWindow.getHeight()) - i10);
    }

    public final y0 f(x0 x0Var, int i10) {
        u7.q.c(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        u7.g0 g0Var = x0Var.f13625a;
        int i11 = 0;
        for (int i12 = 0; i12 < g0Var.size(); i12++) {
            w0 w0Var = (w0) g0Var.get(i12);
            if (w0Var.f13620b.f13555c == i10) {
                for (int i13 = 0; i13 < w0Var.f13619a; i13++) {
                    if (w0Var.b(i13)) {
                        r1.p pVar = w0Var.f13620b.f13556d[i13];
                        if ((pVar.f13514e & 2) == 0) {
                            q qVar = new q(x0Var, i12, i13, this.r.d(pVar));
                            int i14 = i11 + 1;
                            int iF = u7.a0.f(objArrCopyOf.length, i14);
                            if (iF > objArrCopyOf.length) {
                                objArrCopyOf = Arrays.copyOf(objArrCopyOf, iF);
                            }
                            objArrCopyOf[i11] = qVar;
                            i11 = i14;
                        }
                    }
                }
            }
        }
        return u7.g0.i(i11, objArrCopyOf);
    }

    public final void g() {
        y yVar = this.f16544a;
        int i10 = yVar.A;
        if (i10 == 3 || i10 == 2) {
            return;
        }
        yVar.f();
        if (!yVar.D) {
            yVar.i(2);
        } else if (yVar.A == 1) {
            yVar.f16611n.start();
        } else {
            yVar.f16612o.start();
        }
    }

    public r1.m0 getPlayer() {
        return this.g1;
    }

    public int getRepeatToggleModes() {
        return this.f16576r1;
    }

    public boolean getShowShuffleButton() {
        return this.f16544a.b(this.D);
    }

    public boolean getShowSubtitleButton() {
        return this.f16544a.b(this.F);
    }

    public int getShowTimeoutMs() {
        return this.f16571o1;
    }

    public boolean getShowVrButton() {
        return this.f16544a.b(this.E);
    }

    public final boolean h(r1.m0 m0Var) {
        Class cls;
        return (m0Var == null || (cls = this.f16557h) == null || !cls.isAssignableFrom(m0Var.getClass())) ? false : true;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    public final boolean i(r1.m0 m0Var) {
        Class cls;
        return (m0Var == null || (cls = this.f16552e) == null || !cls.isAssignableFrom(m0Var.getClass())) ? false : true;
    }

    public final boolean j() {
        y yVar = this.f16544a;
        return yVar.A == 0 && yVar.f16599a.l();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0026 A[Catch: InvocationTargetException -> 0x001c, IllegalAccessException -> 0x001e, TRY_LEAVE, TryCatch #2 {IllegalAccessException -> 0x001e, InvocationTargetException -> 0x001c, blocks: (B:2:0x0000, B:4:0x0007, B:11:0x0020, B:13:0x0026), top: B:20:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean k(r1.m0 m0Var) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            if (!i(m0Var)) {
                if (h(m0Var)) {
                }
                return false;
            }
            Method method = this.f16556g;
            method.getClass();
            Object objInvoke = method.invoke(m0Var, null);
            objInvoke.getClass();
            if (!((Boolean) objInvoke).booleanValue()) {
                if (h(m0Var)) {
                    Method method2 = this.f16562j;
                    method2.getClass();
                    Object objInvoke2 = method2.invoke(m0Var, null);
                    objInvoke2.getClass();
                    if (((Boolean) objInvoke2).booleanValue()) {
                    }
                }
                return false;
            }
            return true;
        } catch (IllegalAccessException e7) {
            e = e7;
            throw new RuntimeException(e);
        } catch (InvocationTargetException e10) {
            e = e10;
            throw new RuntimeException(e);
        }
    }

    public final boolean l() {
        return getVisibility() == 0;
    }

    public final void m() {
        q();
        p();
        t();
        v();
        x();
        r();
        w();
    }

    public final void n(View view, boolean z) {
        if (view == null) {
            return;
        }
        view.setEnabled(z);
        view.setAlpha(z ? this.U0 : this.V0);
    }

    public final void o(boolean z) {
        if (this.f16561i1 == z) {
            return;
        }
        this.f16561i1 = z;
        String str = this.f16555f1;
        Drawable drawable = this.f16551d1;
        String str2 = this.f16553e1;
        Drawable drawable2 = this.f16549c1;
        ImageView imageView = this.G;
        if (imageView != null) {
            if (z) {
                imageView.setImageDrawable(drawable2);
                imageView.setContentDescription(str2);
            } else {
                imageView.setImageDrawable(drawable);
                imageView.setContentDescription(str);
            }
        }
        ImageView imageView2 = this.H;
        if (imageView2 != null) {
            if (z) {
                imageView2.setImageDrawable(drawable2);
                imageView2.setContentDescription(str2);
            } else {
                imageView2.setImageDrawable(drawable);
                imageView2.setContentDescription(str);
            }
        }
        i iVar = this.f16559h1;
        if (iVar != null) {
            ((a0) iVar).f16413c.getClass();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        y yVar = this.f16544a;
        yVar.f16599a.addOnLayoutChangeListener(yVar.f16621y);
        this.f16563j1 = true;
        if (j()) {
            yVar.g();
        }
        m();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        y yVar = this.f16544a;
        yVar.f16599a.removeOnLayoutChangeListener(yVar.f16621y);
        this.f16563j1 = false;
        removeCallbacks(this.V);
        yVar.f();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        super.onLayout(z, i10, i11, i12, i13);
        View view = this.f16544a.f16600b;
        if (view != null) {
            view.layout(0, 0, i12 - i10, i13 - i11);
        }
    }

    public final void p() {
        boolean zI;
        boolean zI2;
        boolean zI3;
        boolean zI4;
        boolean zI5;
        long j10;
        long j11;
        if (l() && this.f16563j1) {
            r1.m0 m0Var = this.g1;
            if (m0Var != null) {
                zI2 = (this.f16565k1 && c(m0Var, this.T)) ? ((a.b) m0Var).i(10) : ((a.b) m0Var).i(5);
                a.b bVar = (a.b) m0Var;
                zI3 = bVar.i(7);
                zI4 = bVar.i(11);
                zI5 = bVar.i(12);
                zI = bVar.i(9);
            } else {
                zI = false;
                zI2 = false;
                zI3 = false;
                zI4 = false;
                zI5 = false;
            }
            Resources resources = this.f16546b;
            View view = this.z;
            if (zI4) {
                r1.m0 m0Var2 = this.g1;
                if (m0Var2 != null) {
                    y1.x xVar = (y1.x) m0Var2;
                    xVar.h0();
                    j11 = xVar.f18845b1;
                } else {
                    j11 = PopupConst.DURATION_POPUP;
                }
                int i10 = (int) (j11 / 1000);
                TextView textView = this.B;
                if (textView != null) {
                    textView.setText(String.valueOf(i10));
                }
                if (view != null) {
                    view.setContentDescription(resources.getQuantityString(R.plurals.exo_controls_rewind_by_amount_description, i10, Integer.valueOf(i10)));
                }
            }
            View view2 = this.f16589y;
            if (zI5) {
                r1.m0 m0Var3 = this.g1;
                if (m0Var3 != null) {
                    y1.x xVar2 = (y1.x) m0Var3;
                    xVar2.h0();
                    j10 = xVar2.f18847c1;
                } else {
                    j10 = 15000;
                }
                int i11 = (int) (j10 / 1000);
                TextView textView2 = this.A;
                if (textView2 != null) {
                    textView2.setText(String.valueOf(i11));
                }
                if (view2 != null) {
                    view2.setContentDescription(resources.getQuantityString(R.plurals.exo_controls_fastforward_by_amount_description, i11, Integer.valueOf(i11)));
                }
            }
            n(this.f16583v, zI3);
            n(view, zI4);
            n(view2, zI5);
            n(this.f16585w, zI);
            l0 l0Var = this.O;
            if (l0Var != null) {
                ((e) l0Var).setEnabled(zI2);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void q() {
        ImageView imageView;
        if (l() && this.f16563j1 && (imageView = this.f16587x) != null) {
            boolean zO = u1.f0.O(this.g1, this.f16566l1);
            Drawable drawable = zO ? this.f16558h0 : this.f16580t0;
            int i10 = zO ? R.string.exo_controls_play_description : R.string.exo_controls_pause_description;
            imageView.setImageDrawable(drawable);
            imageView.setContentDescription(this.f16546b.getString(i10));
            r1.m0 m0Var = this.g1;
            boolean z = false;
            if (m0Var != null) {
                int iJ = ((y1.x) m0Var).J();
                a.b bVar = (a.b) m0Var;
                if (bVar.i(16)) {
                    y1.x xVar = (y1.x) bVar;
                    r1.q0 q0VarE = xVar.E();
                    boolean z4 = (q0VarE.p() ? null : q0VarE.m(xVar.A(), (r1.p0) bVar.f1a, 0L).f13537c) != null;
                    boolean zI = bVar.i(1);
                    boolean z10 = iJ == 1 && bVar.i(2);
                    boolean z11 = iJ == 4 && bVar.i(4);
                    if (z4 && (zI || z10 || z11)) {
                        z = true;
                    }
                }
            }
            n(imageView, z);
        }
    }

    public final void r() {
        k kVar;
        r1.m0 m0Var = this.g1;
        if (m0Var == null) {
            return;
        }
        y1.x xVar = (y1.x) m0Var;
        xVar.h0();
        float f10 = xVar.f18853f1.f18837o.f13452a;
        float f11 = Float.MAX_VALUE;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            kVar = this.f16569n;
            float[] fArr = kVar.f16515e;
            if (i10 >= fArr.length) {
                break;
            }
            float fAbs = Math.abs(f10 - fArr[i10]);
            if (fAbs < f11) {
                i11 = i10;
                f11 = fAbs;
            }
            i10++;
        }
        kVar.f16516f = i11;
        String str = kVar.f16514d[i11];
        n nVar = this.f16567m;
        nVar.f16523e[0] = str;
        n(this.I, nVar.p(1) || nVar.p(0));
    }

    public final void s() {
        long jX;
        long jW;
        if (l() && this.f16563j1) {
            r1.m0 m0Var = this.g1;
            if (m0Var == null || !((a.b) m0Var).i(16)) {
                jX = 0;
                jW = 0;
            } else {
                long j10 = this.f16586w1;
                y1.x xVar = (y1.x) m0Var;
                xVar.h0();
                jX = xVar.x(xVar.f18853f1) + j10;
                jW = xVar.w() + this.f16586w1;
            }
            TextView textView = this.N;
            if (textView != null && !this.f16570n1) {
                textView.setText(u1.f0.u(this.P, this.R, jX));
            }
            l0 l0Var = this.O;
            if (l0Var != null) {
                e eVar = (e) l0Var;
                eVar.setPosition(jX);
                if (k(m0Var)) {
                    jW = jX;
                }
                eVar.setBufferedPosition(jW);
            }
            g8 g8Var = this.V;
            removeCallbacks(g8Var);
            int iJ = m0Var == null ? 1 : ((y1.x) m0Var).J();
            if (m0Var == null || !((a.b) m0Var).n()) {
                if (iJ == 4 || iJ == 1) {
                    return;
                }
                postDelayed(g8Var, 1000L);
                return;
            }
            long jMin = Math.min(l0Var != null ? ((e) l0Var).getPreferredUpdateDelay() : 1000L, 1000 - (jX % 1000));
            y1.x xVar2 = (y1.x) m0Var;
            xVar2.h0();
            float f10 = xVar2.f18853f1.f18837o.f13452a;
            postDelayed(g8Var, u1.f0.h(f10 > 0.0f ? (long) (jMin / f10) : 1000L, this.f16575q1, 1000L));
        }
    }

    public void setAnimationEnabled(boolean z) {
        this.f16544a.D = z;
    }

    public void setMediaRouteButtonViewProvider(c1 c1Var) {
        View viewFindViewById = findViewById(R.id.exo_media_route_button_placeholder);
        if (viewFindViewById == null) {
            throw new IllegalStateException("The media route button placeholder is missing.");
        }
        if (c1Var == null) {
            viewFindViewById.setVisibility(8);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
        if (viewGroup == null) {
            throw new IllegalStateException("The media route button placeholder has no parent view.");
        }
        y7.c view = c1Var.getView();
        f fVar = new f(this, viewFindViewById, viewGroup, 0);
        Handler handler = this.f16548c;
        Objects.requireNonNull(handler);
        a2.y0 y0Var = new a2.y0(0, handler);
        y7.b bVar = new y7.b(view, 0, fVar);
        c0.g gVar = (c0.g) view;
        gVar.getClass();
        c0.c cVar = gVar.f2840b;
        c0.c cVar2 = c0.c.f2824d;
        if (cVar != cVar2) {
            c0.c cVar3 = new c0.c(bVar, y0Var);
            do {
                cVar3.f2827c = cVar;
                if (c0.g.f2837f.f(gVar, cVar, cVar3)) {
                    return;
                } else {
                    cVar = gVar.f2840b;
                }
            } while (cVar != cVar2);
        }
        c0.g.c(bVar, y0Var);
    }

    @Deprecated
    public void setOnFullScreenModeChangedListener(i iVar) {
        this.f16559h1 = iVar;
        boolean z = iVar != null;
        ImageView imageView = this.G;
        if (imageView != null) {
            if (z) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
        }
        boolean z4 = iVar != null;
        ImageView imageView2 = this.H;
        if (imageView2 == null) {
            return;
        }
        if (z4) {
            imageView2.setVisibility(0);
        } else {
            imageView2.setVisibility(8);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setPlayer(r1.m0 m0Var) {
        boolean z;
        a9.o.t(Looper.myLooper() == Looper.getMainLooper());
        if (m0Var != null) {
            z = ((y1.x) m0Var).f18868v == Looper.getMainLooper();
        }
        a9.o.k(z);
        r1.m0 m0Var2 = this.g1;
        if (m0Var2 == m0Var) {
            return;
        }
        h hVar = this.f16550d;
        if (m0Var2 != null) {
            ((y1.x) m0Var2).U(hVar);
        }
        this.g1 = m0Var;
        if (m0Var != null) {
            hVar.getClass();
            ((y1.x) m0Var).f18861m.a(hVar);
        }
        m();
    }

    public void setRepeatToggleModes(int i10) {
        this.f16576r1 = i10;
        r1.m0 m0Var = this.g1;
        if (m0Var != null && ((a.b) m0Var).i(15)) {
            y1.x xVar = (y1.x) this.g1;
            xVar.h0();
            int i11 = xVar.K;
            if (i10 == 0 && i11 != 0) {
                ((y1.x) this.g1).Z(0);
            } else if (i10 == 1 && i11 == 2) {
                ((y1.x) this.g1).Z(1);
            } else if (i10 == 2 && i11 == 1) {
                ((y1.x) this.g1).Z(2);
            }
        }
        this.f16544a.h(this.C, i10 != 0);
        t();
    }

    public void setShowFastForwardButton(boolean z) {
        this.f16544a.h(this.f16589y, z);
        p();
    }

    @Deprecated
    public void setShowMultiWindowTimeBar(boolean z) {
        this.f16565k1 = z;
        w();
    }

    public void setShowNextButton(boolean z) {
        this.f16544a.h(this.f16585w, z);
        p();
    }

    public void setShowPlayButtonIfPlaybackIsSuppressed(boolean z) {
        this.f16566l1 = z;
        q();
    }

    public void setShowPreviousButton(boolean z) {
        this.f16544a.h(this.f16583v, z);
        p();
    }

    public void setShowRewindButton(boolean z) {
        this.f16544a.h(this.z, z);
        p();
    }

    public void setShowShuffleButton(boolean z) {
        this.f16544a.h(this.D, z);
        v();
    }

    public void setShowSubtitleButton(boolean z) {
        this.f16544a.h(this.F, z);
    }

    public void setShowTimeoutMs(int i10) {
        this.f16571o1 = i10;
        if (j()) {
            this.f16544a.g();
        }
    }

    public void setShowVrButton(boolean z) {
        this.f16544a.h(this.E, z);
    }

    public void setTimeBarMinUpdateInterval(int i10) {
        this.f16575q1 = u1.f0.g(i10, 16, 1000);
    }

    public void setTimeBarScrubbingEnabled(boolean z) {
        this.f16573p1 = z;
    }

    public void setVrButtonListener(View.OnClickListener onClickListener) {
        ImageView imageView = this.E;
        if (imageView != null) {
            imageView.setOnClickListener(onClickListener);
            n(imageView, onClickListener != null);
        }
    }

    public final void t() {
        ImageView imageView;
        if (l() && this.f16563j1 && (imageView = this.C) != null) {
            if (this.f16576r1 == 0) {
                n(imageView, false);
                return;
            }
            r1.m0 m0Var = this.g1;
            String str = this.P0;
            Drawable drawable = this.M0;
            if (m0Var == null || !((a.b) m0Var).i(15)) {
                n(imageView, false);
                imageView.setImageDrawable(drawable);
                imageView.setContentDescription(str);
                return;
            }
            n(imageView, true);
            y1.x xVar = (y1.x) m0Var;
            xVar.h0();
            int i10 = xVar.K;
            if (i10 == 0) {
                imageView.setImageDrawable(drawable);
                imageView.setContentDescription(str);
            } else if (i10 == 1) {
                imageView.setImageDrawable(this.N0);
                imageView.setContentDescription(this.Q0);
            } else {
                if (i10 != 2) {
                    return;
                }
                imageView.setImageDrawable(this.O0);
                imageView.setContentDescription(this.R0);
            }
        }
    }

    public final void u() {
        RecyclerView recyclerView = this.l;
        recyclerView.measure(0, 0);
        int width = getWidth();
        int i10 = this.f16579t;
        int iMin = Math.min(recyclerView.getMeasuredWidth(), width - (i10 * 2));
        PopupWindow popupWindow = this.f16577s;
        popupWindow.setWidth(iMin);
        popupWindow.setHeight(Math.min(getHeight() - (i10 * 2), recyclerView.getMeasuredHeight()));
    }

    public final void v() {
        ImageView imageView;
        if (l() && this.f16563j1 && (imageView = this.D) != null) {
            r1.m0 m0Var = this.g1;
            if (!this.f16544a.b(imageView)) {
                n(imageView, false);
                return;
            }
            String str = this.X0;
            Drawable drawable = this.T0;
            if (m0Var == null || !((a.b) m0Var).i(14)) {
                n(imageView, false);
                imageView.setImageDrawable(drawable);
                imageView.setContentDescription(str);
                return;
            }
            n(imageView, true);
            y1.x xVar = (y1.x) m0Var;
            xVar.h0();
            if (xVar.L) {
                drawable = this.S0;
            }
            imageView.setImageDrawable(drawable);
            xVar.h0();
            if (xVar.L) {
                str = this.W0;
            }
            imageView.setContentDescription(str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0140  */
    /* JADX WARN: Type inference failed for: r8v6, types: [r1.q0] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void w() {
        long jG;
        int i10;
        int i11;
        int i12;
        boolean z;
        r1.m0 m0Var = this.g1;
        if (m0Var == null) {
            return;
        }
        boolean z4 = this.f16565k1;
        boolean z10 = false;
        boolean z11 = true;
        r1.p0 p0Var = this.T;
        this.f16568m1 = z4 && c(m0Var, p0Var);
        this.f16586w1 = 0L;
        a.b bVar = (a.b) m0Var;
        r1.n0 n0VarE = bVar.i(17) ? ((y1.x) m0Var).E() : r1.q0.f13551a;
        long j10 = -9223372036854775807L;
        if (!n0VarE.p()) {
            int iA = ((y1.x) m0Var).A();
            boolean z12 = this.f16568m1;
            int i13 = z12 ? 0 : iA;
            int iO = z12 ? n0VarE.o() - 1 : iA;
            long j11 = 0;
            i10 = 0;
            while (true) {
                if (i13 > iO) {
                    break;
                }
                if (i13 == iA) {
                    this.f16586w1 = u1.f0.R(j11);
                }
                n0VarE.n(i13, p0Var);
                if (p0Var.l == j10) {
                    a9.o.t(this.f16568m1 ^ z11);
                    break;
                }
                int i14 = p0Var.f13546m;
                boolean z13 = z10;
                while (i14 <= p0Var.f13547n) {
                    r1.o0 o0Var = this.S;
                    n0VarE.f(i14, o0Var, z13);
                    r1.c cVar = o0Var.f13509g;
                    cVar.getClass();
                    for (int i15 = z13; i15 < cVar.f13424a; i15++) {
                        o0Var.d(i15);
                        long j12 = o0Var.f13507e;
                        if (j12 >= 0) {
                            long[] jArr = this.f16578s1;
                            i11 = iA;
                            if (i10 == jArr.length) {
                                int length = jArr.length == 0 ? 1 : jArr.length * 2;
                                this.f16578s1 = Arrays.copyOf(jArr, length);
                                this.f16581t1 = Arrays.copyOf(this.f16581t1, length);
                            }
                            this.f16578s1[i10] = u1.f0.R(j12 + j11);
                            boolean[] zArr = this.f16581t1;
                            r1.a aVarA = o0Var.f13509g.a(i15);
                            int i16 = aVarA.f13363a;
                            if (i16 == -1) {
                                i12 = iO;
                            } else {
                                int i17 = 0;
                                while (i17 < i16) {
                                    i12 = iO;
                                    int i18 = aVarA.f13367e[i17];
                                    if (i18 != 0) {
                                        r1.a aVar = aVarA;
                                        z11 = true;
                                        if (i18 == 1) {
                                            z = true;
                                            break;
                                        } else {
                                            i17++;
                                            iO = i12;
                                            aVarA = aVar;
                                        }
                                    }
                                }
                                i12 = iO;
                                z11 = true;
                                z = false;
                                zArr[i10] = !z;
                                i10++;
                            }
                            z11 = true;
                            z = true;
                            zArr[i10] = !z;
                            i10++;
                        } else {
                            i11 = iA;
                            i12 = iO;
                        }
                        iA = i11;
                        iO = i12;
                    }
                    i14++;
                    z13 = false;
                }
                j11 += p0Var.l;
                i13++;
                iA = iA;
                iO = iO;
                z10 = false;
                j10 = -9223372036854775807L;
            }
            jG = j11;
        } else if (bVar.i(16)) {
            long jG2 = bVar.g();
            jG = jG2 != -9223372036854775807L ? u1.f0.G(jG2) : 0L;
            i10 = 0;
        }
        long jR = u1.f0.R(jG);
        TextView textView = this.M;
        if (textView != null) {
            textView.setText(u1.f0.u(this.P, this.R, jR));
        }
        l0 l0Var = this.O;
        if (l0Var != null) {
            e eVar = (e) l0Var;
            eVar.setDuration(jR);
            long[] jArr2 = this.f16582u1;
            int length2 = jArr2.length;
            int i19 = i10 + length2;
            long[] jArr3 = this.f16578s1;
            if (i19 > jArr3.length) {
                this.f16578s1 = Arrays.copyOf(jArr3, i19);
                this.f16581t1 = Arrays.copyOf(this.f16581t1, i19);
            }
            System.arraycopy(jArr2, 0, this.f16578s1, i10, length2);
            System.arraycopy(this.f16584v1, 0, this.f16581t1, i10, length2);
            long[] jArr4 = this.f16578s1;
            boolean[] zArr2 = this.f16581t1;
            if (i19 != 0 && (jArr4 == null || zArr2 == null)) {
                z11 = false;
            }
            a9.o.k(z11);
            eVar.P = i19;
            eVar.R = jArr4;
            eVar.S = zArr2;
            eVar.e();
        }
        s();
    }

    public final void x() {
        p pVar = this.f16572p;
        pVar.getClass();
        pVar.f16541d = Collections.emptyList();
        g gVar = this.f16574q;
        gVar.getClass();
        gVar.f16541d = Collections.emptyList();
        r1.m0 m0Var = this.g1;
        ImageView imageView = this.F;
        if (m0Var != null && ((a.b) m0Var).i(30) && ((a.b) this.g1).i(29)) {
            x0 x0VarF = ((y1.x) this.g1).F();
            y0 y0VarF = f(x0VarF, 1);
            gVar.f16541d = y0VarF;
            t tVar = gVar.f16478f;
            r1.m0 m0Var2 = tVar.g1;
            m0Var2.getClass();
            r1.v0 v0VarM = ((y1.x) m0Var2).M();
            boolean zIsEmpty = y0VarF.isEmpty();
            n nVar = tVar.f16567m;
            if (!zIsEmpty) {
                if (gVar.s(v0VarM)) {
                    int i10 = 0;
                    while (true) {
                        if (i10 >= y0VarF.f15551d) {
                            break;
                        }
                        q qVar = (q) y0VarF.get(i10);
                        if (qVar.f16532a.f13623e[qVar.f16533b]) {
                            nVar.f16523e[1] = qVar.f16534c;
                            break;
                        }
                        i10++;
                    }
                } else {
                    nVar.f16523e[1] = tVar.getResources().getString(R.string.exo_track_selection_auto);
                }
            } else {
                nVar.f16523e[1] = tVar.getResources().getString(R.string.exo_track_selection_none);
            }
            if (this.f16544a.b(imageView)) {
                pVar.s(f(x0VarF, 3));
            } else {
                pVar.s(y0.f15549e);
            }
        }
        n(imageView, pVar.b() > 0);
        n nVar2 = this.f16567m;
        n(this.I, nVar2.p(1) || nVar2.p(0));
    }

    public void setProgressUpdateListener(l lVar) {
    }
}
