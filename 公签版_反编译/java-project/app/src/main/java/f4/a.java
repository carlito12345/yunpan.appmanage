package f4;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import androidx.fragment.app.b0;
import com.yunpan.appmanage.R;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: d, reason: collision with root package name */
    public static volatile a f5602d;

    /* renamed from: e, reason: collision with root package name */
    public static final Object f5603e = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final Context f5606c;

    /* renamed from: b, reason: collision with root package name */
    public final HashSet f5605b = new HashSet();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f5604a = new HashMap();

    public a(Context context) {
        this.f5606c = context.getApplicationContext();
    }

    public static a c(Context context) {
        if (f5602d == null) {
            synchronized (f5603e) {
                try {
                    if (f5602d == null) {
                        f5602d = new a(context);
                    }
                } finally {
                }
            }
        }
        return f5602d;
    }

    public final void a(Bundle bundle) throws ClassNotFoundException {
        HashSet hashSet;
        String string = this.f5606c.getString(R.string.androidx_startup);
        if (bundle != null) {
            try {
                HashSet hashSet2 = new HashSet();
                Iterator<String> it = bundle.keySet().iterator();
                while (true) {
                    boolean zHasNext = it.hasNext();
                    hashSet = this.f5605b;
                    if (!zHasNext) {
                        break;
                    }
                    String next = it.next();
                    if (string.equals(bundle.getString(next, null))) {
                        Class<?> cls = Class.forName(next);
                        if (b.class.isAssignableFrom(cls)) {
                            hashSet.add(cls);
                        }
                    }
                }
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    b((Class) it2.next(), hashSet2);
                }
            } catch (ClassNotFoundException e7) {
                throw new b0(2, e7);
            }
        }
    }

    public final Object b(Class cls, HashSet hashSet) {
        Object objB;
        if (d.b.R()) {
            try {
                String simpleName = cls.getSimpleName();
                if (Build.VERSION.SDK_INT >= 18) {
                    g4.a.a(simpleName);
                }
            } catch (Throwable th2) {
                d.b.r();
                throw th2;
            }
        }
        if (hashSet.contains(cls)) {
            throw new IllegalStateException("Cannot initialize " + cls.getName() + ". Cycle detected.");
        }
        HashMap map = this.f5604a;
        if (map.containsKey(cls)) {
            objB = map.get(cls);
        } else {
            hashSet.add(cls);
            try {
                b bVar = (b) cls.getDeclaredConstructor(null).newInstance(null);
                List<Class> listA = bVar.a();
                if (!listA.isEmpty()) {
                    for (Class cls2 : listA) {
                        if (!map.containsKey(cls2)) {
                            b(cls2, hashSet);
                        }
                    }
                }
                objB = bVar.b(this.f5606c);
                hashSet.remove(cls);
                map.put(cls, objB);
            } catch (Throwable th3) {
                throw new b0(2, th3);
            }
        }
        d.b.r();
        return objB;
    }
}
