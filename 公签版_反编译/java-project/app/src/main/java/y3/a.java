package y3;

import android.content.res.AssetManager;
import android.graphics.Point;
import android.os.Build;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.emoji2.text.o;
import com.yunpan.appmanage.bean.FloatWindowInsets;
import com.yunpan.appmanage.service.AccService;
import fa.v;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public boolean f18894a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f18895b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f18896c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f18897d;

    /* renamed from: e, reason: collision with root package name */
    public Object f18898e;

    /* renamed from: f, reason: collision with root package name */
    public Object f18899f;

    /* renamed from: g, reason: collision with root package name */
    public Object f18900g;

    /* renamed from: h, reason: collision with root package name */
    public Object f18901h;

    public a(AccService accService) {
        this.f18897d = new FloatWindowInsets();
        this.f18901h = new o(6);
        this.f18895b = accService;
        WindowManager windowManager = (WindowManager) accService.getSystemService("window");
        this.f18896c = windowManager;
        this.f18898e = p000if.a.R(accService);
        View view = new View(accService);
        this.f18899f = view;
        view.setWillNotDraw(true);
        int i10 = Build.VERSION.SDK_INT;
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(1, 1, i10 >= 22 ? 2032 : 2002, 792, -3);
        if (i10 >= 28) {
            layoutParams.layoutInDisplayCutoutMode = 1;
        }
        layoutParams.gravity = 8388659;
        layoutParams.x = 0;
        layoutParams.y = 0;
        windowManager.addView((View) this.f18899f, layoutParams);
        final int i11 = 0;
        ((View) this.f18899f).getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener(this) { // from class: ya.a

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ y3.a f19017b;

            {
                this.f19017b = this;
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                switch (i11) {
                    case 0:
                        y3.a aVar = this.f19017b;
                        aVar.f18898e = p000if.a.R((AccService) aVar.f18895b);
                        int[] iArr = new int[2];
                        ((View) aVar.f18899f).getLocationOnScreen(iArr);
                        int i12 = iArr[0];
                        FloatWindowInsets floatWindowInsets = (FloatWindowInsets) aVar.f18897d;
                        floatWindowInsets.left = i12;
                        floatWindowInsets.top = iArr[1];
                        aVar.a();
                        break;
                    default:
                        y3.a aVar2 = this.f19017b;
                        aVar2.f18898e = p000if.a.R((AccService) aVar2.f18895b);
                        System.out.getClass();
                        int[] iArr2 = new int[2];
                        ((View) aVar2.f18900g).getLocationOnScreen(iArr2);
                        int width = (((Point) aVar2.f18898e).x - iArr2[0]) - ((View) aVar2.f18900g).getWidth();
                        int height = (((Point) aVar2.f18898e).y - iArr2[1]) - ((View) aVar2.f18900g).getHeight();
                        FloatWindowInsets floatWindowInsets2 = (FloatWindowInsets) aVar2.f18897d;
                        floatWindowInsets2.right = width;
                        floatWindowInsets2.bottom = height;
                        aVar2.a();
                        break;
                }
            }
        });
        View view2 = new View(accService);
        this.f18900g = view2;
        view2.setWillNotDraw(true);
        WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(1, 1, i10 >= 22 ? 2032 : 2002, 792, -3);
        if (i10 >= 28) {
            layoutParams2.layoutInDisplayCutoutMode = 1;
        }
        layoutParams2.gravity = 8388693;
        layoutParams2.x = 0;
        layoutParams2.y = 0;
        windowManager.addView((View) this.f18900g, layoutParams2);
        final int i12 = 1;
        ((View) this.f18900g).getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener(this) { // from class: ya.a

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ y3.a f19017b;

            {
                this.f19017b = this;
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                switch (i12) {
                    case 0:
                        y3.a aVar = this.f19017b;
                        aVar.f18898e = p000if.a.R((AccService) aVar.f18895b);
                        int[] iArr = new int[2];
                        ((View) aVar.f18899f).getLocationOnScreen(iArr);
                        int i122 = iArr[0];
                        FloatWindowInsets floatWindowInsets = (FloatWindowInsets) aVar.f18897d;
                        floatWindowInsets.left = i122;
                        floatWindowInsets.top = iArr[1];
                        aVar.a();
                        break;
                    default:
                        y3.a aVar2 = this.f19017b;
                        aVar2.f18898e = p000if.a.R((AccService) aVar2.f18895b);
                        System.out.getClass();
                        int[] iArr2 = new int[2];
                        ((View) aVar2.f18900g).getLocationOnScreen(iArr2);
                        int width = (((Point) aVar2.f18898e).x - iArr2[0]) - ((View) aVar2.f18900g).getWidth();
                        int height = (((Point) aVar2.f18898e).y - iArr2[1]) - ((View) aVar2.f18900g).getHeight();
                        FloatWindowInsets floatWindowInsets2 = (FloatWindowInsets) aVar2.f18897d;
                        floatWindowInsets2.right = width;
                        floatWindowInsets2.bottom = height;
                        aVar2.a();
                        break;
                }
            }
        });
    }

    public void a() {
        FloatWindowInsets floatWindowInsets = (FloatWindowInsets) this.f18897d;
        this.f18894a = floatWindowInsets.left > 0 || floatWindowInsets.top > 0 || floatWindowInsets.right > 0 || floatWindowInsets.bottom > 0;
        AccService accService = (AccService) this.f18895b;
        ta.e eVar = accService.G;
        o oVar = (o) this.f18901h;
        eVar.removeCallbacks(oVar);
        accService.G.postDelayed(oVar, 100L);
    }

    public FileInputStream b(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e7) {
            String message = e7.getMessage();
            if (message != null) {
                message.contains("compressed");
            }
            return null;
        }
    }

    public void c(int i10, Serializable serializable) {
        ((Executor) this.f18895b).execute(new v(this, i10, serializable, 5));
    }

    public a(AssetManager assetManager, Executor executor, b bVar, String str, File file) {
        this.f18894a = false;
        this.f18895b = executor;
        this.f18896c = bVar;
        this.f18900g = str;
        this.f18899f = file;
        int i10 = Build.VERSION.SDK_INT;
        byte[] bArr = null;
        if (i10 >= 24 && i10 <= 33) {
            switch (i10) {
                case 24:
                case 25:
                    bArr = c.f18909h;
                    break;
                case 26:
                    bArr = c.f18908g;
                    break;
                case 27:
                    bArr = c.f18907f;
                    break;
                case 28:
                case 29:
                case 30:
                    bArr = c.f18906e;
                    break;
                case 31:
                case 32:
                case 33:
                    bArr = c.f18905d;
                    break;
            }
        }
        this.f18897d = bArr;
    }
}
