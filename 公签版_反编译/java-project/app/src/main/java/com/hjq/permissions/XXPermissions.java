package com.hjq.permissions;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import androidx.fragment.app.f;
import androidx.fragment.app.j0;
import com.hjq.permissions.fragment.factory.PermissionFragmentFactory;
import com.hjq.permissions.fragment.factory.PermissionFragmentFactoryByAndroid;
import com.hjq.permissions.fragment.factory.PermissionFragmentFactoryByAndroidX;
import com.hjq.permissions.manifest.AndroidManifestParser;
import com.hjq.permissions.permission.PermissionChannel;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.start.StartActivityAgent;
import com.hjq.permissions.tools.PermissionApi;
import com.hjq.permissions.tools.PermissionChecker;
import com.hjq.permissions.tools.PermissionSettingPage;
import com.hjq.permissions.tools.PermissionUtils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class XXPermissions {
    public static final int REQUEST_CODE = 1025;
    private static Boolean sCheckMode;
    private static Class<? extends OnPermissionDescription> sPermissionDescriptionClass;
    private static Class<? extends OnPermissionInterceptor> sPermissionInterceptorClass;
    private Boolean mCheckMode;
    private final Context mContext;
    private Fragment mFragment;
    private OnPermissionDescription mPermissionDescription;
    private OnPermissionInterceptor mPermissionInterceptor;
    private final List<IPermission> mRequestList = new ArrayList();
    private androidx.fragment.app.Fragment mXFragment;

    private XXPermissions(Context context) {
        this.mContext = context;
    }

    public static boolean containsPermission(List<IPermission> list, IPermission iPermission) {
        return PermissionUtils.containsPermission(list, iPermission);
    }

    private static void dispatchPermissionPageCallback(Context context, List<IPermission> list, OnPermissionCallback onPermissionCallback) {
        if (onPermissionCallback == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        for (IPermission iPermission : list) {
            if (iPermission.isGrantedPermission(context, false)) {
                arrayList.add(iPermission);
            } else {
                arrayList2.add(iPermission);
            }
        }
        onPermissionCallback.onPermissionResult(arrayList, arrayList2);
    }

    public static boolean equalsPermission(IPermission iPermission, IPermission iPermission2) {
        return PermissionUtils.equalsPermission(iPermission, iPermission2);
    }

    private static PermissionFragmentFactory<?, ?> generatePermissionFragmentFactory(Activity activity) {
        return generatePermissionFragmentFactory(activity, null, null);
    }

    public static List<IPermission> getDeniedPermissions(Context context, IPermission[] iPermissionArr) {
        return getDeniedPermissions(context, PermissionUtils.asArrayList(iPermissionArr));
    }

    public static List<IPermission> getGrantedPermissions(Context context, IPermission[] iPermissionArr) {
        return getGrantedPermissions(context, PermissionUtils.asArrayList(iPermissionArr));
    }

    public static OnPermissionDescription getPermissionDescription() {
        Class<? extends OnPermissionDescription> cls = sPermissionDescriptionClass;
        if (cls != null) {
            try {
                return cls.getDeclaredConstructor(null).newInstance(null);
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        return new DefaultPermissionDescription();
    }

    public static OnPermissionInterceptor getPermissionInterceptor() {
        Class<? extends OnPermissionInterceptor> cls = sPermissionInterceptorClass;
        if (cls != null) {
            try {
                return cls.getDeclaredConstructor(null).newInstance(null);
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        return new DefaultPermissionInterceptor();
    }

    private boolean isCheckMode(Context context) {
        if (this.mCheckMode == null) {
            if (sCheckMode == null) {
                sCheckMode = Boolean.valueOf(PermissionUtils.isDebugMode(context));
            }
            this.mCheckMode = sCheckMode;
        }
        return this.mCheckMode.booleanValue();
    }

    public static boolean isDoNotAskAgainPermission(Activity activity, IPermission iPermission) {
        return iPermission.isDoNotAskAgainPermission(activity);
    }

    public static boolean isDoNotAskAgainPermissions(Activity activity, IPermission[] iPermissionArr) {
        return isDoNotAskAgainPermissions(activity, PermissionUtils.asArrayList(iPermissionArr));
    }

    public static boolean isGrantedPermission(Context context, IPermission iPermission) {
        return iPermission.isGrantedPermission(context);
    }

    public static boolean isGrantedPermissions(Context context, IPermission[] iPermissionArr) {
        return isGrantedPermissions(context, PermissionUtils.asArrayList(iPermissionArr));
    }

    public static boolean isHealthPermission(IPermission iPermission) {
        return PermissionApi.isHealthPermission(iPermission);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$startPermissionActivity$0(Activity activity, List list, OnPermissionCallback onPermissionCallback) {
        if (PermissionUtils.isActivityUnavailable(activity)) {
            return;
        }
        dispatchPermissionPageCallback(activity, list, onPermissionCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$startPermissionActivity$1(Activity activity, Fragment fragment, List list, OnPermissionCallback onPermissionCallback) {
        if (PermissionUtils.isActivityUnavailable(activity) || PermissionUtils.isFragmentUnavailable(fragment)) {
            return;
        }
        dispatchPermissionPageCallback(activity, list, onPermissionCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$startPermissionActivity$2(Activity activity, androidx.fragment.app.Fragment fragment, List list, OnPermissionCallback onPermissionCallback) {
        if (PermissionUtils.isActivityUnavailable(activity) || PermissionUtils.isFragmentUnavailable(fragment)) {
            return;
        }
        dispatchPermissionPageCallback(activity, list, onPermissionCallback);
    }

    public static void setCheckMode(boolean z) {
        sCheckMode = Boolean.valueOf(z);
    }

    public static void setPermissionDescriptionClass(Class<? extends OnPermissionDescription> cls) {
        sPermissionDescriptionClass = cls;
    }

    public static void setPermissionInterceptorClass(Class<? extends OnPermissionInterceptor> cls) {
        sPermissionInterceptorClass = cls;
    }

    public static void startPermissionActivity(Context context) {
        startPermissionActivity(context, new ArrayList(0));
    }

    public static XXPermissions with(Context context) {
        return new XXPermissions(context);
    }

    public XXPermissions description(OnPermissionDescription onPermissionDescription) {
        this.mPermissionDescription = onPermissionDescription;
        return this;
    }

    public XXPermissions interceptor(OnPermissionInterceptor onPermissionInterceptor) {
        this.mPermissionInterceptor = onPermissionInterceptor;
        return this;
    }

    public XXPermissions permission(IPermission iPermission) {
        this.mRequestList.remove(iPermission);
        this.mRequestList.add(iPermission);
        return this;
    }

    public XXPermissions permissions(List<IPermission> list) {
        if (list.isEmpty()) {
            return this;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            permission(list.get(i10));
        }
        return this;
    }

    public void request(OnPermissionCallback onPermissionCallback) {
        PermissionFragmentFactory<?, ?> permissionFragmentFactoryGeneratePermissionFragmentFactory;
        if (this.mContext == null) {
            return;
        }
        if (this.mPermissionInterceptor == null) {
            this.mPermissionInterceptor = getPermissionInterceptor();
        }
        if (this.mPermissionDescription == null) {
            this.mPermissionDescription = getPermissionDescription();
        }
        Context context = this.mContext;
        Fragment fragment = this.mFragment;
        androidx.fragment.app.Fragment fragment2 = this.mXFragment;
        OnPermissionInterceptor onPermissionInterceptor = this.mPermissionInterceptor;
        OnPermissionDescription onPermissionDescription = this.mPermissionDescription;
        ArrayList arrayList = new ArrayList(this.mRequestList);
        Activity activityFindActivity = PermissionUtils.findActivity(context);
        if (isCheckMode(context)) {
            PermissionChecker.checkActivityStatus(activityFindActivity);
            if (fragment != null) {
                PermissionChecker.checkAndroidFragmentStatus(fragment);
            } else if (fragment2 != null) {
                PermissionChecker.checkAndroidXFragmentStatus(fragment2);
            }
            PermissionChecker.checkPermissionList(activityFindActivity, arrayList, AndroidManifestParser.getAndroidManifestInfo(context));
        }
        if (PermissionUtils.isActivityUnavailable(activityFindActivity)) {
            return;
        }
        PermissionApi.addOldPermissionsByNewPermissions(activityFindActivity, arrayList);
        if (PermissionApi.isGrantedPermissions(context, arrayList)) {
            onPermissionInterceptor.onRequestPermissionEnd(activityFindActivity, true, arrayList, arrayList, new ArrayList(), onPermissionCallback);
            return;
        }
        if (fragment2 != null) {
            if (PermissionUtils.isFragmentUnavailable(fragment2)) {
                return;
            } else {
                permissionFragmentFactoryGeneratePermissionFragmentFactory = generatePermissionFragmentFactory(activityFindActivity, fragment2);
            }
        } else if (fragment == null) {
            permissionFragmentFactoryGeneratePermissionFragmentFactory = generatePermissionFragmentFactory(activityFindActivity);
        } else if (PermissionUtils.isFragmentUnavailable(fragment)) {
            return;
        } else {
            permissionFragmentFactoryGeneratePermissionFragmentFactory = generatePermissionFragmentFactory(activityFindActivity, fragment);
        }
        onPermissionInterceptor.onRequestPermissionStart(activityFindActivity, arrayList, permissionFragmentFactoryGeneratePermissionFragmentFactory, onPermissionDescription, onPermissionCallback);
    }

    public XXPermissions unchecked() {
        this.mCheckMode = Boolean.FALSE;
        return this;
    }

    public static boolean containsPermission(List<IPermission> list, String str) {
        return PermissionUtils.containsPermission(list, str);
    }

    public static boolean equalsPermission(IPermission iPermission, String str) {
        return PermissionUtils.equalsPermission(iPermission, str);
    }

    private static PermissionFragmentFactory<?, ?> generatePermissionFragmentFactory(Activity activity, androidx.fragment.app.Fragment fragment) {
        return generatePermissionFragmentFactory(activity, fragment, null);
    }

    public static List<IPermission> getDeniedPermissions(Context context, List<IPermission> list) {
        return PermissionApi.getDeniedPermissions(context, list);
    }

    public static List<IPermission> getGrantedPermissions(Context context, List<IPermission> list) {
        return PermissionApi.getGrantedPermissions(context, list);
    }

    public static boolean isDoNotAskAgainPermissions(Activity activity, List<IPermission> list) {
        return PermissionApi.isDoNotAskAgainPermissions(activity, list);
    }

    public static boolean isGrantedPermissions(Context context, List<IPermission> list) {
        return PermissionApi.isGrantedPermissions(context, list);
    }

    public static void startPermissionActivity(Context context, IPermission... iPermissionArr) {
        startPermissionActivity(context, PermissionUtils.asArrayList(iPermissionArr));
    }

    public static XXPermissions with(Fragment fragment) {
        return new XXPermissions(fragment);
    }

    public static boolean equalsPermission(String str, String str2) {
        return PermissionUtils.equalsPermission(str, str2);
    }

    private static PermissionFragmentFactory<?, ?> generatePermissionFragmentFactory(Activity activity, Fragment fragment) {
        return generatePermissionFragmentFactory(activity, null, fragment);
    }

    public static void startPermissionActivity(Context context, List<IPermission> list) {
        Activity activityFindActivity = PermissionUtils.findActivity(context);
        if (activityFindActivity != null) {
            startPermissionActivity(activityFindActivity, list);
        } else {
            StartActivityAgent.startActivity(context, PermissionApi.getBestPermissionSettingIntent(context, list, true));
        }
    }

    public static XXPermissions with(androidx.fragment.app.Fragment fragment) {
        return new XXPermissions(fragment);
    }

    private XXPermissions(Fragment fragment) {
        this.mFragment = fragment;
        this.mContext = fragment.getActivity();
    }

    private static PermissionFragmentFactory<?, ?> generatePermissionFragmentFactory(Activity activity, androidx.fragment.app.Fragment fragment, Fragment fragment2) {
        PermissionFragmentFactory<?, ?> permissionFragmentFactoryByAndroid;
        if (fragment != null) {
            return new PermissionFragmentFactoryByAndroidX(fragment.getActivity(), fragment.getChildFragmentManager());
        }
        if (fragment2 != null) {
            return new PermissionFragmentFactoryByAndroid(fragment2.getActivity(), fragment2.getChildFragmentManager());
        }
        if (activity instanceof j0) {
            j0 j0Var = (j0) activity;
            permissionFragmentFactoryByAndroid = new PermissionFragmentFactoryByAndroidX(j0Var, j0Var.p());
        } else {
            permissionFragmentFactoryByAndroid = new PermissionFragmentFactoryByAndroid(activity, activity.getFragmentManager());
        }
        return permissionFragmentFactoryByAndroid;
    }

    public XXPermissions permissions(IPermission[] iPermissionArr) {
        return permissions(PermissionUtils.asArrayList(iPermissionArr));
    }

    public static void startPermissionActivity(Activity activity) {
        startPermissionActivity(activity, (List<IPermission>) new ArrayList(0));
    }

    public static void startPermissionActivity(Activity activity, IPermission... iPermissionArr) {
        startPermissionActivity(activity, (List<IPermission>) PermissionUtils.asArrayList(iPermissionArr));
    }

    private XXPermissions(androidx.fragment.app.Fragment fragment) {
        this.mXFragment = fragment;
        this.mContext = fragment.getActivity();
    }

    public static void startPermissionActivity(Activity activity, List<IPermission> list) {
        startPermissionActivity(activity, list, REQUEST_CODE);
    }

    public static void startPermissionActivity(Activity activity, List<IPermission> list, int i10) {
        StartActivityAgent.startActivityForResult(activity, PermissionApi.getBestPermissionSettingIntent(activity, list, true), i10);
    }

    public static void startPermissionActivity(Activity activity, IPermission iPermission, OnPermissionCallback onPermissionCallback) {
        startPermissionActivity(activity, PermissionUtils.asArrayList(iPermission), onPermissionCallback);
    }

    public static void startPermissionActivity(Activity activity, List<IPermission> list, OnPermissionCallback onPermissionCallback) {
        if (PermissionUtils.isActivityUnavailable(activity)) {
            return;
        }
        if (list.isEmpty()) {
            StartActivityAgent.startActivity(activity, PermissionSettingPage.getCommonPermissionSettingIntent(activity));
        } else {
            generatePermissionFragmentFactory(activity).createAndCommitFragment(list, PermissionChannel.START_ACTIVITY, new b(activity, list, onPermissionCallback, 0));
        }
    }

    public static void startPermissionActivity(Fragment fragment) {
        startPermissionActivity(fragment, new ArrayList(0));
    }

    public static void startPermissionActivity(Fragment fragment, IPermission... iPermissionArr) {
        startPermissionActivity(fragment, PermissionUtils.asArrayList(iPermissionArr));
    }

    public static void startPermissionActivity(Fragment fragment, List<IPermission> list) {
        startPermissionActivity(fragment, list, REQUEST_CODE);
    }

    public static void startPermissionActivity(Fragment fragment, List<IPermission> list, int i10) {
        if (PermissionUtils.isFragmentUnavailable(fragment)) {
            return;
        }
        Activity activity = fragment.getActivity();
        if (PermissionUtils.isActivityUnavailable(activity) || PermissionUtils.isFragmentUnavailable(fragment)) {
            return;
        }
        if (list.isEmpty()) {
            StartActivityAgent.startActivity(fragment, PermissionSettingPage.getCommonPermissionSettingIntent(activity));
        } else {
            StartActivityAgent.startActivityForResult(fragment, PermissionApi.getBestPermissionSettingIntent(activity, list, true), i10);
        }
    }

    public static void startPermissionActivity(Fragment fragment, IPermission iPermission, OnPermissionCallback onPermissionCallback) {
        startPermissionActivity(fragment, PermissionUtils.asArrayList(iPermission), onPermissionCallback);
    }

    public static void startPermissionActivity(Fragment fragment, List<IPermission> list, OnPermissionCallback onPermissionCallback) {
        if (PermissionUtils.isFragmentUnavailable(fragment)) {
            return;
        }
        Activity activity = fragment.getActivity();
        if (PermissionUtils.isActivityUnavailable(activity) || PermissionUtils.isFragmentUnavailable(fragment)) {
            return;
        }
        if (list.isEmpty()) {
            StartActivityAgent.startActivity(fragment, PermissionSettingPage.getCommonPermissionSettingIntent(activity));
        } else {
            generatePermissionFragmentFactory(activity, fragment).createAndCommitFragment(list, PermissionChannel.START_ACTIVITY, new f(activity, fragment, list, onPermissionCallback, 1));
        }
    }

    public static void startPermissionActivity(androidx.fragment.app.Fragment fragment) {
        startPermissionActivity(fragment, new ArrayList());
    }

    public static void startPermissionActivity(androidx.fragment.app.Fragment fragment, IPermission... iPermissionArr) {
        startPermissionActivity(fragment, PermissionUtils.asArrayList(iPermissionArr));
    }

    public static void startPermissionActivity(androidx.fragment.app.Fragment fragment, List<IPermission> list) {
        startPermissionActivity(fragment, list, REQUEST_CODE);
    }

    public static void startPermissionActivity(androidx.fragment.app.Fragment fragment, List<IPermission> list, int i10) {
        if (PermissionUtils.isFragmentUnavailable(fragment)) {
            return;
        }
        j0 activity = fragment.getActivity();
        if (PermissionUtils.isActivityUnavailable(activity) || PermissionUtils.isFragmentUnavailable(fragment)) {
            return;
        }
        if (list.isEmpty()) {
            StartActivityAgent.startActivity(fragment, PermissionSettingPage.getCommonPermissionSettingIntent(activity));
        } else {
            StartActivityAgent.startActivityForResult(fragment, PermissionApi.getBestPermissionSettingIntent(activity, list, true), i10);
        }
    }

    public static void startPermissionActivity(androidx.fragment.app.Fragment fragment, IPermission iPermission, OnPermissionCallback onPermissionCallback) {
        startPermissionActivity(fragment, PermissionUtils.asArrayList(iPermission), onPermissionCallback);
    }

    public static void startPermissionActivity(androidx.fragment.app.Fragment fragment, List<IPermission> list, OnPermissionCallback onPermissionCallback) {
        if (PermissionUtils.isFragmentUnavailable(fragment)) {
            return;
        }
        j0 activity = fragment.getActivity();
        if (PermissionUtils.isActivityUnavailable(activity) || PermissionUtils.isFragmentUnavailable(fragment)) {
            return;
        }
        if (list.isEmpty()) {
            StartActivityAgent.startActivity(fragment, PermissionSettingPage.getCommonPermissionSettingIntent(activity));
        } else {
            generatePermissionFragmentFactory(activity, fragment).createAndCommitFragment(list, PermissionChannel.START_ACTIVITY, new f(activity, fragment, list, onPermissionCallback, 2));
        }
    }
}
