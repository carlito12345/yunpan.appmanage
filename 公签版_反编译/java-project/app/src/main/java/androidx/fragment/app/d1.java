package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.desay_svautomotive.libsvcarinfo.CarLanID;
import com.yunpan.appmanage.R;
import j$.util.DesugarCollections;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class d1 {
    public androidx.activity.result.d A;
    public androidx.activity.result.d B;
    public ArrayDeque C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public ArrayList I;
    public ArrayList J;
    public ArrayList K;
    public g1 L;
    public final o M;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1230b;

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f1232d;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f1233e;

    /* renamed from: g, reason: collision with root package name */
    public androidx.activity.w f1235g;
    public final k0 l;

    /* renamed from: m, reason: collision with root package name */
    public final CopyOnWriteArrayList f1240m;

    /* renamed from: n, reason: collision with root package name */
    public final s0 f1241n;

    /* renamed from: o, reason: collision with root package name */
    public final s0 f1242o;

    /* renamed from: p, reason: collision with root package name */
    public final s0 f1243p;

    /* renamed from: q, reason: collision with root package name */
    public final s0 f1244q;
    public final v0 r;

    /* renamed from: s, reason: collision with root package name */
    public int f1245s;

    /* renamed from: t, reason: collision with root package name */
    public o0 f1246t;

    /* renamed from: u, reason: collision with root package name */
    public m0 f1247u;

    /* renamed from: v, reason: collision with root package name */
    public Fragment f1248v;

    /* renamed from: w, reason: collision with root package name */
    public Fragment f1249w;

    /* renamed from: x, reason: collision with root package name */
    public final w0 f1250x;

    /* renamed from: y, reason: collision with root package name */
    public final gf.g f1251y;
    public androidx.activity.result.d z;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f1229a = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final l1 f1231c = new l1();

    /* renamed from: f, reason: collision with root package name */
    public final q0 f1234f = new q0(this);

    /* renamed from: h, reason: collision with root package name */
    public final u0 f1236h = new u0(this);

    /* renamed from: i, reason: collision with root package name */
    public final AtomicInteger f1237i = new AtomicInteger();

    /* renamed from: j, reason: collision with root package name */
    public final Map f1238j = DesugarCollections.synchronizedMap(new HashMap());

    /* renamed from: k, reason: collision with root package name */
    public final Map f1239k = DesugarCollections.synchronizedMap(new HashMap());

    /* JADX WARN: Type inference failed for: r0v12, types: [androidx.fragment.app.s0] */
    /* JADX WARN: Type inference failed for: r0v13, types: [androidx.fragment.app.s0] */
    /* JADX WARN: Type inference failed for: r0v14, types: [androidx.fragment.app.s0] */
    /* JADX WARN: Type inference failed for: r0v15, types: [androidx.fragment.app.s0] */
    public d1() {
        DesugarCollections.synchronizedMap(new HashMap());
        this.l = new k0(this);
        this.f1240m = new CopyOnWriteArrayList();
        final int i10 = 0;
        this.f1241n = new w0.a(this) { // from class: androidx.fragment.app.s0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ d1 f1394b;

            {
                this.f1394b = this;
            }

            @Override // w0.a
            public final void accept(Object obj) {
                switch (i10) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        d1 d1Var = this.f1394b;
                        if (d1Var.I()) {
                            d1Var.h(false, configuration);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        d1 d1Var2 = this.f1394b;
                        if (d1Var2.I() && num.intValue() == 80) {
                            d1Var2.l(false);
                            break;
                        }
                        break;
                    case 2:
                        m0.l lVar = (m0.l) obj;
                        d1 d1Var3 = this.f1394b;
                        if (d1Var3.I()) {
                            d1Var3.m(lVar.f10766a, false);
                            break;
                        }
                        break;
                    default:
                        m0.l0 l0Var = (m0.l0) obj;
                        d1 d1Var4 = this.f1394b;
                        if (d1Var4.I()) {
                            d1Var4.r(l0Var.f10767a, false);
                            break;
                        }
                        break;
                }
            }
        };
        final int i11 = 1;
        this.f1242o = new w0.a(this) { // from class: androidx.fragment.app.s0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ d1 f1394b;

            {
                this.f1394b = this;
            }

            @Override // w0.a
            public final void accept(Object obj) {
                switch (i11) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        d1 d1Var = this.f1394b;
                        if (d1Var.I()) {
                            d1Var.h(false, configuration);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        d1 d1Var2 = this.f1394b;
                        if (d1Var2.I() && num.intValue() == 80) {
                            d1Var2.l(false);
                            break;
                        }
                        break;
                    case 2:
                        m0.l lVar = (m0.l) obj;
                        d1 d1Var3 = this.f1394b;
                        if (d1Var3.I()) {
                            d1Var3.m(lVar.f10766a, false);
                            break;
                        }
                        break;
                    default:
                        m0.l0 l0Var = (m0.l0) obj;
                        d1 d1Var4 = this.f1394b;
                        if (d1Var4.I()) {
                            d1Var4.r(l0Var.f10767a, false);
                            break;
                        }
                        break;
                }
            }
        };
        final int i12 = 2;
        this.f1243p = new w0.a(this) { // from class: androidx.fragment.app.s0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ d1 f1394b;

            {
                this.f1394b = this;
            }

            @Override // w0.a
            public final void accept(Object obj) {
                switch (i12) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        d1 d1Var = this.f1394b;
                        if (d1Var.I()) {
                            d1Var.h(false, configuration);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        d1 d1Var2 = this.f1394b;
                        if (d1Var2.I() && num.intValue() == 80) {
                            d1Var2.l(false);
                            break;
                        }
                        break;
                    case 2:
                        m0.l lVar = (m0.l) obj;
                        d1 d1Var3 = this.f1394b;
                        if (d1Var3.I()) {
                            d1Var3.m(lVar.f10766a, false);
                            break;
                        }
                        break;
                    default:
                        m0.l0 l0Var = (m0.l0) obj;
                        d1 d1Var4 = this.f1394b;
                        if (d1Var4.I()) {
                            d1Var4.r(l0Var.f10767a, false);
                            break;
                        }
                        break;
                }
            }
        };
        final int i13 = 3;
        this.f1244q = new w0.a(this) { // from class: androidx.fragment.app.s0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ d1 f1394b;

            {
                this.f1394b = this;
            }

            @Override // w0.a
            public final void accept(Object obj) {
                switch (i13) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        d1 d1Var = this.f1394b;
                        if (d1Var.I()) {
                            d1Var.h(false, configuration);
                            break;
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        d1 d1Var2 = this.f1394b;
                        if (d1Var2.I() && num.intValue() == 80) {
                            d1Var2.l(false);
                            break;
                        }
                        break;
                    case 2:
                        m0.l lVar = (m0.l) obj;
                        d1 d1Var3 = this.f1394b;
                        if (d1Var3.I()) {
                            d1Var3.m(lVar.f10766a, false);
                            break;
                        }
                        break;
                    default:
                        m0.l0 l0Var = (m0.l0) obj;
                        d1 d1Var4 = this.f1394b;
                        if (d1Var4.I()) {
                            d1Var4.r(l0Var.f10767a, false);
                            break;
                        }
                        break;
                }
            }
        };
        this.r = new v0(this);
        this.f1245s = -1;
        this.f1250x = new w0(this);
        this.f1251y = new gf.g(5);
        this.C = new ArrayDeque();
        this.M = new o(2, this);
    }

    public static boolean H(Fragment fragment) {
        if (!fragment.mHasMenu || !fragment.mMenuVisible) {
            Iterator it = fragment.mChildFragmentManager.f1231c.e().iterator();
            boolean zH = false;
            while (it.hasNext()) {
                Fragment fragment2 = (Fragment) it.next();
                if (fragment2 != null) {
                    zH = H(fragment2);
                }
                if (zH) {
                }
            }
            return false;
        }
        return true;
    }

    public static boolean J(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        d1 d1Var = fragment.mFragmentManager;
        return fragment.equals(d1Var.f1249w) && J(d1Var.f1248v);
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0161  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void A(ArrayList arrayList, ArrayList arrayList2, int i10, int i11) {
        ViewGroup viewGroup;
        ArrayList arrayList3;
        l1 l1Var;
        l1 l1Var2;
        l1 l1Var3;
        int i12;
        int i13;
        int i14;
        ArrayList arrayList4 = arrayList;
        ArrayList arrayList5 = arrayList2;
        boolean z = ((a) arrayList4.get(i10)).f1174o;
        ArrayList arrayList6 = this.K;
        if (arrayList6 == null) {
            this.K = new ArrayList();
        } else {
            arrayList6.clear();
        }
        ArrayList arrayList7 = this.K;
        l1 l1Var4 = this.f1231c;
        arrayList7.addAll(l1Var4.f());
        Fragment fragment = this.f1249w;
        int i15 = i10;
        boolean z4 = false;
        while (true) {
            int i16 = 1;
            if (i15 >= i11) {
                l1 l1Var5 = l1Var4;
                this.K.clear();
                if (!z && this.f1245s >= 1) {
                    for (int i17 = i10; i17 < i11; i17++) {
                        Iterator it = ((a) arrayList.get(i17)).f1161a.iterator();
                        while (it.hasNext()) {
                            Fragment fragment2 = ((m1) it.next()).f1342b;
                            if (fragment2 == null || fragment2.mFragmentManager == null) {
                                l1Var = l1Var5;
                            } else {
                                l1Var = l1Var5;
                                l1Var.g(f(fragment2));
                            }
                            l1Var5 = l1Var;
                        }
                    }
                }
                for (int i18 = i10; i18 < i11; i18++) {
                    a aVar = (a) arrayList.get(i18);
                    if (((Boolean) arrayList2.get(i18)).booleanValue()) {
                        aVar.c(-1);
                        ArrayList arrayList8 = aVar.f1161a;
                        boolean z10 = true;
                        for (int size = arrayList8.size() - 1; size >= 0; size--) {
                            m1 m1Var = (m1) arrayList8.get(size);
                            Fragment fragment3 = m1Var.f1342b;
                            if (fragment3 != null) {
                                fragment3.mBeingSaved = false;
                                fragment3.setPopDirection(z10);
                                int i19 = aVar.f1166f;
                                int i20 = 8194;
                                if (i19 != 4097) {
                                    if (i19 != 8194) {
                                        i20 = CarLanID.Send.NAVI;
                                        if (i19 != 8197) {
                                            i20 = i19 != 4099 ? i19 != 4100 ? 0 : CarLanID.Recv.SYSTEM : CarLanID.Send.PHONE;
                                        }
                                    } else {
                                        i20 = CarLanID.Send.MUSIC;
                                    }
                                }
                                fragment3.setNextTransition(i20);
                                fragment3.setSharedElementNames(aVar.f1173n, aVar.f1172m);
                            }
                            int i21 = m1Var.f1341a;
                            d1 d1Var = aVar.f1175p;
                            switch (i21) {
                                case 1:
                                    fragment3.setAnimations(m1Var.f1344d, m1Var.f1345e, m1Var.f1346f, m1Var.f1347g);
                                    z10 = true;
                                    d1Var.X(fragment3, true);
                                    d1Var.R(fragment3);
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + m1Var.f1341a);
                                case 3:
                                    fragment3.setAnimations(m1Var.f1344d, m1Var.f1345e, m1Var.f1346f, m1Var.f1347g);
                                    d1Var.a(fragment3);
                                    z10 = true;
                                case 4:
                                    fragment3.setAnimations(m1Var.f1344d, m1Var.f1345e, m1Var.f1346f, m1Var.f1347g);
                                    d1Var.getClass();
                                    if (Log.isLoggable("FragmentManager", 2)) {
                                        fragment3.toString();
                                    }
                                    if (fragment3.mHidden) {
                                        fragment3.mHidden = false;
                                        fragment3.mHiddenChanged = !fragment3.mHiddenChanged;
                                    }
                                    z10 = true;
                                case 5:
                                    fragment3.setAnimations(m1Var.f1344d, m1Var.f1345e, m1Var.f1346f, m1Var.f1347g);
                                    d1Var.X(fragment3, true);
                                    d1Var.G(fragment3);
                                    z10 = true;
                                case 6:
                                    fragment3.setAnimations(m1Var.f1344d, m1Var.f1345e, m1Var.f1346f, m1Var.f1347g);
                                    d1Var.c(fragment3);
                                    z10 = true;
                                case 7:
                                    fragment3.setAnimations(m1Var.f1344d, m1Var.f1345e, m1Var.f1346f, m1Var.f1347g);
                                    d1Var.X(fragment3, true);
                                    d1Var.g(fragment3);
                                    z10 = true;
                                case 8:
                                    d1Var.Z(null);
                                    z10 = true;
                                case 9:
                                    d1Var.Z(fragment3);
                                    z10 = true;
                                case 10:
                                    d1Var.Y(fragment3, m1Var.f1348h);
                                    z10 = true;
                            }
                        }
                    } else {
                        aVar.c(1);
                        ArrayList arrayList9 = aVar.f1161a;
                        int size2 = arrayList9.size();
                        int i22 = 0;
                        while (i22 < size2) {
                            m1 m1Var2 = (m1) arrayList9.get(i22);
                            Fragment fragment4 = m1Var2.f1342b;
                            if (fragment4 != null) {
                                fragment4.mBeingSaved = false;
                                fragment4.setPopDirection(false);
                                fragment4.setNextTransition(aVar.f1166f);
                                fragment4.setSharedElementNames(aVar.f1172m, aVar.f1173n);
                            }
                            int i23 = m1Var2.f1341a;
                            d1 d1Var2 = aVar.f1175p;
                            switch (i23) {
                                case 1:
                                    arrayList3 = arrayList9;
                                    fragment4.setAnimations(m1Var2.f1344d, m1Var2.f1345e, m1Var2.f1346f, m1Var2.f1347g);
                                    d1Var2.X(fragment4, false);
                                    d1Var2.a(fragment4);
                                    i22++;
                                    arrayList9 = arrayList3;
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + m1Var2.f1341a);
                                case 3:
                                    arrayList3 = arrayList9;
                                    fragment4.setAnimations(m1Var2.f1344d, m1Var2.f1345e, m1Var2.f1346f, m1Var2.f1347g);
                                    d1Var2.R(fragment4);
                                    i22++;
                                    arrayList9 = arrayList3;
                                case 4:
                                    arrayList3 = arrayList9;
                                    fragment4.setAnimations(m1Var2.f1344d, m1Var2.f1345e, m1Var2.f1346f, m1Var2.f1347g);
                                    d1Var2.G(fragment4);
                                    i22++;
                                    arrayList9 = arrayList3;
                                case 5:
                                    arrayList3 = arrayList9;
                                    fragment4.setAnimations(m1Var2.f1344d, m1Var2.f1345e, m1Var2.f1346f, m1Var2.f1347g);
                                    d1Var2.X(fragment4, false);
                                    if (Log.isLoggable("FragmentManager", 2)) {
                                        fragment4.toString();
                                    }
                                    if (fragment4.mHidden) {
                                        fragment4.mHidden = false;
                                        fragment4.mHiddenChanged = !fragment4.mHiddenChanged;
                                    }
                                    i22++;
                                    arrayList9 = arrayList3;
                                case 6:
                                    arrayList3 = arrayList9;
                                    fragment4.setAnimations(m1Var2.f1344d, m1Var2.f1345e, m1Var2.f1346f, m1Var2.f1347g);
                                    d1Var2.g(fragment4);
                                    i22++;
                                    arrayList9 = arrayList3;
                                case 7:
                                    arrayList3 = arrayList9;
                                    fragment4.setAnimations(m1Var2.f1344d, m1Var2.f1345e, m1Var2.f1346f, m1Var2.f1347g);
                                    d1Var2.X(fragment4, false);
                                    d1Var2.c(fragment4);
                                    i22++;
                                    arrayList9 = arrayList3;
                                case 8:
                                    d1Var2.Z(fragment4);
                                    arrayList3 = arrayList9;
                                    i22++;
                                    arrayList9 = arrayList3;
                                case 9:
                                    d1Var2.Z(null);
                                    arrayList3 = arrayList9;
                                    i22++;
                                    arrayList9 = arrayList3;
                                case 10:
                                    d1Var2.Y(fragment4, m1Var2.f1349i);
                                    arrayList3 = arrayList9;
                                    i22++;
                                    arrayList9 = arrayList3;
                            }
                        }
                    }
                }
                boolean zBooleanValue = ((Boolean) arrayList2.get(i11 - 1)).booleanValue();
                for (int i24 = i10; i24 < i11; i24++) {
                    a aVar2 = (a) arrayList.get(i24);
                    if (zBooleanValue) {
                        for (int size3 = aVar2.f1161a.size() - 1; size3 >= 0; size3--) {
                            Fragment fragment5 = ((m1) aVar2.f1161a.get(size3)).f1342b;
                            if (fragment5 != null) {
                                f(fragment5).i();
                            }
                        }
                    } else {
                        Iterator it2 = aVar2.f1161a.iterator();
                        while (it2.hasNext()) {
                            Fragment fragment6 = ((m1) it2.next()).f1342b;
                            if (fragment6 != null) {
                                f(fragment6).i();
                            }
                        }
                    }
                }
                L(this.f1245s, true);
                HashSet hashSet = new HashSet();
                for (int i25 = i10; i25 < i11; i25++) {
                    Iterator it3 = ((a) arrayList.get(i25)).f1161a.iterator();
                    while (it3.hasNext()) {
                        Fragment fragment7 = ((m1) it3.next()).f1342b;
                        if (fragment7 != null && (viewGroup = fragment7.mContainer) != null) {
                            hashSet.add(n.h(viewGroup, this));
                        }
                    }
                }
                Iterator it4 = hashSet.iterator();
                while (it4.hasNext()) {
                    n nVar = (n) it4.next();
                    nVar.f1353d = zBooleanValue;
                    nVar.i();
                    nVar.d();
                }
                for (int i26 = i10; i26 < i11; i26++) {
                    a aVar3 = (a) arrayList.get(i26);
                    if (((Boolean) arrayList2.get(i26)).booleanValue() && aVar3.r >= 0) {
                        aVar3.r = -1;
                    }
                    aVar3.getClass();
                }
                return;
            }
            a aVar4 = (a) arrayList4.get(i15);
            if (((Boolean) arrayList5.get(i15)).booleanValue()) {
                l1Var2 = l1Var4;
                int i27 = 1;
                ArrayList arrayList10 = this.K;
                ArrayList arrayList11 = aVar4.f1161a;
                int size4 = arrayList11.size() - 1;
                while (size4 >= 0) {
                    m1 m1Var3 = (m1) arrayList11.get(size4);
                    int i28 = m1Var3.f1341a;
                    if (i28 != i27) {
                        if (i28 != 3) {
                            switch (i28) {
                                case 6:
                                    arrayList10.add(m1Var3.f1342b);
                                    break;
                                case 8:
                                    fragment = null;
                                    break;
                                case 9:
                                    fragment = m1Var3.f1342b;
                                    break;
                                case 10:
                                    m1Var3.f1349i = m1Var3.f1348h;
                                    break;
                            }
                        }
                        size4--;
                        i27 = 1;
                    }
                    arrayList10.remove(m1Var3.f1342b);
                    size4--;
                    i27 = 1;
                }
            } else {
                ArrayList arrayList12 = this.K;
                int i29 = 0;
                while (true) {
                    ArrayList arrayList13 = aVar4.f1161a;
                    if (i29 < arrayList13.size()) {
                        m1 m1Var4 = (m1) arrayList13.get(i29);
                        int i30 = m1Var4.f1341a;
                        if (i30 == i16) {
                            l1Var3 = l1Var4;
                            i12 = 1;
                            arrayList12.add(m1Var4.f1342b);
                        } else if (i30 != 2) {
                            if (i30 == 3 || i30 == 6) {
                                arrayList12.remove(m1Var4.f1342b);
                                Fragment fragment8 = m1Var4.f1342b;
                                if (fragment8 == fragment) {
                                    arrayList13.add(i29, new m1(fragment8, 9));
                                    i29++;
                                    l1Var3 = l1Var4;
                                    i12 = 1;
                                    fragment = null;
                                }
                            } else {
                                if (i30 != 7) {
                                    if (i30 == 8) {
                                        arrayList13.add(i29, new m1(9, fragment, 0));
                                        m1Var4.f1343c = true;
                                        i29++;
                                        fragment = m1Var4.f1342b;
                                    }
                                }
                                l1Var3 = l1Var4;
                                i12 = 1;
                                arrayList12.add(m1Var4.f1342b);
                            }
                            l1Var3 = l1Var4;
                            i12 = 1;
                        } else {
                            Fragment fragment9 = m1Var4.f1342b;
                            int i31 = fragment9.mContainerId;
                            int size5 = arrayList12.size() - 1;
                            boolean z11 = false;
                            while (size5 >= 0) {
                                l1 l1Var6 = l1Var4;
                                Fragment fragment10 = (Fragment) arrayList12.get(size5);
                                if (fragment10.mContainerId != i31) {
                                    i13 = i31;
                                } else if (fragment10 == fragment9) {
                                    i13 = i31;
                                    z11 = true;
                                } else {
                                    if (fragment10 == fragment) {
                                        i13 = i31;
                                        arrayList13.add(i29, new m1(9, fragment10, 0));
                                        i29++;
                                        i14 = 0;
                                        fragment = null;
                                    } else {
                                        i13 = i31;
                                        i14 = 0;
                                    }
                                    m1 m1Var5 = new m1(3, fragment10, i14);
                                    m1Var5.f1344d = m1Var4.f1344d;
                                    m1Var5.f1346f = m1Var4.f1346f;
                                    m1Var5.f1345e = m1Var4.f1345e;
                                    m1Var5.f1347g = m1Var4.f1347g;
                                    arrayList13.add(i29, m1Var5);
                                    arrayList12.remove(fragment10);
                                    i29++;
                                    fragment = fragment;
                                }
                                size5--;
                                i31 = i13;
                                l1Var4 = l1Var6;
                            }
                            l1Var3 = l1Var4;
                            i12 = 1;
                            if (z11) {
                                arrayList13.remove(i29);
                                i29--;
                            } else {
                                m1Var4.f1341a = 1;
                                m1Var4.f1343c = true;
                                arrayList12.add(fragment9);
                            }
                        }
                        i29 += i12;
                        l1Var4 = l1Var3;
                        i16 = 1;
                    } else {
                        l1Var2 = l1Var4;
                    }
                }
            }
            z4 = z4 || aVar4.f1167g;
            i15++;
            arrayList4 = arrayList;
            arrayList5 = arrayList2;
            l1Var4 = l1Var2;
        }
    }

    public final Fragment B(int i10) {
        l1 l1Var = this.f1231c;
        ArrayList arrayList = l1Var.f1333a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Fragment fragment = (Fragment) arrayList.get(size);
            if (fragment != null && fragment.mFragmentId == i10) {
                return fragment;
            }
        }
        for (k1 k1Var : l1Var.f1334b.values()) {
            if (k1Var != null) {
                Fragment fragment2 = k1Var.f1320c;
                if (fragment2.mFragmentId == i10) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    public final Fragment C(String str) {
        l1 l1Var = this.f1231c;
        if (str != null) {
            ArrayList arrayList = l1Var.f1333a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                Fragment fragment = (Fragment) arrayList.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (str != null) {
            for (k1 k1Var : l1Var.f1334b.values()) {
                if (k1Var != null) {
                    Fragment fragment2 = k1Var.f1320c;
                    if (str.equals(fragment2.mTag)) {
                        return fragment2;
                    }
                }
            }
        } else {
            l1Var.getClass();
        }
        return null;
    }

    public final ViewGroup D(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.mContainerId > 0 && this.f1247u.o()) {
            View viewN = this.f1247u.n(fragment.mContainerId);
            if (viewN instanceof ViewGroup) {
                return (ViewGroup) viewN;
            }
        }
        return null;
    }

    public final w0 E() {
        Fragment fragment = this.f1248v;
        return fragment != null ? fragment.mFragmentManager.E() : this.f1250x;
    }

    public final gf.g F() {
        Fragment fragment = this.f1248v;
        return fragment != null ? fragment.mFragmentManager.F() : this.f1251y;
    }

    public final void G(Fragment fragment) {
        if (Log.isLoggable("FragmentManager", 2) && fragment != null) {
            fragment.toString();
        }
        if (fragment.mHidden) {
            return;
        }
        fragment.mHidden = true;
        fragment.mHiddenChanged = true ^ fragment.mHiddenChanged;
        a0(fragment);
    }

    public final boolean I() {
        Fragment fragment = this.f1248v;
        if (fragment == null) {
            return true;
        }
        return fragment.isAdded() && this.f1248v.getParentFragmentManager().I();
    }

    public final boolean K() {
        return this.E || this.F;
    }

    public final void L(int i10, boolean z) {
        HashMap map;
        o0 o0Var;
        if (this.f1246t == null && i10 != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z || i10 != this.f1245s) {
            this.f1245s = i10;
            l1 l1Var = this.f1231c;
            Iterator it = l1Var.f1333a.iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                map = l1Var.f1334b;
                if (!zHasNext) {
                    break;
                }
                k1 k1Var = (k1) map.get(((Fragment) it.next()).mWho);
                if (k1Var != null) {
                    k1Var.i();
                }
            }
            for (k1 k1Var2 : map.values()) {
                if (k1Var2 != null) {
                    k1Var2.i();
                    Fragment fragment = k1Var2.f1320c;
                    if (fragment.mRemoving && !fragment.isInBackStack()) {
                        if (fragment.mBeingSaved && !l1Var.f1335c.containsKey(fragment.mWho)) {
                            l1Var.i(fragment.mWho, k1Var2.l());
                        }
                        l1Var.h(k1Var2);
                    }
                }
            }
            b0();
            if (this.D && (o0Var = this.f1246t) != null && this.f1245s == 7) {
                ((i0) o0Var).f1291e.invalidateOptionsMenu();
                this.D = false;
            }
        }
    }

    public final void M() {
        if (this.f1246t == null) {
            return;
        }
        this.E = false;
        this.F = false;
        this.L.f1283i = false;
        for (Fragment fragment : this.f1231c.f()) {
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    public final boolean N() {
        return O(-1, 0);
    }

    public final boolean O(int i10, int i11) {
        y(false);
        x(true);
        Fragment fragment = this.f1249w;
        if (fragment != null && i10 < 0 && fragment.getChildFragmentManager().N()) {
            return true;
        }
        boolean zP = P(this.I, this.J, i10, i11);
        if (zP) {
            this.f1230b = true;
            try {
                S(this.I, this.J);
            } finally {
                d();
            }
        }
        d0();
        u();
        this.f1231c.f1334b.values().removeAll(Collections.singleton(null));
        return zP;
    }

    public final boolean P(ArrayList arrayList, ArrayList arrayList2, int i10, int i11) {
        boolean z = (i11 & 1) != 0;
        ArrayList arrayList3 = this.f1232d;
        int size = -1;
        if (arrayList3 != null && !arrayList3.isEmpty()) {
            if (i10 < 0) {
                size = z ? 0 : this.f1232d.size() - 1;
            } else {
                int size2 = this.f1232d.size() - 1;
                while (size2 >= 0) {
                    a aVar = (a) this.f1232d.get(size2);
                    if (i10 >= 0 && i10 == aVar.r) {
                        break;
                    }
                    size2--;
                }
                if (size2 >= 0) {
                    if (z) {
                        while (size2 > 0) {
                            a aVar2 = (a) this.f1232d.get(size2 - 1);
                            if (i10 < 0 || i10 != aVar2.r) {
                                break;
                            }
                            size2--;
                        }
                    } else if (size2 != this.f1232d.size() - 1) {
                        size2++;
                    }
                    size = size2;
                } else {
                    size = size2;
                }
            }
        }
        if (size < 0) {
            return false;
        }
        for (int size3 = this.f1232d.size() - 1; size3 >= size; size3--) {
            arrayList.add((a) this.f1232d.remove(size3));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    public final void Q(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mFragmentManager == this) {
            bundle.putString(str, fragment.mWho);
        } else {
            c0(new IllegalStateException(android.support.v4.media.session.a.q("Fragment ", fragment, " is not currently in the FragmentManager")));
            throw null;
        }
    }

    public final void R(Fragment fragment) {
        if (Log.isLoggable("FragmentManager", 2)) {
            if (fragment != null) {
                fragment.toString();
            }
            int i10 = fragment.mBackStackNesting;
        }
        boolean zIsInBackStack = fragment.isInBackStack();
        if (fragment.mDetached && zIsInBackStack) {
            return;
        }
        l1 l1Var = this.f1231c;
        synchronized (l1Var.f1333a) {
            l1Var.f1333a.remove(fragment);
        }
        fragment.mAdded = false;
        if (H(fragment)) {
            this.D = true;
        }
        fragment.mRemoving = true;
        a0(fragment);
    }

    public final void S(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            if (!((a) arrayList.get(i10)).f1174o) {
                if (i11 != i10) {
                    A(arrayList, arrayList2, i11, i10);
                }
                i11 = i10 + 1;
                if (((Boolean) arrayList2.get(i10)).booleanValue()) {
                    while (i11 < size && ((Boolean) arrayList2.get(i11)).booleanValue() && !((a) arrayList.get(i11)).f1174o) {
                        i11++;
                    }
                }
                A(arrayList, arrayList2, i10, i11);
                i10 = i11 - 1;
            }
            i10++;
        }
        if (i11 != size) {
            A(arrayList, arrayList2, i11, size);
        }
    }

    public final void T(Bundle bundle) {
        k0 k0Var;
        k1 k1Var;
        Bundle bundle2;
        Bundle bundle3;
        for (String str : bundle.keySet()) {
            if (str.startsWith("result_") && (bundle3 = bundle.getBundle(str)) != null) {
                bundle3.setClassLoader(this.f1246t.f1360b.getClassLoader());
                this.f1239k.put(str.substring(7), bundle3);
            }
        }
        HashMap map = new HashMap();
        for (String str2 : bundle.keySet()) {
            if (str2.startsWith("fragment_") && (bundle2 = bundle.getBundle(str2)) != null) {
                bundle2.setClassLoader(this.f1246t.f1360b.getClassLoader());
                map.put(str2.substring(9), bundle2);
            }
        }
        l1 l1Var = this.f1231c;
        HashMap map2 = l1Var.f1335c;
        map2.clear();
        map2.putAll(map);
        f1 f1Var = (f1) bundle.getParcelable("state");
        if (f1Var == null) {
            return;
        }
        HashMap map3 = l1Var.f1334b;
        map3.clear();
        Iterator it = f1Var.f1263a.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            k0Var = this.l;
            if (!zHasNext) {
                break;
            }
            Bundle bundleI = l1Var.i((String) it.next(), null);
            if (bundleI != null) {
                Fragment fragment = (Fragment) this.L.f1278d.get(((i1) bundleI.getParcelable("state")).f1293b);
                if (fragment != null) {
                    if (Log.isLoggable("FragmentManager", 2)) {
                        fragment.toString();
                    }
                    k1Var = new k1(k0Var, l1Var, fragment, bundleI);
                } else {
                    k1Var = new k1(this.l, this.f1231c, this.f1246t.f1360b.getClassLoader(), E(), bundleI);
                }
                Fragment fragment2 = k1Var.f1320c;
                fragment2.mSavedFragmentState = bundleI;
                fragment2.mFragmentManager = this;
                if (Log.isLoggable("FragmentManager", 2)) {
                    fragment2.toString();
                }
                k1Var.j(this.f1246t.f1360b.getClassLoader());
                l1Var.g(k1Var);
                k1Var.f1322e = this.f1245s;
            }
        }
        g1 g1Var = this.L;
        g1Var.getClass();
        Iterator it2 = new ArrayList(g1Var.f1278d.values()).iterator();
        while (it2.hasNext()) {
            Fragment fragment3 = (Fragment) it2.next();
            if (map3.get(fragment3.mWho) == null) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    fragment3.toString();
                    ArrayList arrayList = f1Var.f1263a;
                    if (arrayList != null) {
                        arrayList.toString();
                    }
                }
                this.L.e(fragment3);
                fragment3.mFragmentManager = this;
                k1 k1Var2 = new k1(k0Var, l1Var, fragment3);
                k1Var2.f1322e = 1;
                k1Var2.i();
                fragment3.mRemoving = true;
                k1Var2.i();
            }
        }
        ArrayList<String> arrayList2 = f1Var.f1264b;
        l1Var.f1333a.clear();
        if (arrayList2 != null) {
            for (String str3 : arrayList2) {
                Fragment fragmentB = l1Var.b(str3);
                if (fragmentB == null) {
                    throw new IllegalStateException(g.b.A("No instantiated fragment for (", str3, ")"));
                }
                if (Log.isLoggable("FragmentManager", 2)) {
                    fragmentB.toString();
                }
                l1Var.a(fragmentB);
            }
        }
        if (f1Var.f1265c != null) {
            this.f1232d = new ArrayList(f1Var.f1265c.length);
            int i10 = 0;
            while (true) {
                b[] bVarArr = f1Var.f1265c;
                if (i10 >= bVarArr.length) {
                    break;
                }
                b bVar = bVarArr[i10];
                bVar.getClass();
                a aVar = new a(this);
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    int[] iArr = bVar.f1197a;
                    if (i11 >= iArr.length) {
                        break;
                    }
                    m1 m1Var = new m1();
                    int i13 = i11 + 1;
                    m1Var.f1341a = iArr[i11];
                    if (Log.isLoggable("FragmentManager", 2)) {
                        aVar.toString();
                        int i14 = iArr[i13];
                    }
                    m1Var.f1348h = androidx.lifecycle.n.values()[bVar.f1199c[i12]];
                    m1Var.f1349i = androidx.lifecycle.n.values()[bVar.f1200d[i12]];
                    int i15 = i11 + 2;
                    m1Var.f1343c = iArr[i13] != 0;
                    int i16 = iArr[i15];
                    m1Var.f1344d = i16;
                    int i17 = iArr[i11 + 3];
                    m1Var.f1345e = i17;
                    int i18 = i11 + 5;
                    int i19 = iArr[i11 + 4];
                    m1Var.f1346f = i19;
                    i11 += 6;
                    int i20 = iArr[i18];
                    m1Var.f1347g = i20;
                    aVar.f1162b = i16;
                    aVar.f1163c = i17;
                    aVar.f1164d = i19;
                    aVar.f1165e = i20;
                    aVar.b(m1Var);
                    i12++;
                }
                aVar.f1166f = bVar.f1201e;
                aVar.f1168h = bVar.f1202f;
                aVar.f1167g = true;
                aVar.f1169i = bVar.f1204h;
                aVar.f1170j = bVar.f1205i;
                aVar.f1171k = bVar.f1206j;
                aVar.l = bVar.f1207k;
                aVar.f1172m = bVar.l;
                aVar.f1173n = bVar.f1208m;
                aVar.f1174o = bVar.f1209n;
                aVar.r = bVar.f1203g;
                int i21 = 0;
                while (true) {
                    ArrayList arrayList3 = bVar.f1198b;
                    if (i21 >= arrayList3.size()) {
                        break;
                    }
                    String str4 = (String) arrayList3.get(i21);
                    if (str4 != null) {
                        ((m1) aVar.f1161a.get(i21)).f1342b = l1Var.b(str4);
                    }
                    i21++;
                }
                aVar.c(1);
                if (Log.isLoggable("FragmentManager", 2)) {
                    aVar.toString();
                    PrintWriter printWriter = new PrintWriter(new x1());
                    aVar.g("  ", printWriter, false);
                    printWriter.close();
                }
                this.f1232d.add(aVar);
                i10++;
            }
        } else {
            this.f1232d = null;
        }
        this.f1237i.set(f1Var.f1266d);
        String str5 = f1Var.f1267e;
        if (str5 != null) {
            Fragment fragmentB2 = l1Var.b(str5);
            this.f1249w = fragmentB2;
            q(fragmentB2);
        }
        ArrayList arrayList4 = f1Var.f1268f;
        if (arrayList4 != null) {
            for (int i22 = 0; i22 < arrayList4.size(); i22++) {
                this.f1238j.put((String) arrayList4.get(i22), (c) f1Var.f1269g.get(i22));
            }
        }
        this.C = new ArrayDeque(f1Var.f1270h);
    }

    public final Bundle U() {
        int i10;
        b[] bVarArr;
        ArrayList arrayList;
        int size;
        Object obj;
        Bundle bundle = new Bundle();
        Iterator it = e().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            n nVar = (n) it.next();
            if (nVar.f1354e) {
                nVar.f1354e = false;
                nVar.d();
            }
        }
        Iterator it2 = e().iterator();
        while (it2.hasNext()) {
            ((n) it2.next()).g();
        }
        y(true);
        this.E = true;
        this.L.f1283i = true;
        l1 l1Var = this.f1231c;
        l1Var.getClass();
        HashMap map = l1Var.f1334b;
        ArrayList arrayList2 = new ArrayList(map.size());
        for (k1 k1Var : map.values()) {
            if (k1Var != null) {
                Fragment fragment = k1Var.f1320c;
                l1Var.i(fragment.mWho, k1Var.l());
                arrayList2.add(fragment.mWho);
                if (Log.isLoggable("FragmentManager", 2)) {
                    fragment.toString();
                    Bundle bundle2 = fragment.mSavedFragmentState;
                    if (bundle2 != null) {
                        bundle2.toString();
                    }
                }
            }
        }
        HashMap map2 = this.f1231c.f1335c;
        if (!map2.isEmpty()) {
            l1 l1Var2 = this.f1231c;
            synchronized (l1Var2.f1333a) {
                try {
                    bVarArr = null;
                    if (l1Var2.f1333a.isEmpty()) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList(l1Var2.f1333a.size());
                        Iterator it3 = l1Var2.f1333a.iterator();
                        while (it3.hasNext()) {
                            Fragment fragment2 = (Fragment) it3.next();
                            arrayList.add(fragment2.mWho);
                            if (Log.isLoggable("FragmentManager", 2)) {
                                fragment2.toString();
                            }
                        }
                    }
                } finally {
                }
            }
            ArrayList arrayList3 = this.f1232d;
            if (arrayList3 != null && (size = arrayList3.size()) > 0) {
                bVarArr = new b[size];
                for (i10 = 0; i10 < size; i10++) {
                    bVarArr[i10] = new b((a) this.f1232d.get(i10));
                    if (Log.isLoggable("FragmentManager", 2) && (obj = this.f1232d.get(i10)) != null) {
                        obj.toString();
                    }
                }
            }
            f1 f1Var = new f1();
            f1Var.f1263a = arrayList2;
            f1Var.f1264b = arrayList;
            f1Var.f1265c = bVarArr;
            f1Var.f1266d = this.f1237i.get();
            Fragment fragment3 = this.f1249w;
            if (fragment3 != null) {
                f1Var.f1267e = fragment3.mWho;
            }
            f1Var.f1268f.addAll(this.f1238j.keySet());
            f1Var.f1269g.addAll(this.f1238j.values());
            f1Var.f1270h = new ArrayList(this.C);
            bundle.putParcelable("state", f1Var);
            for (String str : this.f1239k.keySet()) {
                bundle.putBundle(da.b.c("result_", str), (Bundle) this.f1239k.get(str));
            }
            for (String str2 : map2.keySet()) {
                bundle.putBundle(da.b.c("fragment_", str2), (Bundle) map2.get(str2));
            }
        }
        return bundle;
    }

    public final e0 V(Fragment fragment) {
        k1 k1Var = (k1) this.f1231c.f1334b.get(fragment.mWho);
        if (k1Var == null || !k1Var.f1320c.equals(fragment)) {
            c0(new IllegalStateException(android.support.v4.media.session.a.q("Fragment ", fragment, " is not currently in the FragmentManager")));
            throw null;
        }
        if (k1Var.f1320c.mState > -1) {
            return new e0(k1Var.l());
        }
        return null;
    }

    public final void W() {
        synchronized (this.f1229a) {
            try {
                if (this.f1229a.size() == 1) {
                    this.f1246t.f1361c.removeCallbacks(this.M);
                    this.f1246t.f1361c.post(this.M);
                    d0();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void X(Fragment fragment, boolean z) {
        ViewGroup viewGroupD = D(fragment);
        if (viewGroupD == null || !(viewGroupD instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) viewGroupD).setDrawDisappearingViewsLast(!z);
    }

    public final void Y(Fragment fragment, androidx.lifecycle.n nVar) {
        if (fragment.equals(this.f1231c.b(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = nVar;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public final void Z(Fragment fragment) {
        if (fragment != null) {
            if (!fragment.equals(this.f1231c.b(fragment.mWho)) || (fragment.mHost != null && fragment.mFragmentManager != this)) {
                throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
            }
        }
        Fragment fragment2 = this.f1249w;
        this.f1249w = fragment;
        q(fragment2);
        q(this.f1249w);
    }

    public final k1 a(Fragment fragment) {
        String str = fragment.mPreviousWho;
        if (str != null) {
            l1.d.c(fragment, str);
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            fragment.toString();
        }
        k1 k1VarF = f(fragment);
        fragment.mFragmentManager = this;
        l1 l1Var = this.f1231c;
        l1Var.g(k1VarF);
        if (!fragment.mDetached) {
            l1Var.a(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (H(fragment)) {
                this.D = true;
            }
        }
        return k1VarF;
    }

    public final void a0(Fragment fragment) {
        ViewGroup viewGroupD = D(fragment);
        if (viewGroupD != null) {
            if (fragment.getPopExitAnim() + fragment.getPopEnterAnim() + fragment.getExitAnim() + fragment.getEnterAnim() > 0) {
                if (viewGroupD.getTag(R.id.visible_removing_fragment_view_tag) == null) {
                    viewGroupD.setTag(R.id.visible_removing_fragment_view_tag, fragment);
                }
                ((Fragment) viewGroupD.getTag(R.id.visible_removing_fragment_view_tag)).setPopDirection(fragment.getPopDirection());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(o0 o0Var, m0 m0Var, Fragment fragment) {
        String strL;
        if (this.f1246t != null) {
            throw new IllegalStateException("Already attached");
        }
        this.f1246t = o0Var;
        this.f1247u = m0Var;
        this.f1248v = fragment;
        CopyOnWriteArrayList copyOnWriteArrayList = this.f1240m;
        if (fragment != null) {
            copyOnWriteArrayList.add(new x0(fragment));
        } else if (o0Var instanceof h1) {
            copyOnWriteArrayList.add((h1) o0Var);
        }
        if (this.f1248v != null) {
            d0();
        }
        if (o0Var instanceof androidx.activity.x) {
            androidx.activity.x xVar = (androidx.activity.x) o0Var;
            androidx.activity.w wVarA = xVar.a();
            this.f1235g = wVarA;
            androidx.lifecycle.t tVar = xVar;
            if (fragment != null) {
                tVar = fragment;
            }
            wVarA.a(tVar, this.f1236h);
        }
        if (fragment != null) {
            g1 g1Var = fragment.mFragmentManager.L;
            HashMap map = g1Var.f1279e;
            g1 g1Var2 = (g1) map.get(fragment.mWho);
            if (g1Var2 == null) {
                g1Var2 = new g1(g1Var.f1281g);
                map.put(fragment.mWho, g1Var2);
            }
            this.L = g1Var2;
        } else if (o0Var instanceof androidx.lifecycle.w0) {
            v3.f fVar = new v3.f(((androidx.lifecycle.w0) o0Var).getViewModelStore(), g1.f1277j);
            String canonicalName = g1.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            this.L = (g1) fVar.w(g1.class, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName));
        } else {
            this.L = new g1(false);
        }
        this.L.f1283i = K();
        this.f1231c.f1336d = this.L;
        Object obj = this.f1246t;
        if ((obj instanceof b4.g) && fragment == null) {
            b4.e savedStateRegistry = ((b4.g) obj).getSavedStateRegistry();
            savedStateRegistry.c("android:support:fragments", new f0(1, this));
            Bundle bundleA = savedStateRegistry.a("android:support:fragments");
            if (bundleA != null) {
                T(bundleA);
            }
        }
        Object obj2 = this.f1246t;
        if (obj2 instanceof androidx.activity.result.h) {
            androidx.activity.result.g gVarE = ((androidx.activity.result.h) obj2).e();
            if (fragment != null) {
                strL = g.b.l(fragment.mWho, ":", new StringBuilder());
            } else {
                strL = "";
            }
            String strC = da.b.c("FragmentManager:", strL);
            this.z = gVarE.d(g.b.j(strC, "StartActivityForResult"), new y0(2), new t0(this, 1));
            this.A = gVarE.d(g.b.j(strC, "StartIntentSenderForResult"), new y0(0), new t0(this, 2));
            this.B = gVarE.d(g.b.j(strC, "RequestPermissions"), new y0(1), new t0(this, 0));
        }
        Object obj3 = this.f1246t;
        if (obj3 instanceof n0.j) {
            ((n0.j) obj3).b(this.f1241n);
        }
        Object obj4 = this.f1246t;
        if (obj4 instanceof n0.k) {
            ((n0.k) obj4).f(this.f1242o);
        }
        Object obj5 = this.f1246t;
        if (obj5 instanceof m0.j0) {
            ((m0.j0) obj5).h(this.f1243p);
        }
        Object obj6 = this.f1246t;
        if (obj6 instanceof m0.k0) {
            ((m0.k0) obj6).g(this.f1244q);
        }
        Object obj7 = this.f1246t;
        if ((obj7 instanceof x0.q) && fragment == null) {
            ((x0.q) obj7).i(this.r);
        }
    }

    public final void b0() {
        Iterator it = this.f1231c.d().iterator();
        while (it.hasNext()) {
            k1 k1Var = (k1) it.next();
            Fragment fragment = k1Var.f1320c;
            if (fragment.mDeferStart) {
                if (this.f1230b) {
                    this.H = true;
                } else {
                    fragment.mDeferStart = false;
                    k1Var.i();
                }
            }
        }
    }

    public final void c(Fragment fragment) {
        if (Log.isLoggable("FragmentManager", 2) && fragment != null) {
            fragment.toString();
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            this.f1231c.a(fragment);
            if (Log.isLoggable("FragmentManager", 2)) {
                fragment.toString();
            }
            if (H(fragment)) {
                this.D = true;
            }
        }
    }

    public final void c0(IllegalStateException illegalStateException) {
        illegalStateException.getMessage();
        PrintWriter printWriter = new PrintWriter(new x1());
        o0 o0Var = this.f1246t;
        try {
            if (o0Var != null) {
                ((i0) o0Var).f1291e.dump("  ", null, printWriter, new String[0]);
            } else {
                v("  ", null, printWriter, new String[0]);
            }
            throw illegalStateException;
        } catch (Exception unused) {
            throw illegalStateException;
        }
    }

    public final void d() {
        this.f1230b = false;
        this.J.clear();
        this.I.clear();
    }

    public final void d0() {
        synchronized (this.f1229a) {
            try {
                if (!this.f1229a.isEmpty()) {
                    u0 u0Var = this.f1236h;
                    u0Var.f1400a = true;
                    androidx.activity.v vVar = u0Var.f1402c;
                    if (vVar != null) {
                        vVar.b();
                    }
                    return;
                }
                u0 u0Var2 = this.f1236h;
                ArrayList arrayList = this.f1232d;
                u0Var2.f1400a = (arrayList != null ? arrayList.size() : 0) > 0 && J(this.f1248v);
                androidx.activity.v vVar2 = u0Var2.f1402c;
                if (vVar2 != null) {
                    vVar2.b();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final HashSet e() {
        n nVar;
        HashSet hashSet = new HashSet();
        Iterator it = this.f1231c.d().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((k1) it.next()).f1320c.mContainer;
            if (viewGroup != null) {
                ue.d.e(F(), "factory");
                Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
                if (tag instanceof n) {
                    nVar = (n) tag;
                } else {
                    nVar = new n(viewGroup);
                    viewGroup.setTag(R.id.special_effects_controller_view_tag, nVar);
                }
                hashSet.add(nVar);
            }
        }
        return hashSet;
    }

    public final k1 f(Fragment fragment) {
        String str = fragment.mWho;
        l1 l1Var = this.f1231c;
        k1 k1Var = (k1) l1Var.f1334b.get(str);
        if (k1Var != null) {
            return k1Var;
        }
        k1 k1Var2 = new k1(this.l, l1Var, fragment);
        k1Var2.j(this.f1246t.f1360b.getClassLoader());
        k1Var2.f1322e = this.f1245s;
        return k1Var2;
    }

    public final void g(Fragment fragment) {
        if (Log.isLoggable("FragmentManager", 2) && fragment != null) {
            fragment.toString();
        }
        if (fragment.mDetached) {
            return;
        }
        fragment.mDetached = true;
        if (fragment.mAdded) {
            if (Log.isLoggable("FragmentManager", 2)) {
                fragment.toString();
            }
            l1 l1Var = this.f1231c;
            synchronized (l1Var.f1333a) {
                l1Var.f1333a.remove(fragment);
            }
            fragment.mAdded = false;
            if (H(fragment)) {
                this.D = true;
            }
            a0(fragment);
        }
    }

    public final void h(boolean z, Configuration configuration) {
        if (z && (this.f1246t instanceof n0.j)) {
            c0(new IllegalStateException("Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."));
            throw null;
        }
        for (Fragment fragment : this.f1231c.f()) {
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
                if (z) {
                    fragment.mChildFragmentManager.h(true, configuration);
                }
            }
        }
    }

    public final boolean i(MenuItem menuItem) {
        if (this.f1245s < 1) {
            return false;
        }
        for (Fragment fragment : this.f1231c.f()) {
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public final boolean j(Menu menu, MenuInflater menuInflater) {
        if (this.f1245s < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z = false;
        for (Fragment fragment : this.f1231c.f()) {
            if (fragment != null && fragment.isMenuVisible() && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(fragment);
                z = true;
            }
        }
        if (this.f1233e != null) {
            for (int i10 = 0; i10 < this.f1233e.size(); i10++) {
                Fragment fragment2 = (Fragment) this.f1233e.get(i10);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.f1233e = arrayList;
        return z;
    }

    public final void k() {
        boolean zIsChangingConfigurations = true;
        this.G = true;
        y(true);
        Iterator it = e().iterator();
        while (it.hasNext()) {
            ((n) it.next()).g();
        }
        o0 o0Var = this.f1246t;
        boolean z = o0Var instanceof androidx.lifecycle.w0;
        l1 l1Var = this.f1231c;
        if (z) {
            zIsChangingConfigurations = l1Var.f1336d.f1282h;
        } else {
            j0 j0Var = o0Var.f1360b;
            if (j0Var instanceof Activity) {
                zIsChangingConfigurations = true ^ j0Var.isChangingConfigurations();
            }
        }
        if (zIsChangingConfigurations) {
            Iterator it2 = this.f1238j.values().iterator();
            while (it2.hasNext()) {
                Iterator it3 = ((c) it2.next()).f1215a.iterator();
                while (it3.hasNext()) {
                    l1Var.f1336d.d((String) it3.next(), false);
                }
            }
        }
        t(-1);
        Object obj = this.f1246t;
        if (obj instanceof n0.k) {
            ((n0.k) obj).c(this.f1242o);
        }
        Object obj2 = this.f1246t;
        if (obj2 instanceof n0.j) {
            ((n0.j) obj2).d(this.f1241n);
        }
        Object obj3 = this.f1246t;
        if (obj3 instanceof m0.j0) {
            ((m0.j0) obj3).m(this.f1243p);
        }
        Object obj4 = this.f1246t;
        if (obj4 instanceof m0.k0) {
            ((m0.k0) obj4).l(this.f1244q);
        }
        Object obj5 = this.f1246t;
        if ((obj5 instanceof x0.q) && this.f1248v == null) {
            ((x0.q) obj5).k(this.r);
        }
        this.f1246t = null;
        this.f1247u = null;
        this.f1248v = null;
        if (this.f1235g != null) {
            Iterator it4 = this.f1236h.f1401b.iterator();
            while (it4.hasNext()) {
                ((androidx.activity.c) it4.next()).cancel();
            }
            this.f1235g = null;
        }
        androidx.activity.result.d dVar = this.z;
        if (dVar != null) {
            dVar.b();
            this.A.b();
            this.B.b();
        }
    }

    public final void l(boolean z) {
        if (z && (this.f1246t instanceof n0.k)) {
            c0(new IllegalStateException("Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."));
            throw null;
        }
        for (Fragment fragment : this.f1231c.f()) {
            if (fragment != null) {
                fragment.performLowMemory();
                if (z) {
                    fragment.mChildFragmentManager.l(true);
                }
            }
        }
    }

    public final void m(boolean z, boolean z4) {
        if (z4 && (this.f1246t instanceof m0.j0)) {
            c0(new IllegalStateException("Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."));
            throw null;
        }
        for (Fragment fragment : this.f1231c.f()) {
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z);
                if (z4) {
                    fragment.mChildFragmentManager.m(z, true);
                }
            }
        }
    }

    public final void n() {
        Iterator it = this.f1231c.e().iterator();
        while (it.hasNext()) {
            Fragment fragment = (Fragment) it.next();
            if (fragment != null) {
                fragment.onHiddenChanged(fragment.isHidden());
                fragment.mChildFragmentManager.n();
            }
        }
    }

    public final boolean o(MenuItem menuItem) {
        if (this.f1245s < 1) {
            return false;
        }
        for (Fragment fragment : this.f1231c.f()) {
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public final void p(Menu menu) {
        if (this.f1245s < 1) {
            return;
        }
        for (Fragment fragment : this.f1231c.f()) {
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    public final void q(Fragment fragment) {
        if (fragment != null) {
            if (fragment.equals(this.f1231c.b(fragment.mWho))) {
                fragment.performPrimaryNavigationFragmentChanged();
            }
        }
    }

    public final void r(boolean z, boolean z4) {
        if (z4 && (this.f1246t instanceof m0.k0)) {
            c0(new IllegalStateException("Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."));
            throw null;
        }
        for (Fragment fragment : this.f1231c.f()) {
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z);
                if (z4) {
                    fragment.mChildFragmentManager.r(z, true);
                }
            }
        }
    }

    public final boolean s(Menu menu) {
        boolean z = false;
        if (this.f1245s < 1) {
            return false;
        }
        for (Fragment fragment : this.f1231c.f()) {
            if (fragment != null && fragment.isMenuVisible() && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    public final void t(int i10) {
        try {
            this.f1230b = true;
            for (k1 k1Var : this.f1231c.f1334b.values()) {
                if (k1Var != null) {
                    k1Var.f1322e = i10;
                }
            }
            L(i10, false);
            Iterator it = e().iterator();
            while (it.hasNext()) {
                ((n) it.next()).g();
            }
            this.f1230b = false;
            y(true);
        } catch (Throwable th2) {
            this.f1230b = false;
            throw th2;
        }
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("FragmentManager{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append(" in ");
        Fragment fragment = this.f1248v;
        if (fragment != null) {
            sb2.append(fragment.getClass().getSimpleName());
            sb2.append("{");
            sb2.append(Integer.toHexString(System.identityHashCode(this.f1248v)));
            sb2.append("}");
        } else {
            o0 o0Var = this.f1246t;
            if (o0Var != null) {
                sb2.append(o0Var.getClass().getSimpleName());
                sb2.append("{");
                sb2.append(Integer.toHexString(System.identityHashCode(this.f1246t)));
                sb2.append("}");
            } else {
                sb2.append("null");
            }
        }
        sb2.append("}}");
        return sb2.toString();
    }

    public final void u() {
        if (this.H) {
            this.H = false;
            b0();
        }
    }

    public final void v(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String strJ = g.b.j(str, "    ");
        l1 l1Var = this.f1231c;
        l1Var.getClass();
        String str2 = str + "    ";
        HashMap map = l1Var.f1334b;
        if (!map.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (k1 k1Var : map.values()) {
                printWriter.print(str);
                if (k1Var != null) {
                    Fragment fragment = k1Var.f1320c;
                    printWriter.println(fragment);
                    fragment.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        ArrayList arrayList = l1Var.f1333a;
        int size3 = arrayList.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i10 = 0; i10 < size3; i10++) {
                Fragment fragment2 = (Fragment) arrayList.get(i10);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i10);
                printWriter.print(": ");
                printWriter.println(fragment2.toString());
            }
        }
        ArrayList arrayList2 = this.f1233e;
        if (arrayList2 != null && (size2 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i11 = 0; i11 < size2; i11++) {
                Fragment fragment3 = (Fragment) this.f1233e.get(i11);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i11);
                printWriter.print(": ");
                printWriter.println(fragment3.toString());
            }
        }
        ArrayList arrayList3 = this.f1232d;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i12 = 0; i12 < size; i12++) {
                a aVar = (a) this.f1232d.get(i12);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i12);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.g(strJ, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f1237i.get());
        synchronized (this.f1229a) {
            try {
                int size4 = this.f1229a.size();
                if (size4 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i13 = 0; i13 < size4; i13++) {
                        Object obj = (b1) this.f1229a.get(i13);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i13);
                        printWriter.print(": ");
                        printWriter.println(obj);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f1246t);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f1247u);
        if (this.f1248v != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f1248v);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f1245s);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.E);
        printWriter.print(" mStopped=");
        printWriter.print(this.F);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.G);
        if (this.D) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.D);
        }
    }

    public final void w(b1 b1Var, boolean z) {
        if (!z) {
            if (this.f1246t == null) {
                if (!this.G) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            if (K()) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        synchronized (this.f1229a) {
            try {
                if (this.f1246t == null) {
                    if (!z) {
                        throw new IllegalStateException("Activity has been destroyed");
                    }
                } else {
                    this.f1229a.add(b1Var);
                    W();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void x(boolean z) {
        if (this.f1230b) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.f1246t == null) {
            if (!this.G) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.f1246t.f1361c.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z && K()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.I == null) {
            this.I = new ArrayList();
            this.J = new ArrayList();
        }
    }

    public final boolean y(boolean z) {
        boolean zA;
        x(z);
        boolean z4 = false;
        while (true) {
            ArrayList arrayList = this.I;
            ArrayList arrayList2 = this.J;
            synchronized (this.f1229a) {
                if (this.f1229a.isEmpty()) {
                    zA = false;
                } else {
                    try {
                        int size = this.f1229a.size();
                        zA = false;
                        for (int i10 = 0; i10 < size; i10++) {
                            zA |= ((b1) this.f1229a.get(i10)).a(arrayList, arrayList2);
                        }
                    } finally {
                    }
                }
            }
            if (!zA) {
                d0();
                u();
                this.f1231c.f1334b.values().removeAll(Collections.singleton(null));
                return z4;
            }
            z4 = true;
            this.f1230b = true;
            try {
                S(this.I, this.J);
            } finally {
                d();
            }
        }
    }

    public final void z(a aVar, boolean z) {
        if (z && (this.f1246t == null || this.G)) {
            return;
        }
        x(z);
        aVar.a(this.I, this.J);
        this.f1230b = true;
        try {
            S(this.I, this.J);
            d();
            d0();
            u();
            this.f1231c.f1334b.values().removeAll(Collections.singleton(null));
        } catch (Throwable th2) {
            d();
            throw th2;
        }
    }
}
