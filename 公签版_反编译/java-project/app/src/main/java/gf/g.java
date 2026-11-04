package gf;

import a2.g1;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.e1;
import androidx.fragment.app.j0;
import androidx.media3.exoplayer.video.h0;
import com.bumptech.glide.manager.l;
import com.yunpan.appmanage.R;
import d2.z;
import f2.c1;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import okhttp3.Response;
import r1.b1;
import r1.p;
import ua.i8;

/* loaded from: classes.dex */
public class g implements h0, b2.g, bc.b, com.bumptech.glide.manager.g, com.bumptech.glide.manager.f, l, z, c1, f9.a {

    /* renamed from: b, reason: collision with root package name */
    public static Method f6146b;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f6147c;

    /* renamed from: d, reason: collision with root package name */
    public static Field f6148d;

    /* renamed from: e, reason: collision with root package name */
    public static boolean f6149e;

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6150a;

    public /* synthetic */ g(int i10) {
        this.f6150a = i10;
    }

    public static final void x(ViewGroup viewGroup) {
        int i10 = h6.b.f6680b;
        viewGroup.removeAllViews();
    }

    public static g z(Context context, int i10) throws Resources.NotFoundException {
        s1.g.j("Cannot create a CalendarItemStyle with a styleResId of 0", i10 != 0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i10, q6.a.f13042n);
        Rect rect = new Rect(typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(2, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(3, 0));
        ColorStateList colorStateListW = com.bumptech.glide.c.w(context, typedArrayObtainStyledAttributes, 4);
        ColorStateList colorStateListW2 = com.bumptech.glide.c.w(context, typedArrayObtainStyledAttributes, 9);
        ColorStateList colorStateListW3 = com.bumptech.glide.c.w(context, typedArrayObtainStyledAttributes, 7);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0);
        m7.j jVar = new m7.j(m7.j.a(context, typedArrayObtainStyledAttributes.getResourceId(5, 0), typedArrayObtainStyledAttributes.getResourceId(6, 0), new m7.a(0)));
        typedArrayObtainStyledAttributes.recycle();
        return new g(colorStateListW, colorStateListW2, colorStateListW3, dimensionPixelSize, jVar, rect);
    }

    public ProviderInfo A(ResolveInfo resolveInfo) {
        throw new IllegalStateException("Unable to get provider info prior to API 19");
    }

    public Signature[] B(PackageManager packageManager, String str) {
        return packageManager.getPackageInfo(str, 64).signatures;
    }

    public float C(View view) {
        Float f10 = (Float) view.getTag(R.id.save_non_transition_alpha);
        return f10 != null ? view.getAlpha() / f10.floatValue() : view.getAlpha();
    }

    public List D(PackageManager packageManager, Intent intent) {
        return Collections.emptyList();
    }

    public void F(View view) {
        if (view.getTag(R.id.save_non_transition_alpha) == null) {
            view.setTag(R.id.save_non_transition_alpha, Float.valueOf(view.getAlpha()));
        }
    }

    public void G(View view, int i10, int i11, int i12, int i13) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (!f6147c) {
            try {
                Class cls = Integer.TYPE;
                Method declaredMethod = View.class.getDeclaredMethod("setFrame", cls, cls, cls, cls);
                f6146b = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            f6147c = true;
        }
        Method method = f6146b;
        if (method != null) {
            try {
                method.invoke(view, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13));
            } catch (IllegalAccessException unused2) {
            } catch (InvocationTargetException e7) {
                throw new RuntimeException(e7.getCause());
            }
        }
    }

    public void H(View view, float f10) {
        Float f11 = (Float) view.getTag(R.id.save_non_transition_alpha);
        if (f11 != null) {
            view.setAlpha(f11.floatValue() * f10);
        } else {
            view.setAlpha(f10);
        }
    }

    public void I(int i10, View view) {
        if (!f6149e) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                f6148d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f6149e = true;
        }
        Field field = f6148d;
        if (field != null) {
            try {
                f6148d.setInt(view, i10 | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException unused2) {
            }
        }
    }

    public void J(View view, Matrix matrix) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            J((View) parent, matrix);
            matrix.preTranslate(-r0.getScrollX(), -r0.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (matrix2.isIdentity()) {
            return;
        }
        matrix.preConcat(matrix2);
    }

    public void K(View view, Matrix matrix) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            K((View) parent, matrix);
            matrix.postTranslate(r0.getScrollX(), r0.getScrollY());
        }
        matrix.postTranslate(-view.getLeft(), -view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (matrix2.isIdentity()) {
            return;
        }
        Matrix matrix3 = new Matrix();
        if (matrix2.invert(matrix3)) {
            matrix.postConcat(matrix3);
        }
    }

    @Override // b2.g
    public /* synthetic */ void a() {
    }

    @Override // androidx.media3.exoplayer.video.h0
    public /* synthetic */ void b(b1 b1Var) {
    }

    @Override // d2.z
    public boolean c(MediaCodecInfo.CodecCapabilities codecCapabilities, String str) {
        return false;
    }

    @Override // d2.z
    public MediaCodecInfo d(int i10) {
        return MediaCodecList.getCodecInfoAt(i10);
    }

    @Override // b2.g
    public /* synthetic */ void e() {
    }

    @Override // androidx.media3.exoplayer.video.h0
    public /* synthetic */ void f() {
    }

    @Override // com.bumptech.glide.manager.g
    public void h(com.bumptech.glide.manager.h hVar) {
        hVar.k();
    }

    @Override // d2.z
    public boolean i(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "secure-playback".equals(str) && "video/avc".equals(str2);
    }

    @Override // f2.c1
    public boolean isReady() {
        return true;
    }

    @Override // f2.c1
    public int m(long j10) {
        return 0;
    }

    @Override // f2.c1
    public int n(i8 i8Var, x1.g gVar, int i10) {
        gVar.f567b = 4;
        return -4;
    }

    @Override // b2.g
    public a1.i o(b2.d dVar, p pVar) {
        if (pVar.f13526s == null) {
            return null;
        }
        return new a1.i(8, new b2.b(6001, new b2.i()));
    }

    @Override // androidx.media3.exoplayer.video.h0
    public /* synthetic */ void p() {
    }

    @Override // b2.g
    public int q(p pVar) {
        return pVar.f13526s != null ? 1 : 0;
    }

    @Override // d2.z
    public int r() {
        return MediaCodecList.getCodecCount();
    }

    @Override // androidx.media3.exoplayer.video.h0
    public /* synthetic */ void s() {
    }

    @Override // f9.a
    public /* bridge */ /* synthetic */ Object t(Response response) {
        throw null;
    }

    @Override // b2.g
    public /* synthetic */ b2.f u(b2.d dVar, p pVar) {
        return b2.f.f2531a;
    }

    @Override // bc.b
    public String[] v() {
        switch (this.f6150a) {
            case 11:
                return new String[]{"LINE_COMMENT", "BLOCK_COMMENT_START", "BLOCK_COMMENT_END"};
            default:
                return new String[]{"RANDOM", "RANDOM_HEX", "UUID"};
        }
    }

    @Override // d2.z
    public boolean w() {
        return false;
    }

    public void y(View view) {
        if (view.getVisibility() == 0) {
            view.setTag(R.id.save_non_transition_alpha, null);
        }
    }

    public g(ByteBuffer byteBuffer) {
        this.f6150a = 0;
        byteBuffer.slice();
    }

    public g(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i10, m7.j jVar, Rect rect) {
        this.f6150a = 18;
        s1.g.k(rect.left);
        s1.g.k(rect.top);
        s1.g.k(rect.right);
        s1.g.k(rect.bottom);
    }

    public g(g1 g1Var, e1 e1Var) {
        this.f6150a = 17;
    }

    public g(f0.d dVar, d0.c cVar) {
        this.f6150a = 24;
        new WeakReference(dVar);
        f0.c cVar2 = dVar.I;
        cVar.getClass();
        d0.c.n(cVar2);
        d0.c.n(dVar.J);
        d0.c.n(dVar.K);
        d0.c.n(dVar.L);
        d0.c.n(dVar.M);
    }

    @Override // f2.c1
    public void j() {
    }

    private final void E(Object obj) {
    }

    @Override // com.bumptech.glide.manager.f
    public void k(j0 j0Var) {
    }

    @Override // com.bumptech.glide.manager.g
    public void l(com.bumptech.glide.manager.h hVar) {
    }

    @Override // b2.g
    public void g(Looper looper, z1.i iVar) {
    }
}
