package androidx.fragment.app;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class y0 extends n.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1427a;

    public /* synthetic */ y0(int i10) {
        this.f1427a = i10;
    }

    @Override // n.a
    public final Intent a(j0 j0Var, Object obj) {
        Bundle bundleExtra;
        switch (this.f1427a) {
            case 0:
                androidx.activity.result.i iVar = (androidx.activity.result.i) obj;
                Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
                Intent intent2 = iVar.f851b;
                if (intent2 != null && (bundleExtra = intent2.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
                    intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                    intent2.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                    if (intent2.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                        IntentSender intentSender = iVar.f850a;
                        ue.d.e(intentSender, "intentSender");
                        iVar = new androidx.activity.result.i(intentSender, null, iVar.f852c, iVar.f853d);
                    }
                }
                intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", iVar);
                if (Log.isLoggable("FragmentManager", 2)) {
                    intent.toString();
                }
                return intent;
            case 1:
                String[] strArr = (String[]) obj;
                ue.d.e(strArr, "input");
                Intent intentPutExtra = new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr);
                ue.d.d(intentPutExtra, "Intent(ACTION_REQUEST_PE…EXTRA_PERMISSIONS, input)");
                return intentPutExtra;
            default:
                Intent intent3 = (Intent) obj;
                ue.d.e(intent3, "input");
                return intent3;
        }
    }

    @Override // n.a
    public kh.h b(j0 j0Var, Object obj) {
        switch (this.f1427a) {
            case 1:
                String[] strArr = (String[]) obj;
                ue.d.e(strArr, "input");
                if (strArr.length == 0) {
                    return new kh.h(je.s.f9871a);
                }
                for (String str : strArr) {
                    if (n0.g.a(j0Var, str) != 0) {
                        return null;
                    }
                }
                int iL0 = je.u.l0(strArr.length);
                if (iL0 < 16) {
                    iL0 = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(iL0);
                for (String str2 : strArr) {
                    linkedHashMap.put(str2, Boolean.TRUE);
                }
                return new kh.h(linkedHashMap);
            default:
                return super.b(j0Var, obj);
        }
    }

    @Override // n.a
    public final Object c(Intent intent, int i10) {
        switch (this.f1427a) {
            case 0:
                return new androidx.activity.result.a(intent, i10);
            case 1:
                je.s sVar = je.s.f9871a;
                if (i10 != -1 || intent == null) {
                    return sVar;
                }
                String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
                if (intArrayExtra == null || stringArrayExtra == null) {
                    return sVar;
                }
                ArrayList arrayList = new ArrayList(intArrayExtra.length);
                for (int i11 : intArrayExtra) {
                    arrayList.add(Boolean.valueOf(i11 == 0));
                }
                ArrayList arrayList2 = new ArrayList();
                for (String str : stringArrayExtra) {
                    if (str != null) {
                        arrayList2.add(str);
                    }
                }
                Iterator it = arrayList2.iterator();
                Iterator it2 = arrayList.iterator();
                ArrayList arrayList3 = new ArrayList(Math.min(arrayList2.size(), arrayList.size()));
                while (it.hasNext() && it2.hasNext()) {
                    arrayList3.add(new ie.b(it.next(), it2.next()));
                }
                return je.u.m0(arrayList3);
            default:
                return new androidx.activity.result.a(intent, i10);
        }
    }
}
