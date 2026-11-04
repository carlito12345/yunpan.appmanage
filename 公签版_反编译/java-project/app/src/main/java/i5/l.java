package i5;

import a2.g1;
import a6.q;
import android.graphics.Bitmap;
import android.os.Build;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class l implements h {

    /* renamed from: d, reason: collision with root package name */
    public static final Bitmap.Config[] f8628d;

    /* renamed from: e, reason: collision with root package name */
    public static final Bitmap.Config[] f8629e;

    /* renamed from: f, reason: collision with root package name */
    public static final Bitmap.Config[] f8630f;

    /* renamed from: g, reason: collision with root package name */
    public static final Bitmap.Config[] f8631g;

    /* renamed from: h, reason: collision with root package name */
    public static final Bitmap.Config[] f8632h;

    /* renamed from: a, reason: collision with root package name */
    public final b f8633a = new b(2);

    /* renamed from: b, reason: collision with root package name */
    public final g1 f8634b = new g1(25);

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f8635c = new HashMap();

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        }
        f8628d = configArr;
        f8629e = configArr;
        f8630f = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f8631g = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f8632h = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    public static String b(int i10, Bitmap.Config config) {
        return "[" + i10 + "](" + config + ")";
    }

    @Override // i5.h
    public final int G(Bitmap bitmap) {
        return q.c(bitmap);
    }

    @Override // i5.h
    public final String K(Bitmap bitmap) {
        return b(q.c(bitmap), bitmap.getConfig());
    }

    public final void a(Integer num, Bitmap bitmap) {
        NavigableMap navigableMapD = d(bitmap.getConfig());
        Integer num2 = (Integer) navigableMapD.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                navigableMapD.remove(num);
                return;
            } else {
                navigableMapD.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + b(q.c(bitmap), bitmap.getConfig()) + ", this: " + this);
    }

    @Override // i5.h
    public final void c(Bitmap bitmap) {
        int iC = q.c(bitmap);
        Bitmap.Config config = bitmap.getConfig();
        b bVar = this.f8633a;
        i iVarT = (i) ((ArrayDeque) bVar.f1a).poll();
        if (iVarT == null) {
            iVarT = bVar.t();
        }
        k kVar = (k) iVarT;
        kVar.f8626b = iC;
        kVar.f8627c = config;
        this.f8634b.W(kVar, bitmap);
        NavigableMap navigableMapD = d(bitmap.getConfig());
        Integer num = (Integer) navigableMapD.get(Integer.valueOf(kVar.f8626b));
        navigableMapD.put(Integer.valueOf(kVar.f8626b), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    public final NavigableMap d(Bitmap.Config config) {
        HashMap map = this.f8635c;
        NavigableMap navigableMap = (NavigableMap) map.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        map.put(config, treeMap);
        return treeMap;
    }

    @Override // i5.h
    public final Bitmap f(int i10, int i11, Bitmap.Config config) {
        Bitmap.Config[] configArr;
        int i12 = 0;
        int iD = q.d(config) * i10 * i11;
        b bVar = this.f8633a;
        i iVarT = (i) ((ArrayDeque) bVar.f1a).poll();
        if (iVarT == null) {
            iVarT = bVar.t();
        }
        k kVar = (k) iVarT;
        kVar.f8626b = iD;
        kVar.f8627c = config;
        if (Build.VERSION.SDK_INT < 26 || !Bitmap.Config.RGBA_F16.equals(config)) {
            int i13 = j.f8624a[config.ordinal()];
            configArr = i13 != 1 ? i13 != 2 ? i13 != 3 ? i13 != 4 ? new Bitmap.Config[]{config} : f8632h : f8631g : f8630f : f8628d;
        } else {
            configArr = f8629e;
        }
        int length = configArr.length;
        while (true) {
            if (i12 >= length) {
                break;
            }
            Bitmap.Config config2 = configArr[i12];
            Integer num = (Integer) d(config2).ceilingKey(Integer.valueOf(iD));
            if (num == null || num.intValue() > iD * 8) {
                i12++;
            } else if (num.intValue() != iD || (config2 != null ? !config2.equals(config) : config != null)) {
                bVar.o(kVar);
                int iIntValue = num.intValue();
                Object objT = (i) ((ArrayDeque) bVar.f1a).poll();
                if (objT == null) {
                    objT = bVar.t();
                }
                kVar = (k) objT;
                kVar.f8626b = iIntValue;
                kVar.f8627c = config2;
            }
        }
        Bitmap bitmap = (Bitmap) this.f8634b.P(kVar);
        if (bitmap != null) {
            a(Integer.valueOf(kVar.f8626b), bitmap);
            bitmap.reconfigure(i10, i11, config);
        }
        return bitmap;
    }

    @Override // i5.h
    public final Bitmap removeLast() {
        Bitmap bitmap = (Bitmap) this.f8634b.Y();
        if (bitmap != null) {
            a(Integer.valueOf(q.c(bitmap)), bitmap);
        }
        return bitmap;
    }

    public final String toString() {
        StringBuilder sbM = g.b.m("SizeConfigStrategy{groupedMap=");
        sbM.append(this.f8634b);
        sbM.append(", sortedSizes=(");
        HashMap map = this.f8635c;
        for (Map.Entry entry : map.entrySet()) {
            sbM.append(entry.getKey());
            sbM.append('[');
            sbM.append(entry.getValue());
            sbM.append("], ");
        }
        if (!map.isEmpty()) {
            sbM.replace(sbM.length() - 2, sbM.length(), "");
        }
        sbM.append(")}");
        return sbM.toString();
    }

    @Override // i5.h
    public final String w(int i10, int i11, Bitmap.Config config) {
        return b(q.d(config) * i10 * i11, config);
    }
}
