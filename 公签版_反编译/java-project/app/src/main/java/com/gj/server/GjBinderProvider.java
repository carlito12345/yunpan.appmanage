package com.gj.server;

import android.annotation.SuppressLint;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import com.yunpan.appmanage.shizuku.IGjAdbFace;

/* loaded from: classes.dex */
public class GjBinderProvider extends ContentProvider {
    private static final String TAG = "GjBinderProvider";

    @SuppressLint({"RestrictedApi"})
    private boolean handleGetBinder(Bundle bundle) {
        IBinder iBinder = fa.a.f5646a.f5650a;
        if (iBinder == null || !iBinder.pingBinder()) {
            return false;
        }
        bundle.putParcelable("binder", new BinderWrapper(iBinder));
        return true;
    }

    private void handleSendBinder(Bundle bundle, Bundle bundle2) {
        IBinder iBinder;
        BinderWrapper binderWrapper = (BinderWrapper) bundle.getParcelable("binder");
        if (binderWrapper == null || (iBinder = binderWrapper.binder) == null) {
            return;
        }
        fa.b bVar = fa.a.f5646a;
        bVar.f5650a = iBinder;
        bVar.f5651b = IGjAdbFace.Stub.asInterface(iBinder);
        bundle2.putParcelable("binder", new BinderWrapper(binderWrapper.binder));
    }

    @Override // android.content.ContentProvider
    public Bundle call(String str, String str2, Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        bundle.setClassLoader(BinderWrapper.class.getClassLoader());
        Bundle bundle2 = new Bundle();
        str.getClass();
        if (str.equals("sendBinder")) {
            handleSendBinder(bundle, bundle2);
        } else if (str.equals("getBinder") && !handleGetBinder(bundle2)) {
            return null;
        }
        return bundle2;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
