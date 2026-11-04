package com.hjq.permissions.fragment;

import android.content.Intent;

/* loaded from: classes.dex */
public interface IFragmentCallback {
    void onFragmentActivityResult(int i10, int i11, Intent intent);

    void onFragmentDestroy();

    void onFragmentRequestPermissionsResult(int i10, String[] strArr, int[] iArr);

    void onFragmentResume();
}
