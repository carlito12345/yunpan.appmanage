package androidx.emoji2.text;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import java.util.List;

/* loaded from: classes.dex */
public class d extends gf.g {
    public d() {
        super(3);
    }

    @Override // gf.g
    public final ProviderInfo A(ResolveInfo resolveInfo) {
        return resolveInfo.providerInfo;
    }

    @Override // gf.g
    public final List D(PackageManager packageManager, Intent intent) {
        return packageManager.queryIntentContentProviders(intent, 0);
    }
}
