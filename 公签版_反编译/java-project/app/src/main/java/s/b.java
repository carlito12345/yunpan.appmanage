package s;

import a0.k;
import a0.l;
import a0.u;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseArray;
import android.util.StateSet;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class b extends Drawable.ConstantState {
    public boolean A;
    public ColorFilter B;
    public boolean C;
    public ColorStateList D;
    public PorterDuff.Mode E;
    public boolean F;
    public boolean G;
    public int[][] H;
    public k I;
    public u J;

    /* renamed from: a, reason: collision with root package name */
    public final e f13827a;

    /* renamed from: b, reason: collision with root package name */
    public Resources f13828b;

    /* renamed from: c, reason: collision with root package name */
    public int f13829c;

    /* renamed from: d, reason: collision with root package name */
    public int f13830d;

    /* renamed from: e, reason: collision with root package name */
    public int f13831e;

    /* renamed from: f, reason: collision with root package name */
    public SparseArray f13832f;

    /* renamed from: g, reason: collision with root package name */
    public Drawable[] f13833g;

    /* renamed from: h, reason: collision with root package name */
    public int f13834h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f13835i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f13836j;

    /* renamed from: k, reason: collision with root package name */
    public Rect f13837k;
    public boolean l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f13838m;

    /* renamed from: n, reason: collision with root package name */
    public int f13839n;

    /* renamed from: o, reason: collision with root package name */
    public int f13840o;

    /* renamed from: p, reason: collision with root package name */
    public int f13841p;

    /* renamed from: q, reason: collision with root package name */
    public int f13842q;
    public boolean r;

    /* renamed from: s, reason: collision with root package name */
    public int f13843s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f13844t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f13845u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f13846v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f13847w;

    /* renamed from: x, reason: collision with root package name */
    public int f13848x;

    /* renamed from: y, reason: collision with root package name */
    public int f13849y;
    public int z;

    public b(b bVar, e eVar, Resources resources) {
        this.f13835i = false;
        this.l = false;
        this.f13847w = true;
        this.f13849y = 0;
        this.z = 0;
        this.f13827a = eVar;
        this.f13828b = resources != null ? resources : bVar != null ? bVar.f13828b : null;
        int i10 = bVar != null ? bVar.f13829c : 0;
        int i11 = f.f13861m;
        i10 = resources != null ? resources.getDisplayMetrics().densityDpi : i10;
        i10 = i10 == 0 ? CarSettingID.Recv.BCS_ATS_DRV_MODE_REQ : i10;
        this.f13829c = i10;
        if (bVar != null) {
            this.f13830d = bVar.f13830d;
            this.f13831e = bVar.f13831e;
            this.f13845u = true;
            this.f13846v = true;
            this.f13835i = bVar.f13835i;
            this.l = bVar.l;
            this.f13847w = bVar.f13847w;
            this.f13848x = bVar.f13848x;
            this.f13849y = bVar.f13849y;
            this.z = bVar.z;
            this.A = bVar.A;
            this.B = bVar.B;
            this.C = bVar.C;
            this.D = bVar.D;
            this.E = bVar.E;
            this.F = bVar.F;
            this.G = bVar.G;
            if (bVar.f13829c == i10) {
                if (bVar.f13836j) {
                    this.f13837k = bVar.f13837k != null ? new Rect(bVar.f13837k) : null;
                    this.f13836j = true;
                }
                if (bVar.f13838m) {
                    this.f13839n = bVar.f13839n;
                    this.f13840o = bVar.f13840o;
                    this.f13841p = bVar.f13841p;
                    this.f13842q = bVar.f13842q;
                    this.f13838m = true;
                }
            }
            if (bVar.r) {
                this.f13843s = bVar.f13843s;
                this.r = true;
            }
            if (bVar.f13844t) {
                this.f13844t = true;
            }
            Drawable[] drawableArr = bVar.f13833g;
            this.f13833g = new Drawable[drawableArr.length];
            this.f13834h = bVar.f13834h;
            SparseArray sparseArray = bVar.f13832f;
            if (sparseArray != null) {
                this.f13832f = sparseArray.clone();
            } else {
                this.f13832f = new SparseArray(this.f13834h);
            }
            int i12 = this.f13834h;
            for (int i13 = 0; i13 < i12; i13++) {
                Drawable drawable = drawableArr[i13];
                if (drawable != null) {
                    Drawable.ConstantState constantState = drawable.getConstantState();
                    if (constantState != null) {
                        this.f13832f.put(i13, constantState);
                    } else {
                        this.f13833g[i13] = drawableArr[i13];
                    }
                }
            }
        } else {
            this.f13833g = new Drawable[10];
            this.f13834h = 0;
        }
        if (bVar != null) {
            this.H = bVar.H;
        } else {
            this.H = new int[this.f13833g.length][];
        }
        if (bVar != null) {
            this.I = bVar.I;
            this.J = bVar.J;
        } else {
            this.I = new k();
            this.J = new u();
        }
    }

    public final int a(Drawable drawable) {
        int i10 = this.f13834h;
        if (i10 >= this.f13833g.length) {
            int i11 = i10 + 10;
            Drawable[] drawableArr = new Drawable[i11];
            Drawable[] drawableArr2 = this.f13833g;
            if (drawableArr2 != null) {
                System.arraycopy(drawableArr2, 0, drawableArr, 0, i10);
            }
            this.f13833g = drawableArr;
            int[][] iArr = new int[i11][];
            System.arraycopy(this.H, 0, iArr, 0, i10);
            this.H = iArr;
        }
        drawable.mutate();
        drawable.setVisible(false, true);
        drawable.setCallback(this.f13827a);
        this.f13833g[i10] = drawable;
        this.f13834h++;
        this.f13831e = drawable.getChangingConfigurations() | this.f13831e;
        this.r = false;
        this.f13844t = false;
        this.f13837k = null;
        this.f13836j = false;
        this.f13838m = false;
        this.f13845u = false;
        return i10;
    }

    public final void b() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        this.f13838m = true;
        c();
        int i10 = this.f13834h;
        Drawable[] drawableArr = this.f13833g;
        this.f13840o = -1;
        this.f13839n = -1;
        this.f13842q = 0;
        this.f13841p = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            Drawable drawable = drawableArr[i11];
            int intrinsicWidth = drawable.getIntrinsicWidth();
            if (intrinsicWidth > this.f13839n) {
                this.f13839n = intrinsicWidth;
            }
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicHeight > this.f13840o) {
                this.f13840o = intrinsicHeight;
            }
            int minimumWidth = drawable.getMinimumWidth();
            if (minimumWidth > this.f13841p) {
                this.f13841p = minimumWidth;
            }
            int minimumHeight = drawable.getMinimumHeight();
            if (minimumHeight > this.f13842q) {
                this.f13842q = minimumHeight;
            }
        }
    }

    public final void c() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        SparseArray sparseArray = this.f13832f;
        if (sparseArray != null) {
            int size = sparseArray.size();
            for (int i10 = 0; i10 < size; i10++) {
                int iKeyAt = this.f13832f.keyAt(i10);
                Drawable.ConstantState constantState = (Drawable.ConstantState) this.f13832f.valueAt(i10);
                Drawable[] drawableArr = this.f13833g;
                Drawable drawableNewDrawable = constantState.newDrawable(this.f13828b);
                if (Build.VERSION.SDK_INT >= 23) {
                    com.bumptech.glide.c.d0(drawableNewDrawable, this.f13848x);
                }
                Drawable drawableMutate = drawableNewDrawable.mutate();
                drawableMutate.setCallback(this.f13827a);
                drawableArr[iKeyAt] = drawableMutate;
            }
            this.f13832f = null;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final boolean canApplyTheme() {
        int i10 = this.f13834h;
        Drawable[] drawableArr = this.f13833g;
        for (int i11 = 0; i11 < i10; i11++) {
            Drawable drawable = drawableArr[i11];
            if (drawable != null) {
                if (Build.VERSION.SDK_INT >= 21 ? q0.b.b(drawable) : false) {
                    return true;
                }
            } else {
                Drawable.ConstantState constantState = (Drawable.ConstantState) this.f13832f.get(i11);
                if (constantState != null && a2.d.a(constantState)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final Drawable d(int i10) {
        int iIndexOfKey;
        Drawable drawable = this.f13833g[i10];
        if (drawable != null) {
            return drawable;
        }
        SparseArray sparseArray = this.f13832f;
        if (sparseArray == null || (iIndexOfKey = sparseArray.indexOfKey(i10)) < 0) {
            return null;
        }
        Drawable drawableNewDrawable = ((Drawable.ConstantState) this.f13832f.valueAt(iIndexOfKey)).newDrawable(this.f13828b);
        if (Build.VERSION.SDK_INT >= 23) {
            com.bumptech.glide.c.d0(drawableNewDrawable, this.f13848x);
        }
        Drawable drawableMutate = drawableNewDrawable.mutate();
        drawableMutate.setCallback(this.f13827a);
        this.f13833g[i10] = drawableMutate;
        this.f13832f.removeAt(iIndexOfKey);
        if (this.f13832f.size() == 0) {
            this.f13832f = null;
        }
        return drawableMutate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r5v2 */
    public final int e(int i10) {
        ?? r5;
        if (i10 < 0) {
            return 0;
        }
        u uVar = this.J;
        int i11 = 0;
        int iA = b0.a.a(uVar.f68c, i10, uVar.f66a);
        if (iA >= 0 && (r5 = uVar.f67b[iA]) != l.f38b) {
            i11 = r5;
        }
        return i11.intValue();
    }

    public final int f(int[] iArr) {
        int[][] iArr2 = this.H;
        int i10 = this.f13834h;
        for (int i11 = 0; i11 < i10; i11++) {
            if (StateSet.stateSetMatches(iArr2[i11], iArr)) {
                return i11;
            }
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return this.f13830d | this.f13831e;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new e(this, null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        return new e(this, resources);
    }
}
