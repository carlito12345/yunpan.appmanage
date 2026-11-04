package rikka.shizuku;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import com.yunpan.appmanage.base.AppStart;
import hi.b;
import hi.d;
import ii.a;
import moe.shizuku.api.BinderContainer;

/* loaded from: classes.dex */
public class ShizukuProvider extends ContentProvider {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f13823a = false;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f13824b = false;

    public static void a(boolean z) {
        f13824b = z;
        f13823a = true;
    }

    public static void b(AppStart appStart) {
        IBinder iBinder;
        if (f13824b) {
            return;
        }
        d dVar = new d(0);
        if (Build.VERSION.SDK_INT >= 33) {
            appStart.registerReceiver(dVar, new IntentFilter("moe.shizuku.api.action.BINDER_RECEIVED"), 4);
        } else {
            appStart.registerReceiver(dVar, new IntentFilter("moe.shizuku.api.action.BINDER_RECEIVED"));
        }
        Bundle bundleCall = null;
        try {
            bundleCall = appStart.getContentResolver().call(Uri.parse("content://" + appStart.getPackageName() + ".shizuku"), "getBinder", (String) null, new Bundle());
        } catch (Throwable unused) {
        }
        if (bundleCall != null) {
            bundleCall.setClassLoader(BinderContainer.class.getClassLoader());
            BinderContainer binderContainer = (BinderContainer) bundleCall.getParcelable("moe.shizuku.privileged.api.intent.extra.BINDER");
            if (binderContainer == null || (iBinder = binderContainer.f11239a) == null) {
                return;
            }
            b.g(iBinder, appStart.getPackageName());
        }
    }

    @Override // android.content.ContentProvider
    public final void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.multiprocess) {
            throw new IllegalStateException("android:multiprocess must be false");
        }
        if (!providerInfo.exported) {
            throw new IllegalStateException("android:exported must be true");
        }
        f13824b = true;
    }

    @Override // android.content.ContentProvider
    public final Bundle call(String str, String str2, Bundle bundle) {
        BinderContainer binderContainer;
        IBinder iBinder;
        if (a.f8693a) {
            return new Bundle();
        }
        if (bundle == null) {
            return null;
        }
        bundle.setClassLoader(BinderContainer.class.getClassLoader());
        Bundle bundle2 = new Bundle();
        str.getClass();
        if (str.equals("sendBinder")) {
            IBinder iBinder2 = b.f8208a;
            if ((iBinder2 == null || !iBinder2.pingBinder()) && (binderContainer = (BinderContainer) bundle.getParcelable("moe.shizuku.privileged.api.intent.extra.BINDER")) != null && (iBinder = binderContainer.f11239a) != null) {
                b.g(iBinder, getContext().getPackageName());
                if (f13823a) {
                    getContext().sendBroadcast(new Intent("moe.shizuku.api.action.BINDER_RECEIVED").putExtra("moe.shizuku.privileged.api.intent.extra.BINDER", binderContainer).setPackage(getContext().getPackageName()));
                }
            }
        } else if (str.equals("getBinder")) {
            IBinder iBinder3 = b.f8208a;
            if (iBinder3 == null || !iBinder3.pingBinder()) {
                return null;
            }
            bundle2.putParcelable("moe.shizuku.privileged.api.intent.extra.BINDER", new BinderContainer(iBinder3));
        }
        return bundle2;
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        if (a.f8693a) {
            return true;
        }
        a.a(getContext().getPackageName());
        return true;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
