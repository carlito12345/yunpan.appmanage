package com.hjq.permissions.core;

import a2.h;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.j0;
import com.hjq.permissions.fragment.IFragmentCallback;
import com.hjq.permissions.fragment.IFragmentMethod;
import com.hjq.permissions.manager.ActivityOrientationManager;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.start.IStartActivityDelegate;
import com.hjq.permissions.tools.PermissionApi;
import com.hjq.permissions.tools.PermissionTaskHandler;
import com.hjq.permissions.tools.PermissionUtils;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.List;

/* loaded from: classes.dex */
public abstract class PermissionChannelImpl implements IFragmentCallback {
    public static final String REQUEST_CODE = "request_code";
    public static final String REQUEST_PERMISSIONS = "request_permissions";
    private boolean mAlreadyRequest;
    private final IFragmentMethod<?, ?> mFragmentMethod;
    private boolean mManualDetach;
    private boolean mNonSystemRestartMark;
    private OnPermissionFragmentCallback mPermissionFragmentCallback;
    private final Object mTaskToken = new Object();

    public PermissionChannelImpl(IFragmentMethod<?, ?> iFragmentMethod) {
        this.mFragmentMethod = iFragmentMethod;
    }

    private void commitFragmentDetach() {
        this.mManualDetach = true;
        this.mFragmentMethod.commitFragmentDetach();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.app.Activity] */
    private Activity getActivity() {
        return this.mFragmentMethod.getActivity();
    }

    private OnPermissionFragmentCallback getPermissionFragmentCallback() {
        return this.mPermissionFragmentCallback;
    }

    private boolean isFragmentUnavailable() {
        return !this.mFragmentMethod.isAdded() || this.mFragmentMethod.isRemoving();
    }

    public void cancelTask() {
        PermissionTaskHandler.cancelTask(this.mTaskToken);
    }

    public int getPermissionRequestCode() {
        Bundle arguments = this.mFragmentMethod.getArguments();
        if (arguments == null) {
            return 0;
        }
        return arguments.getInt(REQUEST_CODE);
    }

    public List<IPermission> getPermissionRequestList() {
        Bundle arguments = this.mFragmentMethod.getArguments();
        if (arguments == null) {
            return null;
        }
        return PermissionVersion.isAndroid13() ? arguments.getParcelableArrayList(REQUEST_PERMISSIONS, IPermission.class) : arguments.getParcelableArrayList(REQUEST_PERMISSIONS);
    }

    public IStartActivityDelegate getStartActivityDelegate() {
        return this.mFragmentMethod;
    }

    public void handlerPermissionCallback() {
        if (isFragmentUnavailable() || PermissionUtils.isActivityUnavailable(getActivity())) {
            return;
        }
        OnPermissionFragmentCallback permissionFragmentCallback = getPermissionFragmentCallback();
        setPermissionFragmentCallback(null);
        if (permissionFragmentCallback != null) {
            permissionFragmentCallback.onRequestPermissionFinish();
        }
        commitFragmentDetach();
    }

    public void notificationPermissionCallback() {
        if (PermissionUtils.isActivityUnavailable(getActivity())) {
            return;
        }
        cancelTask();
        sendTask(new h(11, this), PermissionApi.getMaxWaitTimeByPermissions(r0, getPermissionRequestList()));
    }

    @Override // com.hjq.permissions.fragment.IFragmentCallback
    public /* synthetic */ void onFragmentActivityResult(int i10, int i11, Intent intent) {
        p8.a.a(this, i10, i11, intent);
    }

    @Override // com.hjq.permissions.fragment.IFragmentCallback
    public void onFragmentDestroy() {
        cancelTask();
        OnPermissionFragmentCallback permissionFragmentCallback = getPermissionFragmentCallback();
        if (permissionFragmentCallback != null) {
            permissionFragmentCallback.onRequestPermissionAnomaly();
            setPermissionFragmentCallback(null);
        }
        if (this.mManualDetach) {
            return;
        }
        Activity activity = getActivity();
        if (PermissionUtils.isActivityUnavailable(activity)) {
            return;
        }
        ActivityOrientationManager.unlockActivityOrientation(activity);
    }

    @Override // com.hjq.permissions.fragment.IFragmentCallback
    public /* synthetic */ void onFragmentRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        p8.a.b(this, i10, strArr, iArr);
    }

    @Override // com.hjq.permissions.fragment.IFragmentCallback
    public void onFragmentResume() {
        int permissionRequestCode;
        List<IPermission> permissionRequestList;
        if (!this.mNonSystemRestartMark) {
            this.mFragmentMethod.commitFragmentDetach();
            return;
        }
        if (this.mAlreadyRequest) {
            return;
        }
        this.mAlreadyRequest = true;
        Activity activity = getActivity();
        if (PermissionUtils.isActivityUnavailable(activity) || (permissionRequestCode = getPermissionRequestCode()) <= 0 || (permissionRequestList = getPermissionRequestList()) == null || permissionRequestList.isEmpty()) {
            return;
        }
        startPermissionRequest(activity, permissionRequestList, permissionRequestCode);
        OnPermissionFragmentCallback permissionFragmentCallback = getPermissionFragmentCallback();
        if (permissionFragmentCallback == null) {
            return;
        }
        permissionFragmentCallback.onRequestPermissionNow();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [android.app.Activity] */
    public void requestPermissions(String[] strArr, int i10) {
        try {
            this.mFragmentMethod.requestPermissions(strArr, i10);
        } catch (Exception e7) {
            e7.printStackTrace();
            ?? activity = this.mFragmentMethod.getActivity();
            if ((activity instanceof j0) || PermissionUtils.isActivityUnavailable(activity)) {
                return;
            }
            try {
                activity.requestPermissions(strArr, i10);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void sendTask(Runnable runnable, long j10) {
        PermissionTaskHandler.sendTask(runnable, this.mTaskToken, j10);
    }

    public void setNonSystemRestartMark(boolean z) {
        this.mNonSystemRestartMark = z;
    }

    public void setPermissionFragmentCallback(OnPermissionFragmentCallback onPermissionFragmentCallback) {
        this.mPermissionFragmentCallback = onPermissionFragmentCallback;
    }

    public abstract void startPermissionRequest(Activity activity, List<IPermission> list, int i10);
}
