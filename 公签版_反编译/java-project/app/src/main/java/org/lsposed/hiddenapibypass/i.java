package org.lsposed.hiddenapibypass;

import java.util.HashSet;

/* loaded from: classes.dex */
public abstract class i {

    /* renamed from: a, reason: collision with root package name */
    public static final HashSet f12507a = new HashSet();

    public static boolean a(Class[] clsArr, Object[] objArr) {
        if (clsArr.length != objArr.length) {
            return false;
        }
        for (int i10 = 0; i10 < clsArr.length; i10++) {
            if (clsArr[i10].isPrimitive()) {
                Class cls = clsArr[i10];
                if (cls == Integer.TYPE && !(objArr[i10] instanceof Integer)) {
                    return false;
                }
                if (cls == Byte.TYPE && !(objArr[i10] instanceof Byte)) {
                    return false;
                }
                if (cls == Character.TYPE && !(objArr[i10] instanceof Character)) {
                    return false;
                }
                if (cls == Boolean.TYPE && !(objArr[i10] instanceof Boolean)) {
                    return false;
                }
                if (cls == Double.TYPE && !(objArr[i10] instanceof Double)) {
                    return false;
                }
                if (cls == Float.TYPE && !(objArr[i10] instanceof Float)) {
                    return false;
                }
                if (cls == Long.TYPE && !(objArr[i10] instanceof Long)) {
                    return false;
                }
                if (cls == Short.TYPE && !(objArr[i10] instanceof Short)) {
                    return false;
                }
            } else {
                Object obj = objArr[i10];
                if (obj != null && !clsArr[i10].isInstance(obj)) {
                    return false;
                }
            }
        }
        return true;
    }
}
