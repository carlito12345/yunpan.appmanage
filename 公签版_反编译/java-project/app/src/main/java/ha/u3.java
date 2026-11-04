package ha;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.yunpan.appmanage.bean.NameContentSelectBean;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class u3 implements wd {

    /* renamed from: a, reason: collision with root package name */
    public int f7852a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f7853b;

    /* renamed from: c, reason: collision with root package name */
    public Object f7854c;

    /* renamed from: d, reason: collision with root package name */
    public Object f7855d;

    public u3(ImageView imageView) {
        this.f7852a = 0;
        this.f7853b = imageView;
    }

    public static w4.k d(w4.k kVar) {
        if (kVar == null) {
            return kVar;
        }
        y4.c cVar = kVar.f17467b;
        cVar.getClass();
        if (cVar != y4.c.f18956q) {
            return kVar;
        }
        return w4.k.d(kVar.f17466a, y4.c.f18959v);
    }

    @Override // ha.wd
    public void D() {
        wa.u uVar = wa.t.f17728a;
        uVar.getClass();
        try {
            uVar.A = 0;
            uVar.f17731b.l("FuseProtectionLogcatCount", 0);
        } catch (Exception unused) {
        }
        uVar.i();
        NameContentSelectBean nameContentSelectBean = (NameContentSelectBean) this.f7853b;
        nameContentSelectBean.isSelect = false;
        nameContentSelectBean.name = "熔断保护：两分钟内连续触发40次映射以上时，马上停止自动化";
        ((c6.g) this.f7854c).e(this.f7852a);
        ta.m.e(((v3) this.f7855d).f6725b);
    }

    public void a(int i10, int i11) {
        int i12;
        w4.k kVar;
        int[] iArr = (int[]) this.f7855d;
        boolean z = iArr == null;
        if (i10 != 0 || z) {
            if (i10 < 0) {
                throw new RuntimeException("shouldn't happen");
            }
            if (z || i11 >= iArr.length) {
                int i13 = i11 + 1;
                w4.m mVar = new w4.m(i13);
                int[] iArr2 = new int[i13];
                Arrays.fill(iArr2, -1);
                if (!z) {
                    w4.m mVar2 = (w4.m) this.f7854c;
                    int length = mVar2.f17469b.length;
                    for (int i14 = 0; i14 < length; i14++) {
                        w4.k kVarD = mVar2.d(i14);
                        if (kVarD != null) {
                            w4.k[] kVarArr = mVar.f17469b;
                            mVar.c();
                            if (kVarD == null) {
                                throw new NullPointerException("spec == null");
                            }
                            mVar.f17470c = -1;
                            try {
                                int i15 = kVarD.f17466a;
                                kVarArr[i15] = kVarD;
                                if (i15 > 0 && (kVar = kVarArr[i15 - 1]) != null && kVar.c() == 2) {
                                    kVarArr[i12] = null;
                                }
                                if (kVarD.c() == 2) {
                                    kVarArr[i15 + 1] = null;
                                }
                            } catch (ArrayIndexOutOfBoundsException unused) {
                                throw new IllegalArgumentException("spec.getReg() out of range");
                            }
                        }
                    }
                    int[] iArr3 = (int[]) this.f7855d;
                    System.arraycopy(iArr3, 0, iArr2, 0, iArr3.length);
                }
                this.f7854c = mVar;
                this.f7855d = iArr2;
            }
        }
    }

    public void b(int i10, int i11, w4.k kVar) {
        if (i11 == 1) {
            throw new RuntimeException("shouldn't happen");
        }
        int i12 = ((int[]) this.f7855d)[kVar.f17466a];
        if (i12 >= 0) {
            ((s4.n) ((ArrayList) this.f7853b).get(i12)).getClass();
            if (i10 == 0) {
                throw null;
            }
        }
        w4.k kVarD = d(kVar);
        int i13 = kVar.f17466a;
        a(i10, i13);
        if (((int[]) this.f7855d)[i13] >= 0) {
            return;
        }
        ArrayList arrayList = (ArrayList) this.f7853b;
        int size = arrayList.size();
        do {
            size--;
            if (size < 0) {
                w4.m mVar = (w4.m) this.f7854c;
                mVar.getClass();
                try {
                    mVar.f17469b[kVarD.f17466a] = null;
                    mVar.f17470c = -1;
                    arrayList.set(size, null);
                    this.f7852a++;
                    for (int i14 = size - 1; i14 >= 0; i14--) {
                        if (((s4.n) arrayList.get(i14)) != null) {
                            throw null;
                        }
                    }
                    return;
                } catch (ArrayIndexOutOfBoundsException unused) {
                    throw new IllegalArgumentException("bogus reg");
                }
            }
        } while (((s4.n) arrayList.get(size)) == null);
        if (i10 == 0) {
            throw null;
        }
        int i15 = kVarD.f17466a;
        new s4.n(i10, i11, kVarD);
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void c() {
        ImageView imageView = (ImageView) this.f7853b;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            w.n1.a(drawable);
        }
        if (drawable != null) {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 <= 21 && i10 == 21) {
                if (((w.d3) this.f7855d) == null) {
                    this.f7855d = new w.d3();
                }
                w.d3 d3Var = (w.d3) this.f7855d;
                d3Var.f17047a = null;
                d3Var.f17050d = false;
                d3Var.f17048b = null;
                d3Var.f17049c = false;
                ColorStateList colorStateListA = i10 >= 21 ? b1.f.a(imageView) : ((b1.y) imageView).getSupportImageTintList();
                if (colorStateListA != null) {
                    d3Var.f17050d = true;
                    d3Var.f17047a = colorStateListA;
                }
                PorterDuff.Mode modeB = i10 >= 21 ? b1.f.b(imageView) : ((b1.y) imageView).getSupportImageTintMode();
                if (modeB != null) {
                    d3Var.f17049c = true;
                    d3Var.f17048b = modeB;
                }
                if (d3Var.f17050d || d3Var.f17049c) {
                    w.s.e(drawable, d3Var, imageView.getDrawableState());
                    return;
                }
            }
            w.d3 d3Var2 = (w.d3) this.f7854c;
            if (d3Var2 != null) {
                w.s.e(drawable, d3Var2, imageView.getDrawableState());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void e(AttributeSet attributeSet, int i10) {
        Drawable drawable;
        Drawable drawable2;
        int resourceId;
        ImageView imageView = (ImageView) this.f7853b;
        Context context = imageView.getContext();
        int[] iArr = p.a.f12520f;
        s4.a aVarJ = s4.a.j(context, attributeSet, iArr, i10);
        x0.b1.w(imageView, imageView.getContext(), iArr, attributeSet, (TypedArray) aVarJ.f14294c, i10);
        try {
            Drawable drawable3 = imageView.getDrawable();
            TypedArray typedArray = (TypedArray) aVarJ.f14294c;
            if (drawable3 == null && (resourceId = typedArray.getResourceId(1, -1)) != -1 && (drawable3 = com.bumptech.glide.d.x(imageView.getContext(), resourceId)) != null) {
                imageView.setImageDrawable(drawable3);
            }
            if (drawable3 != null) {
                w.n1.a(drawable3);
            }
            if (typedArray.hasValue(2)) {
                ColorStateList colorStateListD = aVarJ.d(2);
                int i11 = Build.VERSION.SDK_INT;
                if (i11 >= 21) {
                    b1.f.c(imageView, colorStateListD);
                    if (i11 == 21 && (drawable2 = imageView.getDrawable()) != null && b1.f.a(imageView) != null) {
                        if (drawable2.isStateful()) {
                            drawable2.setState(imageView.getDrawableState());
                        }
                        imageView.setImageDrawable(drawable2);
                    }
                } else {
                    ((b1.y) imageView).setSupportImageTintList(colorStateListD);
                }
            }
            if (typedArray.hasValue(3)) {
                PorterDuff.Mode modeB = w.n1.b(typedArray.getInt(3, -1), null);
                int i12 = Build.VERSION.SDK_INT;
                if (i12 >= 21) {
                    b1.f.d(imageView, modeB);
                    if (i12 == 21 && (drawable = imageView.getDrawable()) != null && b1.f.a(imageView) != null) {
                        if (drawable.isStateful()) {
                            drawable.setState(imageView.getDrawableState());
                        }
                        imageView.setImageDrawable(drawable);
                    }
                } else {
                    ((b1.y) imageView).setSupportImageTintMode(modeB);
                }
            }
            aVarJ.r();
        } catch (Throwable th2) {
            aVarJ.r();
            throw th2;
        }
    }

    public Looper f() {
        Looper looper;
        synchronized (this.f7853b) {
            try {
                if (((Looper) this.f7854c) == null) {
                    a9.o.t(this.f7852a == 0 && ((HandlerThread) this.f7855d) == null);
                    HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
                    this.f7855d = handlerThread;
                    handlerThread.start();
                    this.f7854c = ((HandlerThread) this.f7855d).getLooper();
                }
                this.f7852a++;
                looper = (Looper) this.f7854c;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return looper;
    }

    public void g() {
        HandlerThread handlerThread;
        synchronized (this.f7853b) {
            try {
                a9.o.t(this.f7852a > 0);
                int i10 = this.f7852a - 1;
                this.f7852a = i10;
                if (i10 == 0 && (handlerThread = (HandlerThread) this.f7855d) != null) {
                    handlerThread.quit();
                    this.f7855d = null;
                    this.f7854c = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public u3() {
        this.f7853b = new Object();
        this.f7854c = null;
        this.f7855d = null;
        this.f7852a = 0;
    }

    public u3(v3 v3Var, NameContentSelectBean nameContentSelectBean, c6.g gVar, int i10) {
        this.f7855d = v3Var;
        this.f7853b = nameContentSelectBean;
        this.f7854c = gVar;
        this.f7852a = i10;
    }

    public u3(int i10) {
        this.f7853b = new ArrayList(i10);
        this.f7852a = 0;
        this.f7854c = null;
        this.f7855d = null;
    }

    @Override // ha.wd
    public void t() {
    }
}
