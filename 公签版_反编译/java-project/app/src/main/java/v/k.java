package v;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import x0.d1;
import x0.e1;

/* loaded from: classes.dex */
public class k implements Menu {
    public static final int[] A = {1, 4, 5, 3, 2, 0};

    /* renamed from: a, reason: collision with root package name */
    public final Context f16233a;

    /* renamed from: b, reason: collision with root package name */
    public final Resources f16234b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f16235c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f16236d;

    /* renamed from: e, reason: collision with root package name */
    public i f16237e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f16238f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f16239g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f16240h;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f16241i;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f16242j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f16243k;

    /* renamed from: m, reason: collision with root package name */
    public CharSequence f16244m;

    /* renamed from: n, reason: collision with root package name */
    public Drawable f16245n;

    /* renamed from: p, reason: collision with root package name */
    public View f16246p;

    /* renamed from: x, reason: collision with root package name */
    public m f16252x;
    public boolean z;
    public int l = 0;

    /* renamed from: q, reason: collision with root package name */
    public boolean f16247q = false;
    public boolean r = false;

    /* renamed from: s, reason: collision with root package name */
    public boolean f16248s = false;

    /* renamed from: t, reason: collision with root package name */
    public boolean f16249t = false;

    /* renamed from: v, reason: collision with root package name */
    public final ArrayList f16250v = new ArrayList();

    /* renamed from: w, reason: collision with root package name */
    public final CopyOnWriteArrayList f16251w = new CopyOnWriteArrayList();

    /* renamed from: y, reason: collision with root package name */
    public boolean f16253y = false;

    public k(Context context) {
        boolean zB;
        boolean z = false;
        this.f16233a = context;
        Resources resources = context.getResources();
        this.f16234b = resources;
        this.f16238f = new ArrayList();
        this.f16239g = new ArrayList();
        this.f16240h = true;
        this.f16241i = new ArrayList();
        this.f16242j = new ArrayList();
        this.f16243k = true;
        if (resources.getConfiguration().keyboard != 1) {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            Method method = e1.f17977a;
            if (Build.VERSION.SDK_INT >= 28) {
                zB = d1.b(viewConfiguration);
            } else {
                Resources resources2 = context.getResources();
                int identifier = resources2.getIdentifier("config_showMenuShortcutsWhenKeyboardPresent", "bool", "android");
                zB = identifier != 0 && resources2.getBoolean(identifier);
            }
            if (zB) {
                z = true;
            }
        }
        this.f16236d = z;
    }

    public final m a(int i10, int i11, int i12, CharSequence charSequence) {
        int i13;
        int i14 = ((-65536) & i12) >> 16;
        if (i14 < 0 || i14 >= 6) {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        int i15 = (A[i14] << 16) | (65535 & i12);
        m mVar = new m(this, i10, i11, i12, i15, charSequence, this.l);
        ArrayList arrayList = this.f16238f;
        int size = arrayList.size() - 1;
        while (true) {
            if (size < 0) {
                i13 = 0;
                break;
            }
            if (((m) arrayList.get(size)).f16260d <= i15) {
                i13 = size + 1;
                break;
            }
            size--;
        }
        arrayList.add(i13, mVar);
        p(true);
        return mVar;
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i10, int i11, int i12, ComponentName componentName, Intent[] intentArr, Intent intent, int i13, MenuItem[] menuItemArr) {
        int i14;
        PackageManager packageManager = this.f16233a.getPackageManager();
        List<ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i13 & 1) == 0) {
            removeGroup(i10);
        }
        for (int i15 = 0; i15 < size; i15++) {
            ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i15);
            int i16 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i16 < 0 ? intent : intentArr[i16]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            m mVarA = a(i10, i11, i12, resolveInfo.loadLabel(packageManager));
            mVarA.setIcon(resolveInfo.loadIcon(packageManager));
            mVarA.f16263g = intent2;
            if (menuItemArr != null && (i14 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i14] = mVarA;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public final void b(x xVar, Context context) {
        this.f16251w.add(new WeakReference(xVar));
        xVar.f(context, this);
        this.f16243k = true;
    }

    public final void c(boolean z) {
        if (this.f16249t) {
            return;
        }
        this.f16249t = true;
        CopyOnWriteArrayList copyOnWriteArrayList = this.f16251w;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            x xVar = (x) weakReference.get();
            if (xVar == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                xVar.a(this, z);
            }
        }
        this.f16249t = false;
    }

    @Override // android.view.Menu
    public final void clear() {
        m mVar = this.f16252x;
        if (mVar != null) {
            d(mVar);
        }
        this.f16238f.clear();
        p(true);
    }

    public final void clearHeader() {
        this.f16245n = null;
        this.f16244m = null;
        this.f16246p = null;
        p(false);
    }

    @Override // android.view.Menu
    public final void close() {
        c(true);
    }

    public boolean d(m mVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f16251w;
        boolean zI = false;
        if (!copyOnWriteArrayList.isEmpty() && this.f16252x == mVar) {
            w();
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                x xVar = (x) weakReference.get();
                if (xVar == null) {
                    copyOnWriteArrayList.remove(weakReference);
                } else {
                    zI = xVar.i(mVar);
                    if (zI) {
                        break;
                    }
                }
            }
            v();
            if (zI) {
                this.f16252x = null;
            }
        }
        return zI;
    }

    public boolean e(k kVar, MenuItem menuItem) {
        i iVar = this.f16237e;
        return iVar != null && iVar.e(kVar, menuItem);
    }

    public boolean f(m mVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f16251w;
        boolean zE = false;
        if (copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        w();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            x xVar = (x) weakReference.get();
            if (xVar == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                zE = xVar.e(mVar);
                if (zE) {
                    break;
                }
            }
        }
        v();
        if (zE) {
            this.f16252x = mVar;
        }
        return zE;
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i10) {
        MenuItem menuItemFindItem;
        ArrayList arrayList = this.f16238f;
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            m mVar = (m) arrayList.get(i11);
            if (mVar.f16257a == i10) {
                return mVar;
            }
            if (mVar.hasSubMenu() && (menuItemFindItem = mVar.f16270p.findItem(i10)) != null) {
                return menuItemFindItem;
            }
        }
        return null;
    }

    public final m g(int i10, KeyEvent keyEvent) {
        ArrayList arrayList = this.f16250v;
        arrayList.clear();
        h(arrayList, i10, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return (m) arrayList.get(0);
        }
        boolean zN = n();
        for (int i11 = 0; i11 < size; i11++) {
            m mVar = (m) arrayList.get(i11);
            char c7 = zN ? mVar.f16266j : mVar.f16264h;
            char[] cArr = keyData.meta;
            if ((c7 == cArr[0] && (metaState & 2) == 0) || ((c7 == cArr[2] && (metaState & 2) != 0) || (zN && c7 == '\b' && i10 == 67))) {
                return mVar;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i10) {
        return (MenuItem) this.f16238f.get(i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h(ArrayList arrayList, int i10, KeyEvent keyEvent) {
        boolean zN = n();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i10 == 67) {
            ArrayList arrayList2 = this.f16238f;
            int size = arrayList2.size();
            for (int i11 = 0; i11 < size; i11++) {
                m mVar = (m) arrayList2.get(i11);
                if (mVar.hasSubMenu()) {
                    mVar.f16270p.h(arrayList, i10, keyEvent);
                }
                char c7 = zN ? mVar.f16266j : mVar.f16264h;
                if ((modifiers & 69647) == ((zN ? mVar.f16267k : mVar.f16265i) & 69647) && c7 != 0) {
                    char[] cArr = keyData.meta;
                    if (c7 != cArr[0] && c7 != cArr[2]) {
                        if (zN && c7 == '\b') {
                            if (i10 == 67) {
                            }
                        }
                    }
                    if (mVar.isEnabled()) {
                        arrayList.add(mVar);
                    }
                }
            }
        }
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        if (this.z) {
            return true;
        }
        ArrayList arrayList = this.f16238f;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (((m) arrayList.get(i10)).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public final void i() {
        ArrayList arrayListL = l();
        if (this.f16243k) {
            CopyOnWriteArrayList copyOnWriteArrayList = this.f16251w;
            Iterator it = copyOnWriteArrayList.iterator();
            boolean zD = false;
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                x xVar = (x) weakReference.get();
                if (xVar == null) {
                    copyOnWriteArrayList.remove(weakReference);
                } else {
                    zD |= xVar.d();
                }
            }
            ArrayList arrayList = this.f16241i;
            ArrayList arrayList2 = this.f16242j;
            if (zD) {
                arrayList.clear();
                arrayList2.clear();
                int size = arrayListL.size();
                for (int i10 = 0; i10 < size; i10++) {
                    m mVar = (m) arrayListL.get(i10);
                    if (mVar.f()) {
                        arrayList.add(mVar);
                    } else {
                        arrayList2.add(mVar);
                    }
                }
            } else {
                arrayList.clear();
                arrayList2.clear();
                arrayList2.addAll(l());
            }
            this.f16243k = false;
        }
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i10, KeyEvent keyEvent) {
        return g(i10, keyEvent) != null;
    }

    public String j() {
        return "android:menu:actionviewstates";
    }

    public final ArrayList l() {
        boolean z = this.f16240h;
        ArrayList arrayList = this.f16239g;
        if (!z) {
            return arrayList;
        }
        arrayList.clear();
        ArrayList arrayList2 = this.f16238f;
        int size = arrayList2.size();
        for (int i10 = 0; i10 < size; i10++) {
            m mVar = (m) arrayList2.get(i10);
            if (mVar.isVisible()) {
                arrayList.add(mVar);
            }
        }
        this.f16240h = false;
        this.f16243k = true;
        return arrayList;
    }

    public boolean m() {
        return this.f16253y;
    }

    public boolean n() {
        return this.f16235c;
    }

    public boolean o() {
        return this.f16236d;
    }

    public final void p(boolean z) {
        if (this.f16247q) {
            this.r = true;
            if (z) {
                this.f16248s = true;
                return;
            }
            return;
        }
        if (z) {
            this.f16240h = true;
            this.f16243k = true;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = this.f16251w;
        if (copyOnWriteArrayList.isEmpty()) {
            return;
        }
        w();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            x xVar = (x) weakReference.get();
            if (xVar == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                xVar.g();
            }
        }
        v();
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i10, int i11) {
        return q(findItem(i10), null, i11);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i10, KeyEvent keyEvent, int i11) {
        m mVarG = g(i10, keyEvent);
        boolean zQ = mVarG != null ? q(mVarG, null, i11) : false;
        if ((i11 & 2) != 0) {
            c(true);
        }
        return zQ;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean q(MenuItem menuItem, x xVar, int i10) {
        boolean zExpandActionView;
        m mVar = (m) menuItem;
        if (mVar == null || !mVar.isEnabled()) {
            return false;
        }
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = mVar.f16271q;
        if (onMenuItemClickListener == null || !onMenuItemClickListener.onMenuItemClick(mVar)) {
            k kVar = mVar.f16269n;
            if (!kVar.e(kVar, mVar)) {
                Intent intent = mVar.f16263g;
                if (intent != null) {
                    try {
                        kVar.f16233a.startActivity(intent);
                    } catch (ActivityNotFoundException unused) {
                    }
                } else {
                    n nVar = mVar.C;
                    zExpandActionView = nVar != null && nVar.f16278a.onPerformDefaultAction();
                }
            }
        }
        n nVar2 = mVar.C;
        boolean z = nVar2 != null && nVar2.f16278a.hasSubMenu();
        if (mVar.e()) {
            zExpandActionView |= mVar.expandActionView();
            if (zExpandActionView) {
                c(true);
            }
        } else if (mVar.hasSubMenu() || z) {
            if ((i10 & 4) == 0) {
                c(false);
            }
            if (!mVar.hasSubMenu()) {
                d0 d0Var = new d0(this.f16233a, this, mVar);
                mVar.f16270p = d0Var;
                d0Var.setHeaderTitle(mVar.f16261e);
            }
            d0 d0Var2 = mVar.f16270p;
            if (z) {
                nVar2.f16279b.getClass();
                nVar2.f16278a.onPrepareSubMenu(d0Var2);
            }
            CopyOnWriteArrayList copyOnWriteArrayList = this.f16251w;
            if (!copyOnWriteArrayList.isEmpty()) {
                zJ = xVar != null ? xVar.j(d0Var2) : false;
                Iterator it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    WeakReference weakReference = (WeakReference) it.next();
                    x xVar2 = (x) weakReference.get();
                    if (xVar2 == null) {
                        copyOnWriteArrayList.remove(weakReference);
                    } else if (!zJ) {
                        zJ = xVar2.j(d0Var2);
                    }
                }
            }
            zExpandActionView |= zJ;
            if (!zExpandActionView) {
                c(true);
            }
        } else if ((i10 & 1) == 0) {
            c(true);
        }
        return zExpandActionView;
    }

    public final void r(x xVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f16251w;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            x xVar2 = (x) weakReference.get();
            if (xVar2 == null || xVar2 == xVar) {
                copyOnWriteArrayList.remove(weakReference);
            }
        }
    }

    @Override // android.view.Menu
    public final void removeGroup(int i10) {
        ArrayList arrayList = this.f16238f;
        int size = arrayList.size();
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (i12 >= size) {
                i12 = -1;
                break;
            } else if (((m) arrayList.get(i12)).f16258b == i10) {
                break;
            } else {
                i12++;
            }
        }
        if (i12 >= 0) {
            int size2 = arrayList.size() - i12;
            while (true) {
                int i13 = i11 + 1;
                if (i11 >= size2 || ((m) arrayList.get(i12)).f16258b != i10) {
                    break;
                }
                if (i12 >= 0) {
                    ArrayList arrayList2 = this.f16238f;
                    if (i12 < arrayList2.size()) {
                        arrayList2.remove(i12);
                    }
                }
                i11 = i13;
            }
            p(true);
        }
    }

    @Override // android.view.Menu
    public final void removeItem(int i10) {
        ArrayList arrayList = this.f16238f;
        int size = arrayList.size();
        int i11 = 0;
        while (true) {
            if (i11 >= size) {
                i11 = -1;
                break;
            } else if (((m) arrayList.get(i11)).f16257a == i10) {
                break;
            } else {
                i11++;
            }
        }
        if (i11 >= 0) {
            ArrayList arrayList2 = this.f16238f;
            if (i11 >= arrayList2.size()) {
                return;
            }
            arrayList2.remove(i11);
            p(true);
        }
    }

    public final void s(Bundle bundle) {
        MenuItem menuItemFindItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(j());
        int size = this.f16238f.size();
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = getItem(i10);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((d0) item.getSubMenu()).s(bundle);
            }
        }
        int i11 = bundle.getInt("android:menu:expandedactionview");
        if (i11 <= 0 || (menuItemFindItem = findItem(i11)) == null) {
            return;
        }
        menuItemFindItem.expandActionView();
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i10, boolean z, boolean z4) {
        ArrayList arrayList = this.f16238f;
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            m mVar = (m) arrayList.get(i11);
            if (mVar.f16258b == i10) {
                mVar.z = (mVar.z & (-5)) | (z4 ? 4 : 0);
                mVar.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f16253y = z;
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i10, boolean z) {
        ArrayList arrayList = this.f16238f;
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            m mVar = (m) arrayList.get(i11);
            if (mVar.f16258b == i10) {
                mVar.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i10, boolean z) {
        ArrayList arrayList = this.f16238f;
        int size = arrayList.size();
        boolean z4 = false;
        for (int i11 = 0; i11 < size; i11++) {
            m mVar = (m) arrayList.get(i11);
            if (mVar.f16258b == i10) {
                int i12 = mVar.z;
                int i13 = (i12 & (-9)) | (z ? 0 : 8);
                mVar.z = i13;
                if (i12 != i13) {
                    z4 = true;
                }
            }
        }
        if (z4) {
            p(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f16235c = z;
        p(false);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f16238f.size();
    }

    public final void t(Bundle bundle) {
        int size = this.f16238f.size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i10 = 0; i10 < size; i10++) {
            MenuItem item = getItem(i10);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((d0) item.getSubMenu()).t(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(j(), sparseArray);
        }
    }

    public final void u(int i10, CharSequence charSequence, int i11, Drawable drawable, View view) {
        if (view != null) {
            this.f16246p = view;
            this.f16244m = null;
            this.f16245n = null;
        } else {
            if (i10 > 0) {
                this.f16244m = this.f16234b.getText(i10);
            } else if (charSequence != null) {
                this.f16244m = charSequence;
            }
            if (i11 > 0) {
                this.f16245n = n0.g.e(this.f16233a, i11);
            } else if (drawable != null) {
                this.f16245n = drawable;
            }
            this.f16246p = null;
        }
        p(false);
    }

    public final void v() {
        this.f16247q = false;
        if (this.r) {
            this.r = false;
            p(this.f16248s);
        }
    }

    public final void w() {
        if (this.f16247q) {
            return;
        }
        this.f16247q = true;
        this.r = false;
        this.f16248s = false;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i10) {
        return a(0, 0, 0, this.f16234b.getString(i10));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i10) {
        return addSubMenu(0, 0, 0, this.f16234b.getString(i10));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i10, int i11, int i12, CharSequence charSequence) {
        return a(i10, i11, i12, charSequence);
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i10, int i11, int i12, CharSequence charSequence) {
        m mVarA = a(i10, i11, i12, charSequence);
        d0 d0Var = new d0(this.f16233a, this, mVarA);
        mVarA.f16270p = d0Var;
        d0Var.setHeaderTitle(mVarA.f16261e);
        return d0Var;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i10, int i11, int i12, int i13) {
        return a(i10, i11, i12, this.f16234b.getString(i13));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i10, int i11, int i12, int i13) {
        return addSubMenu(i10, i11, i12, this.f16234b.getString(i13));
    }

    public k k() {
        return this;
    }
}
