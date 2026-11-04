package androidx.fragment.app;

import android.util.Log;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class a implements b1 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f1161a;

    /* renamed from: b, reason: collision with root package name */
    public int f1162b;

    /* renamed from: c, reason: collision with root package name */
    public int f1163c;

    /* renamed from: d, reason: collision with root package name */
    public int f1164d;

    /* renamed from: e, reason: collision with root package name */
    public int f1165e;

    /* renamed from: f, reason: collision with root package name */
    public int f1166f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f1167g;

    /* renamed from: h, reason: collision with root package name */
    public String f1168h;

    /* renamed from: i, reason: collision with root package name */
    public int f1169i;

    /* renamed from: j, reason: collision with root package name */
    public CharSequence f1170j;

    /* renamed from: k, reason: collision with root package name */
    public int f1171k;
    public CharSequence l;

    /* renamed from: m, reason: collision with root package name */
    public ArrayList f1172m;

    /* renamed from: n, reason: collision with root package name */
    public ArrayList f1173n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f1174o;

    /* renamed from: p, reason: collision with root package name */
    public final d1 f1175p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f1176q;
    public int r;

    public a(d1 d1Var) {
        d1Var.E();
        o0 o0Var = d1Var.f1246t;
        if (o0Var != null) {
            o0Var.f1360b.getClassLoader();
        }
        this.f1161a = new ArrayList();
        this.f1174o = false;
        this.r = -1;
        this.f1175p = d1Var;
    }

    @Override // androidx.fragment.app.b1
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        if (Log.isLoggable("FragmentManager", 2)) {
            toString();
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.f1167g) {
            return true;
        }
        d1 d1Var = this.f1175p;
        if (d1Var.f1232d == null) {
            d1Var.f1232d = new ArrayList();
        }
        d1Var.f1232d.add(this);
        return true;
    }

    public final void b(m1 m1Var) {
        this.f1161a.add(m1Var);
        m1Var.f1344d = this.f1162b;
        m1Var.f1345e = this.f1163c;
        m1Var.f1346f = this.f1164d;
        m1Var.f1347g = this.f1165e;
    }

    public final void c(int i10) {
        if (this.f1167g) {
            if (Log.isLoggable("FragmentManager", 2)) {
                toString();
            }
            ArrayList arrayList = this.f1161a;
            int size = arrayList.size();
            for (int i11 = 0; i11 < size; i11++) {
                m1 m1Var = (m1) arrayList.get(i11);
                Fragment fragment = m1Var.f1342b;
                if (fragment != null) {
                    fragment.mBackStackNesting += i10;
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Fragment fragment2 = m1Var.f1342b;
                        if (fragment2 != null) {
                            fragment2.toString();
                        }
                        int i12 = m1Var.f1342b.mBackStackNesting;
                    }
                }
            }
        }
    }

    public final int d(boolean z) {
        if (this.f1176q) {
            throw new IllegalStateException("commit already called");
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            toString();
            PrintWriter printWriter = new PrintWriter(new x1());
            g("  ", printWriter, true);
            printWriter.close();
        }
        this.f1176q = true;
        boolean z4 = this.f1167g;
        d1 d1Var = this.f1175p;
        if (z4) {
            this.r = d1Var.f1237i.getAndIncrement();
        } else {
            this.r = -1;
        }
        d1Var.w(this, z);
        return this.r;
    }

    public final void e() {
        if (this.f1167g) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.f1175p.z(this, false);
    }

    public final void f(int i10, Fragment fragment, String str, int i11) {
        String str2 = fragment.mPreviousWho;
        if (str2 != null) {
            l1.d.c(fragment, str2);
        }
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str3 = fragment.mTag;
            if (str3 != null && !str.equals(str3)) {
                StringBuilder sb2 = new StringBuilder("Can't change tag of fragment ");
                sb2.append(fragment);
                sb2.append(": was ");
                throw new IllegalStateException(android.support.v4.media.session.a.u(sb2, fragment.mTag, " now ", str));
            }
            fragment.mTag = str;
        }
        if (i10 != 0) {
            if (i10 == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            int i12 = fragment.mFragmentId;
            if (i12 != 0 && i12 != i10) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i10);
            }
            fragment.mFragmentId = i10;
            fragment.mContainerId = i10;
        }
        b(new m1(fragment, i11));
        fragment.mFragmentManager = this.f1175p;
    }

    public final void g(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f1168h);
            printWriter.print(" mIndex=");
            printWriter.print(this.r);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f1176q);
            if (this.f1166f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f1166f));
            }
            if (this.f1162b != 0 || this.f1163c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f1162b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f1163c));
            }
            if (this.f1164d != 0 || this.f1165e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f1164d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f1165e));
            }
            if (this.f1169i != 0 || this.f1170j != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f1169i));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f1170j);
            }
            if (this.f1171k != 0 || this.l != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f1171k));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.l);
            }
        }
        ArrayList arrayList = this.f1161a;
        if (arrayList.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            m1 m1Var = (m1) arrayList.get(i10);
            switch (m1Var.f1341a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + m1Var.f1341a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i10);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(m1Var.f1342b);
            if (z) {
                if (m1Var.f1344d != 0 || m1Var.f1345e != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(m1Var.f1344d));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(m1Var.f1345e));
                }
                if (m1Var.f1346f != 0 || m1Var.f1347g != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(m1Var.f1346f));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(m1Var.f1347g));
                }
            }
        }
    }

    public final void h(Fragment fragment) {
        d1 d1Var = fragment.mFragmentManager;
        if (d1Var == null || d1Var == this.f1175p) {
            b(new m1(fragment, 4));
            return;
        }
        throw new IllegalStateException("Cannot hide Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    public final void i(Fragment fragment) {
        d1 d1Var = fragment.mFragmentManager;
        if (d1Var == null || d1Var == this.f1175p) {
            b(new m1(fragment, 3));
            return;
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    public final void j(Fragment fragment, androidx.lifecycle.n nVar) {
        d1 d1Var = fragment.mFragmentManager;
        d1 d1Var2 = this.f1175p;
        if (d1Var != d1Var2) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + d1Var2);
        }
        if (nVar == androidx.lifecycle.n.INITIALIZED && fragment.mState > -1) {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + nVar + " after the Fragment has been created");
        }
        if (nVar != androidx.lifecycle.n.DESTROYED) {
            b(new m1(fragment, nVar));
            return;
        }
        throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + nVar + ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
    }

    public final void k(Fragment fragment) {
        d1 d1Var = fragment.mFragmentManager;
        if (d1Var == null || d1Var == this.f1175p) {
            b(new m1(fragment, 5));
            return;
        }
        throw new IllegalStateException("Cannot show Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("BackStackEntry{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.r >= 0) {
            sb2.append(" #");
            sb2.append(this.r);
        }
        if (this.f1168h != null) {
            sb2.append(" ");
            sb2.append(this.f1168h);
        }
        sb2.append("}");
        return sb2.toString();
    }
}
