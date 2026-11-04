package androidx.activity;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.fragment.app.j0;
import java.util.Arrays;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class g extends androidx.activity.result.g {

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ j0 f796h;

    public g(j0 j0Var) {
        this.f796h = j0Var;
    }

    @Override // androidx.activity.result.g
    public final void b(int i10, n.a aVar, Object obj) {
        Bundle bundle;
        j0 j0Var = this.f796h;
        kh.h hVarB = aVar.b(j0Var, obj);
        if (hVarB != null) {
            new Handler(Looper.getMainLooper()).post(new f(this, i10, hVarB, 0));
            return;
        }
        Intent intentA = aVar.a(j0Var, obj);
        if (intentA.getExtras() != null && intentA.getExtras().getClassLoader() == null) {
            intentA.setExtrasClassLoader(j0Var.getClassLoader());
        }
        if (intentA.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
            Bundle bundleExtra = intentA.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            intentA.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            bundle = bundleExtra;
        } else {
            bundle = null;
        }
        if (!"androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(intentA.getAction())) {
            if (!"androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(intentA.getAction())) {
                m0.a.b(j0Var, intentA, i10, bundle);
                return;
            }
            androidx.activity.result.i iVar = (androidx.activity.result.i) intentA.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
            try {
                m0.a.c(j0Var, iVar.f850a, i10, iVar.f851b, iVar.f852c, iVar.f853d, 0, bundle);
                return;
            } catch (IntentSender.SendIntentException e7) {
                new Handler(Looper.getMainLooper()).post(new f(this, i10, e7, 1));
                return;
            }
        }
        String[] stringArrayExtra = intentA.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
        if (stringArrayExtra == null) {
            stringArrayExtra = new String[0];
        }
        HashSet hashSet = new HashSet();
        for (int i11 = 0; i11 < stringArrayExtra.length; i11++) {
            if (TextUtils.isEmpty(stringArrayExtra[i11])) {
                throw new IllegalArgumentException(g.b.l(Arrays.toString(stringArrayExtra), " must not contain null or empty values", new StringBuilder("Permission request for permissions ")));
            }
            if (Build.VERSION.SDK_INT < 33 && TextUtils.equals(stringArrayExtra[i11], "android.permission.POST_NOTIFICATIONS")) {
                hashSet.add(Integer.valueOf(i11));
            }
        }
        int size = hashSet.size();
        String[] strArr = size > 0 ? new String[stringArrayExtra.length - size] : stringArrayExtra;
        if (size > 0) {
            if (size == stringArrayExtra.length) {
                return;
            }
            int i12 = 0;
            for (int i13 = 0; i13 < stringArrayExtra.length; i13++) {
                if (!hashSet.contains(Integer.valueOf(i13))) {
                    strArr[i12] = stringArrayExtra[i13];
                    i12++;
                }
            }
        }
        if (Build.VERSION.SDK_INT >= 23) {
            m0.b.b(j0Var, stringArrayExtra, i10);
        } else {
            new Handler(Looper.getMainLooper()).post(new f(strArr, j0Var, i10, 2));
        }
    }
}
