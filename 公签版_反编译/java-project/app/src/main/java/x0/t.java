package x0;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public ViewParent f18050a;

    /* renamed from: b, reason: collision with root package name */
    public ViewParent f18051b;

    /* renamed from: c, reason: collision with root package name */
    public final ViewGroup f18052c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f18053d;

    /* renamed from: e, reason: collision with root package name */
    public int[] f18054e;

    public t(ViewGroup viewGroup) {
        this.f18052c = viewGroup;
    }

    public final boolean a(float f10, float f11, boolean z) {
        ViewParent viewParentE;
        if (!this.f18053d || (viewParentE = e(0)) == null) {
            return false;
        }
        int i10 = Build.VERSION.SDK_INT;
        ViewGroup viewGroup = this.f18052c;
        if (i10 >= 21) {
            try {
                return i1.a(viewParentE, viewGroup, f10, f11, z);
            } catch (AbstractMethodError unused) {
                viewParentE.toString();
                return false;
            }
        }
        if (viewParentE instanceof w) {
            return ((w) viewParentE).onNestedFling(viewGroup, f10, f11, z);
        }
        return false;
    }

    public final boolean b(float f10, float f11) {
        ViewParent viewParentE;
        if (!this.f18053d || (viewParentE = e(0)) == null) {
            return false;
        }
        int i10 = Build.VERSION.SDK_INT;
        ViewGroup viewGroup = this.f18052c;
        if (i10 >= 21) {
            try {
                return i1.b(viewParentE, viewGroup, f10, f11);
            } catch (AbstractMethodError unused) {
                viewParentE.toString();
                return false;
            }
        }
        if (viewParentE instanceof w) {
            return ((w) viewParentE).onNestedPreFling(viewGroup, f10, f11);
        }
        return false;
    }

    public final boolean c(int i10, int i11, int[] iArr, int[] iArr2, int i12) {
        ViewParent viewParentE;
        int i13;
        int i14;
        int[] iArr3;
        if (!this.f18053d || (viewParentE = e(i12)) == null) {
            return false;
        }
        if (i10 == 0 && i11 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        ViewGroup viewGroup = this.f18052c;
        if (iArr2 != null) {
            viewGroup.getLocationInWindow(iArr2);
            i13 = iArr2[0];
            i14 = iArr2[1];
        } else {
            i13 = 0;
            i14 = 0;
        }
        if (iArr == null) {
            if (this.f18054e == null) {
                this.f18054e = new int[2];
            }
            iArr3 = this.f18054e;
        } else {
            iArr3 = iArr;
        }
        iArr3[0] = 0;
        iArr3[1] = 0;
        if (viewParentE instanceof u) {
            ((u) viewParentE).f(viewGroup, i10, i11, iArr3, i12);
        } else if (i12 == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    i1.c(viewParentE, viewGroup, i10, i11, iArr3);
                } catch (AbstractMethodError unused) {
                    viewParentE.toString();
                }
            } else if (viewParentE instanceof w) {
                ((w) viewParentE).onNestedPreScroll(viewGroup, i10, i11, iArr3);
            }
        }
        if (iArr2 != null) {
            viewGroup.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i13;
            iArr2[1] = iArr2[1] - i14;
        }
        return (iArr3[0] == 0 && iArr3[1] == 0) ? false : true;
    }

    public final boolean d(int i10, int i11, int i12, int i13, int[] iArr, int i14, int[] iArr2) {
        ViewParent viewParentE;
        int i15;
        int i16;
        int[] iArr3;
        if (!this.f18053d || (viewParentE = e(i14)) == null) {
            return false;
        }
        if (i10 == 0 && i11 == 0 && i12 == 0 && i13 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        ViewGroup viewGroup = this.f18052c;
        if (iArr != null) {
            viewGroup.getLocationInWindow(iArr);
            i15 = iArr[0];
            i16 = iArr[1];
        } else {
            i15 = 0;
            i16 = 0;
        }
        if (iArr2 == null) {
            if (this.f18054e == null) {
                this.f18054e = new int[2];
            }
            int[] iArr4 = this.f18054e;
            iArr4[0] = 0;
            iArr4[1] = 0;
            iArr3 = iArr4;
        } else {
            iArr3 = iArr2;
        }
        if (viewParentE instanceof v) {
            ((v) viewParentE).b(viewGroup, i10, i11, i12, i13, i14, iArr3);
        } else {
            iArr3[0] = iArr3[0] + i12;
            iArr3[1] = iArr3[1] + i13;
            if (viewParentE instanceof u) {
                ((u) viewParentE).c(viewGroup, i10, i11, i12, i13, i14);
            } else if (i14 == 0) {
                if (Build.VERSION.SDK_INT >= 21) {
                    try {
                        i1.d(viewParentE, viewGroup, i10, i11, i12, i13);
                    } catch (AbstractMethodError unused) {
                        viewParentE.toString();
                    }
                } else if (viewParentE instanceof w) {
                    ((w) viewParentE).onNestedScroll(viewGroup, i10, i11, i12, i13);
                }
            }
        }
        if (iArr != null) {
            viewGroup.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i15;
            iArr[1] = iArr[1] - i16;
        }
        return true;
    }

    public final ViewParent e(int i10) {
        if (i10 == 0) {
            return this.f18050a;
        }
        if (i10 != 1) {
            return null;
        }
        return this.f18051b;
    }

    public final boolean f(int i10) {
        return e(i10) != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void g(boolean z) {
        if (this.f18053d) {
            WeakHashMap weakHashMap = b1.f17953a;
            int i10 = Build.VERSION.SDK_INT;
            ViewGroup viewGroup = this.f18052c;
            if (i10 >= 21) {
                p0.z(viewGroup);
            } else {
                ((s) viewGroup).stopNestedScroll();
            }
        }
        this.f18053d = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean h(int i10, int i11) {
        boolean zF;
        if (f(i11)) {
            return true;
        }
        if (this.f18053d) {
            ViewGroup viewGroup = this.f18052c;
            View view = viewGroup;
            for (ViewParent parent = viewGroup.getParent(); parent != null; parent = parent.getParent()) {
                boolean z = parent instanceof u;
                if (z) {
                    zF = ((u) parent).d(view, viewGroup, i10, i11);
                } else if (i11 != 0) {
                    zF = false;
                } else if (Build.VERSION.SDK_INT >= 21) {
                    try {
                        zF = i1.f(parent, view, viewGroup, i10);
                    } catch (AbstractMethodError unused) {
                        parent.toString();
                    }
                } else if (parent instanceof w) {
                    zF = ((w) parent).onStartNestedScroll(view, viewGroup, i10);
                }
                if (zF) {
                    if (i11 == 0) {
                        this.f18050a = parent;
                    } else if (i11 == 1) {
                        this.f18051b = parent;
                    }
                    if (z) {
                        ((u) parent).e(view, viewGroup, i10, i11);
                    } else if (i11 == 0) {
                        if (Build.VERSION.SDK_INT >= 21) {
                            try {
                                i1.e(parent, view, viewGroup, i10);
                            } catch (AbstractMethodError unused2) {
                                parent.toString();
                            }
                        } else if (parent instanceof w) {
                            ((w) parent).onNestedScrollAccepted(view, viewGroup, i10);
                        }
                    }
                    return true;
                }
                if (parent instanceof View) {
                    view = (View) parent;
                }
            }
        }
        return false;
    }

    public final void i(int i10) {
        ViewParent viewParentE = e(i10);
        if (viewParentE != null) {
            boolean z = viewParentE instanceof u;
            ViewGroup viewGroup = this.f18052c;
            if (z) {
                ((u) viewParentE).a(i10, viewGroup);
            } else if (i10 == 0) {
                if (Build.VERSION.SDK_INT >= 21) {
                    try {
                        i1.g(viewParentE, viewGroup);
                    } catch (AbstractMethodError unused) {
                        viewParentE.toString();
                    }
                } else if (viewParentE instanceof w) {
                    ((w) viewParentE).onStopNestedScroll(viewGroup);
                }
            }
            if (i10 == 0) {
                this.f18050a = null;
            } else {
                if (i10 != 1) {
                    return;
                }
                this.f18051b = null;
            }
        }
    }
}
