package com.hjq.permissions.tools;

import android.app.Activity;
import android.app.Fragment;
import android.os.Parcelable;
import com.hjq.permissions.manifest.AndroidManifestInfo;
import com.hjq.permissions.permission.base.IPermission;
import da.b;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

/* loaded from: classes.dex */
public final class PermissionChecker {
    public static void checkActivityStatus(Activity activity) {
        if (activity == null) {
            throw new IllegalArgumentException("The instance of the context must be an activity object");
        }
        if (activity.isFinishing()) {
            throw new IllegalStateException("The activity has been finishing, please manually determine the status of the activity");
        }
        if (activity.isDestroyed()) {
            throw new IllegalStateException("The activity has been destroyed, please manually determine the status of the activity");
        }
    }

    public static void checkAndroidFragmentStatus(Fragment fragment) {
        if (!fragment.isAdded()) {
            throw new IllegalStateException("This android fragment has no binding added, please manually determine the status of the android fragment");
        }
        if (fragment.isRemoving()) {
            throw new IllegalStateException("This android fragment has been removed, please manually determine the status of the android fragment");
        }
    }

    public static void checkAndroidXFragmentStatus(androidx.fragment.app.Fragment fragment) {
        if (!fragment.isAdded()) {
            throw new IllegalStateException("This androidX fragment has no binding added, please manually determine the status of the androidX fragment");
        }
        if (fragment.isRemoving()) {
            throw new IllegalStateException("This androidX fragment has been removed, please manually determine the status of the androidX fragment");
        }
    }

    public static void checkPermissionList(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (list == null || list.isEmpty()) {
            throw new IllegalArgumentException("The requested permission cannot be empty");
        }
        for (IPermission iPermission : list) {
            checkPermissionParcelable(iPermission);
            iPermission.checkCompliance(activity, list, androidManifestInfo);
        }
    }

    public static void checkPermissionParcelable(IPermission iPermission) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        Field declaredField;
        Class<?> cls = iPermission.getClass();
        String name = cls.getName();
        try {
            declaredField = iPermission.getClass().getDeclaredField("CREATOR");
        } catch (NoSuchFieldException e7) {
            e7.printStackTrace();
            declaredField = null;
        }
        if (declaredField == null) {
            throw new IllegalArgumentException("This permission class does not define the CREATOR field");
        }
        try {
            Object obj = declaredField.get(null);
            if (!(obj instanceof Parcelable.Creator)) {
                StringBuilder sbD = b.d("The CREATOR field in this ", name, " is not of type ");
                sbD.append(Parcelable.Creator.class.getName());
                throw new IllegalArgumentException(sbD.toString());
            }
            Type genericType = declaredField.getGenericType();
            if (!(genericType instanceof ParameterizedType)) {
                throw new IllegalArgumentException(g.b.A("The generic type defined for the CREATOR field in this ", name, " is empty"));
            }
            Type[] actualTypeArguments = ((ParameterizedType) genericType).getActualTypeArguments();
            if (actualTypeArguments.length != 1) {
                throw new IllegalArgumentException(g.b.A("The number of generics defined in the CREATOR field of this ", name, " can only be one"));
            }
            Type type = actualTypeArguments[0];
            if (!(type instanceof Class) || !cls.isAssignableFrom((Class) type)) {
                throw new IllegalArgumentException(g.b.A("The generic type defined in the CREATOR field of this ", name, " is incorrect"));
            }
            if (((Parcelable.Creator) obj).newArray(0) == null) {
                throw new IllegalArgumentException(g.b.A("The newArray method of the CREATOR field in this ", name, " returns an empty value. This method cannot return an empty value"));
            }
        } catch (Exception unused) {
            throw new IllegalArgumentException(g.b.A("The CREATOR field in the ", name, " has an access exception. Please modify CREATOR field with \"public static final\""));
        }
    }
}
