package com.hjq.permissions.core;

import a2.h;
import android.app.Activity;
import android.text.TextUtils;
import com.hjq.permissions.OnPermissionCallback;
import com.hjq.permissions.OnPermissionDescription;
import com.hjq.permissions.OnPermissionInterceptor;
import com.hjq.permissions.fragment.factory.PermissionFragmentFactory;
import com.hjq.permissions.manager.ActivityOrientationManager;
import com.hjq.permissions.permission.PermissionChannel;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.tools.PermissionApi;
import com.hjq.permissions.tools.PermissionTaskHandler;
import com.hjq.permissions.tools.PermissionUtils;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class PermissionRequestMainLogic {
    private final Activity mActivity;
    private final OnPermissionCallback mCallBack;
    private final PermissionFragmentFactory<?, ?> mFragmentFactory;
    private final OnPermissionDescription mPermissionDescription;
    private final OnPermissionInterceptor mPermissionInterceptor;
    private final List<IPermission> mRequestList;

    /* renamed from: com.hjq.permissions.core.PermissionRequestMainLogic$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        final /* synthetic */ Activity val$activity;
        final /* synthetic */ PermissionFragmentFactory val$fragmentFactory;
        final /* synthetic */ Iterator val$iterator;
        final /* synthetic */ OnPermissionDescription val$permissionDescription;

        public AnonymousClass1(Iterator it, Activity activity, PermissionFragmentFactory permissionFragmentFactory, OnPermissionDescription onPermissionDescription) {
            this.val$iterator = it;
            this.val$activity = activity;
            this.val$fragmentFactory = permissionFragmentFactory;
            this.val$permissionDescription = onPermissionDescription;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(Activity activity, List list, PermissionFragmentFactory permissionFragmentFactory, OnPermissionDescription onPermissionDescription) {
            PermissionRequestMainLogic.requestPermissionsByFragment(activity, list, permissionFragmentFactory, onPermissionDescription, this);
        }

        @Override // java.lang.Runnable
        public void run() {
            List list;
            loop0: do {
                list = null;
                while (true) {
                    if (!this.val$iterator.hasNext()) {
                        break loop0;
                    }
                    list = (List) this.val$iterator.next();
                    if (list != null && !list.isEmpty()) {
                        break;
                    }
                }
            } while (PermissionApi.isGrantedPermissions(this.val$activity, list));
            final List list2 = list;
            if (list2 == null || list2.isEmpty()) {
                PermissionRequestMainLogic.this.postDelayedHandlerRequestPermissionsResult();
                return;
            }
            boolean z = false;
            IPermission iPermission = (IPermission) list2.get(0);
            if (iPermission.isBackgroundPermission(this.val$activity)) {
                List<IPermission> foregroundPermissions = iPermission.getForegroundPermissions(this.val$activity);
                boolean z4 = true;
                if (foregroundPermissions != null && !foregroundPermissions.isEmpty()) {
                    Iterator<IPermission> it = foregroundPermissions.iterator();
                    while (it.hasNext()) {
                        if (it.next().isGrantedPermission(this.val$activity)) {
                            z = true;
                        }
                    }
                    z4 = z;
                }
                if (!z4) {
                    run();
                    return;
                }
            }
            int maxIntervalTimeByPermissions = PermissionApi.getMaxIntervalTimeByPermissions(this.val$activity, list2);
            if (maxIntervalTimeByPermissions == 0) {
                PermissionRequestMainLogic.requestPermissionsByFragment(this.val$activity, list2, this.val$fragmentFactory, this.val$permissionDescription, this);
                return;
            }
            final Activity activity = this.val$activity;
            final PermissionFragmentFactory permissionFragmentFactory = this.val$fragmentFactory;
            final OnPermissionDescription onPermissionDescription = this.val$permissionDescription;
            PermissionTaskHandler.sendTask(new Runnable() { // from class: com.hjq.permissions.core.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3761a.lambda$run$0(activity, list2, permissionFragmentFactory, onPermissionDescription);
                }
            }, maxIntervalTimeByPermissions);
        }
    }

    public PermissionRequestMainLogic(Activity activity, List<IPermission> list, PermissionFragmentFactory<?, ?> permissionFragmentFactory, OnPermissionInterceptor onPermissionInterceptor, OnPermissionDescription onPermissionDescription, OnPermissionCallback onPermissionCallback) {
        this.mActivity = activity;
        this.mRequestList = list;
        this.mFragmentFactory = permissionFragmentFactory;
        this.mPermissionInterceptor = onPermissionInterceptor;
        this.mPermissionDescription = onPermissionDescription;
        this.mCallBack = onPermissionCallback;
    }

    private static List<List<IPermission>> getUnauthorizedList(Activity activity, List<IPermission> list) {
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            IPermission iPermission = list.get(i10);
            if (!PermissionUtils.containsPermission(arrayList2, iPermission)) {
                arrayList2.add(iPermission);
                if (iPermission.isSupportRequestPermission(activity) && !iPermission.isGrantedPermission(activity)) {
                    if (iPermission.getPermissionChannel(activity) == PermissionChannel.START_ACTIVITY) {
                        arrayList.add(PermissionUtils.asArrayList(iPermission));
                    } else {
                        String permissionGroup = iPermission.getPermissionGroup(activity);
                        if (TextUtils.isEmpty(permissionGroup)) {
                            arrayList.add(PermissionUtils.asArrayList(iPermission));
                        } else {
                            ArrayList arrayList3 = null;
                            ArrayList arrayList4 = null;
                            for (int i11 = i10; i11 < list.size(); i11++) {
                                IPermission iPermission2 = list.get(i11);
                                if (PermissionUtils.equalsString(iPermission2.getPermissionGroup(activity), permissionGroup) && iPermission2.isSupportRequestPermission(activity) && !iPermission2.isGrantedPermission(activity)) {
                                    if (arrayList4 == null) {
                                        arrayList4 = new ArrayList();
                                    }
                                    arrayList4.add(iPermission2);
                                    if (!PermissionUtils.containsPermission(arrayList2, iPermission2)) {
                                        arrayList2.add(iPermission2);
                                    }
                                }
                            }
                            if (arrayList4 != null && !arrayList4.isEmpty() && !PermissionApi.isGrantedPermissions(activity, arrayList4)) {
                                Iterator it = arrayList4.iterator();
                                while (true) {
                                    if (!it.hasNext()) {
                                        break;
                                    }
                                    IPermission iPermission3 = (IPermission) it.next();
                                    if (iPermission3.isBackgroundPermission(activity)) {
                                        it.remove();
                                        arrayList3 = new ArrayList();
                                        arrayList3.add(iPermission3);
                                        break;
                                    }
                                }
                                if (!arrayList4.isEmpty()) {
                                    arrayList.add(arrayList4);
                                }
                                if (arrayList3 != null && !arrayList3.isEmpty()) {
                                    arrayList.add(arrayList3);
                                }
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePermissionRequestResult() {
        Activity activity = this.mActivity;
        List<IPermission> list = this.mRequestList;
        if (PermissionUtils.isActivityUnavailable(activity)) {
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        for (IPermission iPermission : list) {
            if (iPermission.isGrantedPermission(activity, false)) {
                arrayList.add(iPermission);
            } else {
                arrayList2.add(iPermission);
            }
        }
        this.mPermissionInterceptor.onRequestPermissionEnd(activity, false, list, arrayList, arrayList2, this.mCallBack);
        postDelayedUnlockActivityOrientation(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postDelayedHandlerRequestPermissionsResult() {
        PermissionTaskHandler.sendTask(new h(14, this), 100L);
    }

    private void postDelayedUnlockActivityOrientation(Activity activity) {
        PermissionTaskHandler.sendTask(new c(activity, 0), 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void requestPermissionsByFragment(Activity activity, List<IPermission> list, PermissionFragmentFactory<?, ?> permissionFragmentFactory, OnPermissionDescription onPermissionDescription, Runnable runnable) {
        if (list.isEmpty()) {
            runnable.run();
            return;
        }
        PermissionChannel permissionChannel = PermissionChannel.REQUEST_PERMISSIONS;
        Iterator<IPermission> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().getPermissionChannel(activity) != PermissionChannel.REQUEST_PERMISSIONS) {
                permissionChannel = PermissionChannel.START_ACTIVITY;
                break;
            }
        }
        PermissionChannel permissionChannel2 = permissionChannel;
        if (PermissionVersion.isAndroid6() || permissionChannel2 != PermissionChannel.REQUEST_PERMISSIONS) {
            onPermissionDescription.askWhetherRequestPermission(activity, list, new b(permissionFragmentFactory, list, permissionChannel2, new PermissionDescriptionLogic(activity, list, runnable, onPermissionDescription), 0), runnable);
        } else {
            runnable.run();
        }
    }

    public void request() {
        if (this.mRequestList.isEmpty()) {
            return;
        }
        List<List<IPermission>> unauthorizedList = getUnauthorizedList(this.mActivity, this.mRequestList);
        if (unauthorizedList.isEmpty()) {
            handlePermissionRequestResult();
            return;
        }
        Iterator<List<IPermission>> it = unauthorizedList.iterator();
        List<IPermission> next = null;
        while (it.hasNext() && (next == null || next.isEmpty())) {
            next = it.next();
        }
        if (next == null || next.isEmpty()) {
            handlePermissionRequestResult();
            return;
        }
        Activity activity = this.mActivity;
        PermissionFragmentFactory<?, ?> permissionFragmentFactory = this.mFragmentFactory;
        OnPermissionDescription onPermissionDescription = this.mPermissionDescription;
        ActivityOrientationManager.lockActivityOrientation(activity);
        requestPermissionsByFragment(activity, next, permissionFragmentFactory, onPermissionDescription, new AnonymousClass1(it, activity, permissionFragmentFactory, onPermissionDescription));
    }
}
