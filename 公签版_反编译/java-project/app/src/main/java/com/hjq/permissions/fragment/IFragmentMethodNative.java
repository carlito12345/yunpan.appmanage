package com.hjq.permissions.fragment;

import android.app.Activity;
import android.os.Bundle;
import com.hjq.permissions.start.IStartActivityDelegate;

/* loaded from: classes.dex */
public interface IFragmentMethodNative<A extends Activity> extends IStartActivityDelegate {
    A getActivity();

    Bundle getArguments();

    boolean isAdded();

    boolean isRemoving();

    void requestPermissions(String[] strArr, int i10);

    void setArguments(Bundle bundle);
}
