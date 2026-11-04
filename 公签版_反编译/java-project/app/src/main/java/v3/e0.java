package v3;

import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.window.SurfaceSyncGroup;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.image.ImageOutput;
import androidx.media3.ui.AspectRatioFrameLayout;
import androidx.media3.ui.SubtitleView;
import com.yunpan.appmanage.R;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;
import r1.b1;
import r1.c1;
import r1.w0;
import r1.x0;
import y1.y0;

/* loaded from: classes.dex */
public final class e0 extends FrameLayout {
    public int A;
    public boolean B;
    public CharSequence C;
    public int D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;

    /* renamed from: a, reason: collision with root package name */
    public final a0 f16451a;

    /* renamed from: b, reason: collision with root package name */
    public final AspectRatioFrameLayout f16452b;

    /* renamed from: c, reason: collision with root package name */
    public final View f16453c;

    /* renamed from: d, reason: collision with root package name */
    public final View f16454d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f16455e;

    /* renamed from: f, reason: collision with root package name */
    public final d0 f16456f;

    /* renamed from: g, reason: collision with root package name */
    public final ImageView f16457g;

    /* renamed from: h, reason: collision with root package name */
    public final ImageView f16458h;

    /* renamed from: i, reason: collision with root package name */
    public final SubtitleView f16459i;

    /* renamed from: j, reason: collision with root package name */
    public final View f16460j;

    /* renamed from: k, reason: collision with root package name */
    public final TextView f16461k;
    public final t l;

    /* renamed from: m, reason: collision with root package name */
    public final FrameLayout f16462m;

    /* renamed from: n, reason: collision with root package name */
    public final FrameLayout f16463n;

    /* renamed from: p, reason: collision with root package name */
    public final Handler f16464p;

    /* renamed from: q, reason: collision with root package name */
    public final Class f16465q;
    public final Method r;

    /* renamed from: s, reason: collision with root package name */
    public final Object f16466s;

    /* renamed from: t, reason: collision with root package name */
    public r1.m0 f16467t;

    /* renamed from: v, reason: collision with root package name */
    public boolean f16468v;

    /* renamed from: w, reason: collision with root package name */
    public s f16469w;

    /* renamed from: x, reason: collision with root package name */
    public int f16470x;

    /* renamed from: y, reason: collision with root package name */
    public int f16471y;
    public Drawable z;

    public e0(ContextWrapper contextWrapper) throws NoSuchMethodException, SecurityException, IllegalArgumentException {
        Class<ExoPlayer> cls;
        Object objNewProxyInstance;
        Method method;
        super(contextWrapper, null, 0);
        a0 a0Var = new a0(this);
        this.f16451a = a0Var;
        this.f16464p = new Handler(Looper.getMainLooper());
        if (isInEditMode()) {
            this.f16452b = null;
            this.f16453c = null;
            this.f16454d = null;
            this.f16455e = false;
            this.f16456f = null;
            this.f16457g = null;
            this.f16458h = null;
            this.f16459i = null;
            this.f16460j = null;
            this.f16461k = null;
            this.l = null;
            this.f16462m = null;
            this.f16463n = null;
            this.f16465q = null;
            this.r = null;
            this.f16466s = null;
            ImageView imageView = new ImageView(contextWrapper);
            Resources resources = getResources();
            imageView.setImageDrawable(resources.getDrawable(R.drawable.exo_edit_mode_logo, contextWrapper.getTheme()));
            imageView.setBackgroundColor(resources.getColor(R.color.exo_edit_mode_background_color, null));
            addView(imageView);
            return;
        }
        LayoutInflater.from(contextWrapper).inflate(R.layout.exo_player_view, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(R.id.exo_content_frame);
        this.f16452b = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setResizeMode(0);
        }
        this.f16453c = findViewById(R.id.exo_shutter);
        if (aspectRatioFrameLayout != null) {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            SurfaceView surfaceView = new SurfaceView(contextWrapper);
            if (Build.VERSION.SDK_INT >= 34) {
                surfaceView.setSurfaceLifecycle(2);
            }
            this.f16454d = surfaceView;
            surfaceView.setLayoutParams(layoutParams);
            surfaceView.setOnClickListener(a0Var);
            surfaceView.setClickable(false);
            aspectRatioFrameLayout.addView(surfaceView, 0);
        } else {
            this.f16454d = null;
        }
        this.f16455e = false;
        this.f16456f = Build.VERSION.SDK_INT == 34 ? new d0() : null;
        this.f16462m = (FrameLayout) findViewById(R.id.exo_ad_overlay);
        this.f16463n = (FrameLayout) findViewById(R.id.exo_overlay);
        this.f16457g = (ImageView) findViewById(R.id.exo_image);
        this.f16471y = 0;
        try {
            cls = ExoPlayer.class;
            method = cls.getMethod("setImageOutput", ImageOutput.class);
            objNewProxyInstance = Proxy.newProxyInstance(ImageOutput.class.getClassLoader(), new Class[]{ImageOutput.class}, new InvocationHandler() { // from class: v3.z
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj, Method method2, Object[] objArr) {
                    e0 e0Var = this.f16622a;
                    e0Var.getClass();
                    if (!method2.getName().equals("onImageAvailable")) {
                        return null;
                    }
                    e0Var.f16464p.post(new s1.f(e0Var, 11, (Bitmap) objArr[1]));
                    return null;
                }
            });
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            cls = null;
            objNewProxyInstance = null;
            method = null;
        }
        this.f16465q = cls;
        this.r = method;
        this.f16466s = objNewProxyInstance;
        ImageView imageView2 = (ImageView) findViewById(R.id.exo_artwork);
        this.f16458h = imageView2;
        this.f16470x = imageView2 != null ? 1 : 0;
        SubtitleView subtitleView = (SubtitleView) findViewById(R.id.exo_subtitles);
        this.f16459i = subtitleView;
        if (subtitleView != null) {
            subtitleView.a();
            subtitleView.b();
        }
        View viewFindViewById = findViewById(R.id.exo_buffering);
        this.f16460j = viewFindViewById;
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
        this.A = 0;
        TextView textView = (TextView) findViewById(R.id.exo_error_message);
        this.f16461k = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        t tVar = (t) findViewById(R.id.exo_controller);
        View viewFindViewById2 = findViewById(R.id.exo_controller_placeholder);
        if (tVar != null) {
            this.l = tVar;
        } else if (viewFindViewById2 != null) {
            t tVar2 = new t(contextWrapper);
            this.l = tVar2;
            tVar2.setId(R.id.exo_controller);
            tVar2.setLayoutParams(viewFindViewById2.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById2.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById2);
            viewGroup.removeView(viewFindViewById2);
            viewGroup.addView(tVar2, iIndexOfChild);
        } else {
            this.l = null;
        }
        t tVar3 = this.l;
        this.D = tVar3 != null ? 5000 : 0;
        this.G = true;
        this.E = true;
        this.F = true;
        this.f16468v = tVar3 != null;
        if (tVar3 != null) {
            y yVar = tVar3.f16544a;
            int i10 = yVar.A;
            if (i10 != 3 && i10 != 2) {
                yVar.f();
                yVar.i(2);
            }
            t tVar4 = this.l;
            a0 a0Var2 = this.f16451a;
            tVar4.getClass();
            a0Var2.getClass();
            tVar4.f16564k.add(a0Var2);
        }
        setClickable(true);
        m();
    }

    public static void a(e0 e0Var, Bitmap bitmap) {
        e0Var.getClass();
        e0Var.setImage(new BitmapDrawable(e0Var.getResources(), bitmap));
        if (e0Var.c()) {
            return;
        }
        ImageView imageView = e0Var.f16457g;
        if (imageView != null) {
            imageView.setVisibility(0);
            e0Var.p();
        }
        View view = e0Var.f16453c;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    private void setImage(Drawable drawable) {
        ImageView imageView = this.f16457g;
        if (imageView == null) {
            return;
        }
        imageView.setImageDrawable(drawable);
        p();
    }

    private void setImageOutput(r1.m0 m0Var) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Class cls = this.f16465q;
        if (cls == null || !cls.isAssignableFrom(m0Var.getClass())) {
            return;
        }
        try {
            Method method = this.r;
            method.getClass();
            Object obj = this.f16466s;
            obj.getClass();
            method.invoke(m0Var, obj);
        } catch (IllegalAccessException | InvocationTargetException e7) {
            throw new RuntimeException(e7);
        }
    }

    public final boolean b() {
        r1.m0 m0Var = this.f16467t;
        return m0Var != null && this.f16466s != null && ((a.b) m0Var).i(30) && ((y1.x) m0Var).F().a(4);
    }

    public final boolean c() {
        r1.m0 m0Var = this.f16467t;
        return m0Var != null && ((a.b) m0Var).i(30) && ((y1.x) m0Var).F().a(2);
    }

    public final void d() {
        ImageView imageView = this.f16457g;
        if (imageView != null) {
            imageView.setVisibility(4);
        }
        if (imageView != null) {
            imageView.setImageResource(android.R.color.transparent);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        d0 d0Var;
        SurfaceSyncGroup surfaceSyncGroup;
        super.dispatchDraw(canvas);
        if (Build.VERSION.SDK_INT != 34 || (d0Var = this.f16456f) == null || !this.H || (surfaceSyncGroup = d0Var.f16429a) == null) {
            return;
        }
        surfaceSyncGroup.markSyncReady();
        d0Var.f16429a = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        r1.m0 m0Var = this.f16467t;
        if (m0Var != null && ((a.b) m0Var).i(16) && ((y1.x) this.f16467t).N()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        int keyCode = keyEvent.getKeyCode();
        boolean z = keyCode == 19 || keyCode == 270 || keyCode == 22 || keyCode == 271 || keyCode == 20 || keyCode == 269 || keyCode == 21 || keyCode == 268 || keyCode == 23;
        t tVar = this.l;
        if (z && q() && !tVar.j()) {
            f(true);
        } else {
            if ((!q() || !tVar.d(keyEvent)) && !super.dispatchKeyEvent(keyEvent)) {
                if (!z || !q()) {
                    return false;
                }
                f(true);
                return false;
            }
            f(true);
        }
        return true;
    }

    public final boolean e() {
        r1.m0 m0Var = this.f16467t;
        return m0Var != null && ((a.b) m0Var).i(16) && ((y1.x) this.f16467t).N() && ((y1.x) this.f16467t).I();
    }

    public final void f(boolean z) {
        if (!(e() && this.F) && q()) {
            t tVar = this.l;
            boolean z4 = tVar.j() && tVar.getShowTimeoutMs() <= 0;
            boolean zH = h();
            if (z || z4 || zH) {
                i(zH);
            }
        }
    }

    public final boolean g(Drawable drawable) {
        ImageView imageView = this.f16458h;
        if (imageView != null && drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                float width = intrinsicWidth / intrinsicHeight;
                ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
                if (this.f16470x == 2) {
                    width = getWidth() / getHeight();
                    scaleType = ImageView.ScaleType.CENTER_CROP;
                }
                AspectRatioFrameLayout aspectRatioFrameLayout = this.f16452b;
                if (aspectRatioFrameLayout != null) {
                    aspectRatioFrameLayout.setAspectRatio(width);
                }
                imageView.setScaleType(scaleType);
                imageView.setImageDrawable(drawable);
                imageView.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    public List<l5.y> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.f16463n;
        if (frameLayout != null) {
            arrayList.add(new l5.y(13, frameLayout));
        }
        t tVar = this.l;
        if (tVar != null) {
            arrayList.add(new l5.y(13, tVar));
        }
        return u7.g0.m(arrayList);
    }

    public ViewGroup getAdViewGroup() {
        FrameLayout frameLayout = this.f16462m;
        a9.o.o(frameLayout, "exo_ad_overlay must be present for ad playback");
        return frameLayout;
    }

    public int getArtworkDisplayMode() {
        return this.f16470x;
    }

    public boolean getControllerAutoShow() {
        return this.E;
    }

    public boolean getControllerHideOnTouch() {
        return this.G;
    }

    public int getControllerShowTimeoutMs() {
        return this.D;
    }

    public Drawable getDefaultArtwork() {
        return this.z;
    }

    public int getImageDisplayMode() {
        return this.f16471y;
    }

    public FrameLayout getOverlayFrameLayout() {
        return this.f16463n;
    }

    public r1.m0 getPlayer() {
        return this.f16467t;
    }

    public int getResizeMode() {
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f16452b;
        aspectRatioFrameLayout.getClass();
        return aspectRatioFrameLayout.getResizeMode();
    }

    public SubtitleView getSubtitleView() {
        return this.f16459i;
    }

    @Deprecated
    public boolean getUseArtwork() {
        return this.f16470x != 0;
    }

    public boolean getUseController() {
        return this.f16468v;
    }

    public View getVideoSurfaceView() {
        return this.f16454d;
    }

    public final boolean h() {
        r1.m0 m0Var = this.f16467t;
        if (m0Var == null) {
            return true;
        }
        int iJ = ((y1.x) m0Var).J();
        if (this.E && (!((a.b) this.f16467t).i(17) || !((y1.x) this.f16467t).E().p())) {
            if (iJ == 1 || iJ == 4) {
                return true;
            }
            r1.m0 m0Var2 = this.f16467t;
            m0Var2.getClass();
            if (!((y1.x) m0Var2).I()) {
                return true;
            }
        }
        return false;
    }

    public final void i(boolean z) {
        if (q()) {
            int i10 = z ? 0 : this.D;
            t tVar = this.l;
            tVar.setShowTimeoutMs(i10);
            y yVar = tVar.f16544a;
            t tVar2 = yVar.f16599a;
            if (!tVar2.l()) {
                tVar2.setVisibility(0);
                tVar2.m();
                ImageView imageView = tVar2.f16587x;
                if (imageView != null) {
                    imageView.requestFocus();
                }
            }
            yVar.k();
        }
    }

    public final void j() {
        if (!q() || this.f16467t == null) {
            return;
        }
        t tVar = this.l;
        if (!tVar.j()) {
            f(true);
        } else if (this.G) {
            tVar.g();
        }
    }

    public final void k() {
        b1 b1Var;
        r1.m0 m0Var = this.f16467t;
        if (m0Var != null) {
            y1.x xVar = (y1.x) m0Var;
            xVar.h0();
            b1Var = xVar.f18843a1;
        } else {
            b1Var = b1.f13418d;
        }
        int i10 = b1Var.f13419a;
        int i11 = b1Var.f13420b;
        float f10 = this.f16455e ? 0.0f : (i11 == 0 || i10 == 0) ? 0.0f : (i10 * b1Var.f13421c) / i11;
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f16452b;
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void l() {
        boolean z;
        View view = this.f16460j;
        if (view != null) {
            r1.m0 m0Var = this.f16467t;
            if (m0Var == null || ((y1.x) m0Var).J() != 2) {
                z = false;
            } else {
                int i10 = this.A;
                z = true;
                if (i10 != 2 && (i10 != 1 || !((y1.x) this.f16467t).I())) {
                }
            }
            view.setVisibility(z ? 0 : 8);
        }
    }

    public final void m() {
        t tVar = this.l;
        if (tVar == null || !this.f16468v) {
            setContentDescription(null);
        } else if (tVar.j()) {
            setContentDescription(this.G ? getResources().getString(R.string.exo_controls_hide) : null);
        } else {
            setContentDescription(getResources().getString(R.string.exo_controls_show));
        }
    }

    public final void n() {
        TextView textView = this.f16461k;
        if (textView != null) {
            CharSequence charSequence = this.C;
            if (charSequence != null) {
                textView.setText(charSequence);
                textView.setVisibility(0);
                return;
            }
            r1.m0 m0Var = this.f16467t;
            if (m0Var != null) {
                y1.x xVar = (y1.x) m0Var;
                xVar.h0();
                y1.k kVar = xVar.f18853f1.f18829f;
            }
            textView.setVisibility(8);
        }
    }

    public final void o(boolean z) {
        Drawable drawable;
        r1.m0 m0Var = this.f16467t;
        boolean zG = false;
        boolean z4 = (m0Var == null || !((a.b) m0Var).i(30) || ((y1.x) m0Var).F().f13625a.isEmpty()) ? false : true;
        boolean z10 = this.B;
        ImageView imageView = this.f16458h;
        View view = this.f16453c;
        if (!z10 && (!z4 || z)) {
            if (imageView != null) {
                imageView.setImageResource(android.R.color.transparent);
                imageView.setVisibility(4);
            }
            if (view != null) {
                view.setVisibility(0);
            }
            d();
        }
        if (z4) {
            boolean zC = c();
            boolean zB = b();
            if (!zC && !zB) {
                if (view != null) {
                    view.setVisibility(0);
                }
                d();
            }
            ImageView imageView2 = this.f16457g;
            boolean z11 = (view == null || view.getVisibility() != 4 || imageView2 == null || (drawable = imageView2.getDrawable()) == null || drawable.getAlpha() == 0) ? false : true;
            if (zB && !zC && z11) {
                if (view != null) {
                    view.setVisibility(0);
                }
                if (imageView2 != null) {
                    imageView2.setVisibility(0);
                    p();
                }
            } else if (zC && !zB && z11) {
                d();
            }
            if (!zC && !zB && this.f16470x != 0) {
                imageView.getClass();
                if (m0Var != null && ((a.b) m0Var).i(18)) {
                    y1.x xVar = (y1.x) m0Var;
                    xVar.h0();
                    byte[] bArr = xVar.Z.f13400f;
                    if (bArr != null) {
                        zG = g(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
                    }
                }
                if (zG || g(this.z)) {
                    return;
                }
            }
            if (imageView != null) {
                imageView.setImageResource(android.R.color.transparent);
                imageView.setVisibility(4);
            }
        }
    }

    @Override // android.view.View
    public final boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!q() || this.f16467t == null) {
            return false;
        }
        f(true);
        return true;
    }

    public final void p() {
        Drawable drawable;
        AspectRatioFrameLayout aspectRatioFrameLayout;
        ImageView imageView = this.f16457g;
        if (imageView == null || (drawable = imageView.getDrawable()) == null) {
            return;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            return;
        }
        float width = intrinsicWidth / intrinsicHeight;
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
        if (this.f16471y == 1) {
            width = getWidth() / getHeight();
            scaleType = ImageView.ScaleType.CENTER_CROP;
        }
        if (imageView.getVisibility() == 0 && (aspectRatioFrameLayout = this.f16452b) != null) {
            aspectRatioFrameLayout.setAspectRatio(width);
        }
        imageView.setScaleType(scaleType);
    }

    @Override // android.view.View
    public final boolean performClick() {
        j();
        return super.performClick();
    }

    public final boolean q() {
        if (!this.f16468v) {
            return false;
        }
        this.l.getClass();
        return true;
    }

    public void setArtworkDisplayMode(int i10) {
        a9.o.t(i10 == 0 || this.f16458h != null);
        if (this.f16470x != i10) {
            this.f16470x = i10;
            o(false);
        }
    }

    public void setAspectRatioListener(a aVar) {
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f16452b;
        aspectRatioFrameLayout.getClass();
        aspectRatioFrameLayout.setAspectRatioListener(aVar);
    }

    public void setControllerAnimationEnabled(boolean z) {
        t tVar = this.l;
        tVar.getClass();
        tVar.setAnimationEnabled(z);
    }

    public void setControllerAutoShow(boolean z) {
        this.E = z;
    }

    public void setControllerHideDuringAds(boolean z) {
        this.F = z;
    }

    public void setControllerHideOnTouch(boolean z) {
        this.l.getClass();
        this.G = z;
        m();
    }

    @Deprecated
    public void setControllerOnFullScreenModeChangedListener(i iVar) {
        t tVar = this.l;
        tVar.getClass();
        tVar.setOnFullScreenModeChangedListener(iVar);
    }

    public void setControllerShowTimeoutMs(int i10) {
        t tVar = this.l;
        tVar.getClass();
        this.D = i10;
        if (tVar.j()) {
            i(h());
        }
    }

    @Deprecated
    public void setControllerVisibilityListener(s sVar) {
        t tVar = this.l;
        tVar.getClass();
        s sVar2 = this.f16469w;
        if (sVar2 == sVar) {
            return;
        }
        if (sVar2 != null) {
            tVar.f16564k.remove(sVar2);
        }
        this.f16469w = sVar;
        if (sVar != null) {
            tVar.getClass();
            tVar.f16564k.add(sVar);
            setControllerVisibilityListener((b0) null);
        }
    }

    public void setCustomErrorMessage(CharSequence charSequence) {
        a9.o.t(this.f16461k != null);
        this.C = charSequence;
        n();
    }

    public void setDefaultArtwork(Drawable drawable) {
        if (this.z != drawable) {
            this.z = drawable;
            o(false);
        }
    }

    public void setEnableComposeSurfaceSyncWorkaround(boolean z) {
        this.H = z;
    }

    public void setErrorMessageProvider(r1.m mVar) {
        if (mVar != null) {
            n();
        }
    }

    public void setFullscreenButtonClickListener(c0 c0Var) {
        t tVar = this.l;
        tVar.getClass();
        tVar.setOnFullScreenModeChangedListener(this.f16451a);
    }

    public void setFullscreenButtonState(boolean z) {
        t tVar = this.l;
        tVar.getClass();
        tVar.o(z);
    }

    public void setImageDisplayMode(int i10) {
        a9.o.t(this.f16457g != null);
        if (this.f16471y != i10) {
            this.f16471y = i10;
            p();
        }
    }

    public void setKeepContentOnPlayerReset(boolean z) {
        if (this.B != z) {
            this.B = z;
            o(false);
        }
    }

    public void setMediaRouteButtonViewProvider(c1 c1Var) {
        t tVar = this.l;
        tVar.getClass();
        tVar.setMediaRouteButtonViewProvider(c1Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x01fc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setPlayer(r1.m0 m0Var) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        boolean z;
        boolean z4 = true;
        a9.o.t(Looper.myLooper() == Looper.getMainLooper());
        a9.o.k(m0Var == null || ((y1.x) m0Var).f18868v == Looper.getMainLooper());
        r1.m0 m0Var2 = this.f16467t;
        if (m0Var2 == m0Var) {
            return;
        }
        View view = this.f16454d;
        a0 a0Var = this.f16451a;
        if (m0Var2 != null) {
            y1.x xVar = (y1.x) m0Var2;
            xVar.U(a0Var);
            if (((a.b) m0Var2).i(27)) {
                if (view instanceof TextureView) {
                    TextureView textureView = (TextureView) view;
                    xVar.h0();
                    if (textureView != null && textureView == xVar.P0) {
                        xVar.u();
                    }
                } else if (view instanceof SurfaceView) {
                    SurfaceView surfaceView = (SurfaceView) view;
                    xVar.h0();
                    SurfaceHolder holder = surfaceView == null ? null : surfaceView.getHolder();
                    xVar.h0();
                    if (holder != null && holder == xVar.M0) {
                        xVar.u();
                    }
                }
            }
            Class cls = this.f16465q;
            if (cls != null && cls.isAssignableFrom(m0Var2.getClass())) {
                try {
                    Method method = this.r;
                    method.getClass();
                    method.invoke(m0Var2, null);
                } catch (IllegalAccessException | InvocationTargetException e7) {
                    throw new RuntimeException(e7);
                }
            }
        }
        SubtitleView subtitleView = this.f16459i;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.f16467t = m0Var;
        boolean zQ = q();
        t tVar = this.l;
        if (zQ) {
            tVar.setPlayer(m0Var);
        }
        l();
        n();
        o(true);
        if (m0Var == null) {
            if (tVar != null) {
                tVar.g();
                return;
            }
            return;
        }
        a.b bVar = (a.b) m0Var;
        if (bVar.i(27)) {
            if (view instanceof TextureView) {
                TextureView textureView2 = (TextureView) view;
                y1.x xVar2 = (y1.x) m0Var;
                xVar2.h0();
                if (textureView2 == null) {
                    xVar2.u();
                } else {
                    xVar2.V();
                    xVar2.P0 = textureView2;
                    if (textureView2.getSurfaceTextureListener() != null) {
                        u1.a.p("Replacing existing SurfaceTextureListener.");
                    }
                    textureView2.setSurfaceTextureListener(xVar2.f18871y);
                    SurfaceTexture surfaceTexture = textureView2.isAvailable() ? textureView2.getSurfaceTexture() : null;
                    if (surfaceTexture == null) {
                        xVar2.b0(null);
                        xVar2.R(0, 0);
                    } else {
                        Surface surface = new Surface(surfaceTexture);
                        xVar2.b0(surface);
                        xVar2.f18867t0 = surface;
                        xVar2.R(textureView2.getWidth(), textureView2.getHeight());
                    }
                }
            } else if (view instanceof SurfaceView) {
                SurfaceView surfaceView2 = (SurfaceView) view;
                y1.x xVar3 = (y1.x) m0Var;
                xVar3.h0();
                if (surfaceView2 instanceof androidx.media3.exoplayer.video.w) {
                    xVar3.V();
                    xVar3.b0(surfaceView2);
                    xVar3.Y(surfaceView2.getHolder());
                } else {
                    boolean z10 = surfaceView2 instanceof k2.k;
                    y1.t tVar2 = xVar3.f18871y;
                    if (z10) {
                        xVar3.V();
                        xVar3.N0 = (k2.k) surfaceView2;
                        y0 y0VarV = xVar3.v(xVar3.z);
                        a9.o.t(!y0VarV.f18878f);
                        y0VarV.f18875c = 10000;
                        k2.k kVar = xVar3.N0;
                        a9.o.t(!y0VarV.f18878f);
                        y0VarV.f18876d = kVar;
                        y0VarV.b();
                        xVar3.N0.f10068a.add(tVar2);
                        xVar3.b0(xVar3.N0.getVideoSurface());
                        xVar3.Y(surfaceView2.getHolder());
                    } else {
                        SurfaceHolder holder2 = surfaceView2 == null ? null : surfaceView2.getHolder();
                        xVar3.h0();
                        if (holder2 == null) {
                            xVar3.u();
                        } else {
                            xVar3.V();
                            xVar3.O0 = true;
                            xVar3.M0 = holder2;
                            holder2.addCallback(tVar2);
                            Surface surface2 = holder2.getSurface();
                            if (surface2 == null || !surface2.isValid()) {
                                xVar3.b0(null);
                                xVar3.R(0, 0);
                            } else {
                                xVar3.b0(surface2);
                                Rect surfaceFrame = holder2.getSurfaceFrame();
                                xVar3.R(surfaceFrame.width(), surfaceFrame.height());
                            }
                        }
                    }
                }
            }
            if (bVar.i(30)) {
                x0 x0VarF = ((y1.x) m0Var).F();
                int i10 = 0;
                while (true) {
                    u7.g0 g0Var = x0VarF.f13625a;
                    if (i10 >= g0Var.size()) {
                        z4 = false;
                        break;
                    }
                    if (((w0) g0Var.get(i10)).a() == 2) {
                        w0 w0Var = (w0) g0Var.get(i10);
                        int i11 = 0;
                        while (true) {
                            if (i11 >= w0Var.f13622d.length) {
                                z = false;
                                break;
                            } else {
                                if (w0Var.b(i11)) {
                                    z = true;
                                    break;
                                }
                                i11++;
                            }
                        }
                        if (z) {
                            break;
                        }
                    }
                    i10++;
                }
                if (z4) {
                    k();
                }
            }
        }
        if (subtitleView != null && bVar.i(28)) {
            y1.x xVar4 = (y1.x) m0Var;
            xVar4.h0();
            subtitleView.setCues(xVar4.V0.f14682a);
        }
        a0Var.getClass();
        ((y1.x) m0Var).f18861m.a(a0Var);
        setImageOutput(m0Var);
        f(false);
    }

    public void setRepeatToggleModes(int i10) {
        t tVar = this.l;
        tVar.getClass();
        tVar.setRepeatToggleModes(i10);
    }

    public void setResizeMode(int i10) {
        AspectRatioFrameLayout aspectRatioFrameLayout = this.f16452b;
        aspectRatioFrameLayout.getClass();
        aspectRatioFrameLayout.setResizeMode(i10);
    }

    public void setShowBuffering(int i10) {
        if (this.A != i10) {
            this.A = i10;
            l();
        }
    }

    public void setShowFastForwardButton(boolean z) {
        t tVar = this.l;
        tVar.getClass();
        tVar.setShowFastForwardButton(z);
    }

    @Deprecated
    public void setShowMultiWindowTimeBar(boolean z) {
        t tVar = this.l;
        tVar.getClass();
        tVar.setShowMultiWindowTimeBar(z);
    }

    public void setShowNextButton(boolean z) {
        t tVar = this.l;
        tVar.getClass();
        tVar.setShowNextButton(z);
    }

    public void setShowPlayButtonIfPlaybackIsSuppressed(boolean z) {
        t tVar = this.l;
        tVar.getClass();
        tVar.setShowPlayButtonIfPlaybackIsSuppressed(z);
    }

    public void setShowPreviousButton(boolean z) {
        t tVar = this.l;
        tVar.getClass();
        tVar.setShowPreviousButton(z);
    }

    public void setShowRewindButton(boolean z) {
        t tVar = this.l;
        tVar.getClass();
        tVar.setShowRewindButton(z);
    }

    public void setShowShuffleButton(boolean z) {
        t tVar = this.l;
        tVar.getClass();
        tVar.setShowShuffleButton(z);
    }

    public void setShowSubtitleButton(boolean z) {
        t tVar = this.l;
        tVar.getClass();
        tVar.setShowSubtitleButton(z);
    }

    public void setShowVrButton(boolean z) {
        t tVar = this.l;
        tVar.getClass();
        tVar.setShowVrButton(z);
    }

    public void setShutterBackgroundColor(int i10) {
        View view = this.f16453c;
        if (view != null) {
            view.setBackgroundColor(i10);
        }
    }

    public void setTimeBarScrubbingEnabled(boolean z) {
        t tVar = this.l;
        tVar.getClass();
        tVar.setTimeBarScrubbingEnabled(z);
    }

    @Deprecated
    public void setUseArtwork(boolean z) {
        setArtworkDisplayMode(!z ? 1 : 0);
    }

    public void setUseController(boolean z) {
        boolean z4 = true;
        t tVar = this.l;
        a9.o.t((z && tVar == null) ? false : true);
        if (!z && !hasOnClickListeners()) {
            z4 = false;
        }
        setClickable(z4);
        if (this.f16468v == z) {
            return;
        }
        this.f16468v = z;
        if (q()) {
            tVar.setPlayer(this.f16467t);
        } else if (tVar != null) {
            tVar.g();
            tVar.setPlayer(null);
        }
        m();
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        View view = this.f16454d;
        if (view instanceof SurfaceView) {
            view.setVisibility(i10);
        }
    }

    public void setControllerVisibilityListener(b0 b0Var) {
        if (b0Var != null) {
            setControllerVisibilityListener((s) null);
        }
    }
}
