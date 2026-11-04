package androidx.lifecycle;

import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.fragment.app.o1;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class j0 {

    /* renamed from: f, reason: collision with root package name */
    public static final Class[] f1774f;

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f1775a;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f1776b;

    /* renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f1777c;

    /* renamed from: d, reason: collision with root package name */
    public final LinkedHashMap f1778d;

    /* renamed from: e, reason: collision with root package name */
    public final b4.d f1779e;

    static {
        Class cls = Integer.TYPE;
        int i10 = Build.VERSION.SDK_INT;
        f1774f = new Class[]{Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, cls, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, i10 >= 21 ? o1.k() : cls, i10 >= 21 ? o1.C() : cls};
    }

    public j0(HashMap map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f1775a = linkedHashMap;
        this.f1776b = new LinkedHashMap();
        this.f1777c = new LinkedHashMap();
        this.f1778d = new LinkedHashMap();
        this.f1779e = new androidx.activity.d(1, this);
        linkedHashMap.putAll(map);
    }

    public static Bundle a(j0 j0Var) {
        Map mapSingletonMap;
        String str;
        ue.d.e(j0Var, "this$0");
        LinkedHashMap linkedHashMap = j0Var.f1776b;
        ue.d.e(linkedHashMap, "<this>");
        int size = linkedHashMap.size();
        if (size == 0) {
            mapSingletonMap = je.s.f9871a;
        } else if (size != 1) {
            mapSingletonMap = new LinkedHashMap(linkedHashMap);
        } else {
            ue.d.e(linkedHashMap, "<this>");
            Map.Entry entry = (Map.Entry) linkedHashMap.entrySet().iterator().next();
            mapSingletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
            ue.d.d(mapSingletonMap, "with(...)");
        }
        Iterator it = mapSingletonMap.entrySet().iterator();
        do {
            boolean zHasNext = it.hasNext();
            LinkedHashMap linkedHashMap2 = j0Var.f1775a;
            if (!zHasNext) {
                Set<String> setKeySet = linkedHashMap2.keySet();
                ArrayList arrayList = new ArrayList(setKeySet.size());
                ArrayList arrayList2 = new ArrayList(arrayList.size());
                for (String str2 : setKeySet) {
                    arrayList.add(str2);
                    arrayList2.add(linkedHashMap2.get(str2));
                }
                ie.b[] bVarArr = {new ie.b("keys", arrayList), new ie.b("values", arrayList2)};
                Bundle bundle = new Bundle(2);
                for (int i10 = 0; i10 < 2; i10++) {
                    ie.b bVar = bVarArr[i10];
                    String str3 = (String) bVar.f8683a;
                    Object obj = bVar.f8684b;
                    if (obj == null) {
                        bundle.putString(str3, null);
                    } else if (obj instanceof Boolean) {
                        bundle.putBoolean(str3, ((Boolean) obj).booleanValue());
                    } else if (obj instanceof Byte) {
                        bundle.putByte(str3, ((Number) obj).byteValue());
                    } else if (obj instanceof Character) {
                        bundle.putChar(str3, ((Character) obj).charValue());
                    } else if (obj instanceof Double) {
                        bundle.putDouble(str3, ((Number) obj).doubleValue());
                    } else if (obj instanceof Float) {
                        bundle.putFloat(str3, ((Number) obj).floatValue());
                    } else if (obj instanceof Integer) {
                        bundle.putInt(str3, ((Number) obj).intValue());
                    } else if (obj instanceof Long) {
                        bundle.putLong(str3, ((Number) obj).longValue());
                    } else if (obj instanceof Short) {
                        bundle.putShort(str3, ((Number) obj).shortValue());
                    } else if (obj instanceof Bundle) {
                        bundle.putBundle(str3, (Bundle) obj);
                    } else if (obj instanceof CharSequence) {
                        bundle.putCharSequence(str3, (CharSequence) obj);
                    } else if (obj instanceof Parcelable) {
                        bundle.putParcelable(str3, (Parcelable) obj);
                    } else if (obj instanceof boolean[]) {
                        bundle.putBooleanArray(str3, (boolean[]) obj);
                    } else if (obj instanceof byte[]) {
                        bundle.putByteArray(str3, (byte[]) obj);
                    } else if (obj instanceof char[]) {
                        bundle.putCharArray(str3, (char[]) obj);
                    } else if (obj instanceof double[]) {
                        bundle.putDoubleArray(str3, (double[]) obj);
                    } else if (obj instanceof float[]) {
                        bundle.putFloatArray(str3, (float[]) obj);
                    } else if (obj instanceof int[]) {
                        bundle.putIntArray(str3, (int[]) obj);
                    } else if (obj instanceof long[]) {
                        bundle.putLongArray(str3, (long[]) obj);
                    } else if (obj instanceof short[]) {
                        bundle.putShortArray(str3, (short[]) obj);
                    } else if (obj instanceof Object[]) {
                        Class<?> componentType = obj.getClass().getComponentType();
                        ue.d.b(componentType);
                        if (Parcelable.class.isAssignableFrom(componentType)) {
                            bundle.putParcelableArray(str3, (Parcelable[]) obj);
                        } else if (String.class.isAssignableFrom(componentType)) {
                            bundle.putStringArray(str3, (String[]) obj);
                        } else if (CharSequence.class.isAssignableFrom(componentType)) {
                            bundle.putCharSequenceArray(str3, (CharSequence[]) obj);
                        } else {
                            if (!Serializable.class.isAssignableFrom(componentType)) {
                                throw new IllegalArgumentException("Illegal value array type " + componentType.getCanonicalName() + " for key \"" + str3 + '\"');
                            }
                            bundle.putSerializable(str3, (Serializable) obj);
                        }
                    } else if (obj instanceof Serializable) {
                        bundle.putSerializable(str3, (Serializable) obj);
                    } else {
                        int i11 = Build.VERSION.SDK_INT;
                        if (i11 >= 18 && (obj instanceof IBinder)) {
                            t0.c.a(bundle, str3, (IBinder) obj);
                        } else if (i11 >= 21 && t0.e.w(obj)) {
                            t0.d.a(bundle, str3, t0.e.i(obj));
                        } else {
                            if (i11 < 21 || !t0.e.y(obj)) {
                                throw new IllegalArgumentException("Illegal value type " + obj.getClass().getCanonicalName() + " for key \"" + str3 + '\"');
                            }
                            t0.d.b(bundle, str3, t0.e.j(obj));
                        }
                    }
                }
                return bundle;
            }
            Map.Entry entry2 = (Map.Entry) it.next();
            str = (String) entry2.getKey();
            Bundle bundleA = ((b4.d) entry2.getValue()).a();
            ue.d.e(str, "key");
            if (bundleA != null) {
                for (Class cls : f1774f) {
                    ue.d.b(cls);
                    if (!cls.isInstance(bundleA)) {
                    }
                }
                throw new IllegalArgumentException("Can't put value with type " + bundleA.getClass() + " into saved state");
            }
            Object obj2 = j0Var.f1777c.get(str);
            a0 a0Var = obj2 instanceof a0 ? (a0) obj2 : null;
            if (a0Var != null) {
                a0Var.e(bundleA);
            } else {
                linkedHashMap2.put(str, bundleA);
            }
        } while (j0Var.f1778d.get(str) == null);
        throw new ClassCastException();
    }

    public j0() {
        this.f1775a = new LinkedHashMap();
        this.f1776b = new LinkedHashMap();
        this.f1777c = new LinkedHashMap();
        this.f1778d = new LinkedHashMap();
        this.f1779e = new androidx.activity.d(1, this);
    }
}
