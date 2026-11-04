package m0;

import android.app.Activity;
import android.app.Notification;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.SparseArray;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;

/* loaded from: classes.dex */
public abstract class c0 {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f10729a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static Field f10730b;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f10731c;

    public static SparseArray a(ArrayList arrayList) {
        int size = arrayList.size();
        SparseArray sparseArray = null;
        for (int i10 = 0; i10 < size; i10++) {
            Bundle bundle = (Bundle) arrayList.get(i10);
            if (bundle != null) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                }
                sparseArray.put(i10, bundle);
            }
        }
        return sparseArray;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0043 A[Catch: all -> 0x0015, IllegalAccessException | NoSuchFieldException -> 0x0050, IllegalAccessException | NoSuchFieldException -> 0x0050, TRY_LEAVE, TryCatch #1 {IllegalAccessException | NoSuchFieldException -> 0x0050, blocks: (B:15:0x0018, B:17:0x001c, B:19:0x0030, B:22:0x0034, B:22:0x0034, B:23:0x0039, B:23:0x0039, B:25:0x0043, B:25:0x0043), top: B:35:0x0018, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bundle b(Notification notification) {
        Bundle bundle;
        Bundle bundle2;
        if (Build.VERSION.SDK_INT >= 19) {
            return notification.extras;
        }
        synchronized (f10729a) {
            bundle = null;
            if (!f10731c) {
                try {
                    if (f10730b == null) {
                        Field declaredField = Notification.class.getDeclaredField("extras");
                        if (Bundle.class.isAssignableFrom(declaredField.getType())) {
                            declaredField.setAccessible(true);
                            f10730b = declaredField;
                            bundle2 = (Bundle) f10730b.get(notification);
                            if (bundle2 == null) {
                                bundle2 = new Bundle();
                                f10730b.set(notification, bundle2);
                            }
                            bundle = bundle2;
                        } else {
                            f10731c = true;
                        }
                    } else {
                        bundle2 = (Bundle) f10730b.get(notification);
                        if (bundle2 == null) {
                        }
                        bundle = bundle2;
                    }
                } catch (IllegalAccessException | NoSuchFieldException unused) {
                    f10731c = true;
                }
            }
        }
        return bundle;
    }

    public static Intent c(q.i iVar) {
        Intent intentA = m.a(iVar);
        if (intentA != null) {
            return intentA;
        }
        try {
            String strE = e(iVar, iVar.getComponentName());
            if (strE == null) {
                return null;
            }
            ComponentName componentName = new ComponentName(iVar, strE);
            try {
                return e(iVar, componentName) == null ? Intent.makeMainActivity(componentName) : new Intent().setComponent(componentName);
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        } catch (PackageManager.NameNotFoundException e7) {
            throw new IllegalArgumentException(e7);
        }
    }

    public static Intent d(q.i iVar, ComponentName componentName) {
        String strE = e(iVar, componentName);
        if (strE == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), strE);
        return e(iVar, componentName2) == null ? Intent.makeMainActivity(componentName2) : new Intent().setComponent(componentName2);
    }

    public static String e(Activity activity, ComponentName componentName) {
        String string;
        PackageManager packageManager = activity.getPackageManager();
        int i10 = Build.VERSION.SDK_INT;
        ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, i10 >= 29 ? 269222528 : i10 >= 24 ? 787072 : 640);
        String str = activityInfo.parentActivityName;
        if (str != null) {
            return str;
        }
        Bundle bundle = activityInfo.metaData;
        if (bundle == null || (string = bundle.getString("android.support.PARENT_ACTIVITY")) == null) {
            return null;
        }
        if (string.charAt(0) != '.') {
            return string;
        }
        return activity.getPackageName() + string;
    }

    public static Bundle[] f(q0[] q0VarArr) {
        if (q0VarArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[q0VarArr.length];
        for (int i10 = 0; i10 < q0VarArr.length; i10++) {
            q0 q0Var = q0VarArr[i10];
            Bundle bundle = new Bundle();
            q0Var.getClass();
            bundle.putString("resultKey", "key_text_reply");
            bundle.putCharSequence(AnnotatedPrivateKey.LABEL, "请输入ADB配对码");
            bundle.putCharSequenceArray("choices", null);
            bundle.putBoolean("allowFreeFormInput", true);
            bundle.putBundle("extras", q0Var.f10791a);
            HashSet hashSet = q0Var.f10792b;
            if (!hashSet.isEmpty()) {
                ArrayList<String> arrayList = new ArrayList<>(hashSet.size());
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    arrayList.add((String) it.next());
                }
                bundle.putStringArrayList("allowedDataTypes", arrayList);
            }
            bundleArr[i10] = bundle;
        }
        return bundleArr;
    }
}
