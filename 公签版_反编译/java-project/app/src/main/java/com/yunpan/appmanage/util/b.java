package com.yunpan.appmanage.util;

import android.content.pm.IPackageStatsObserver;
import android.content.pm.PackageStats;

/* loaded from: classes.dex */
public final class b extends IPackageStatsObserver.Stub {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ x9.y f3997e;

    public b(x9.y yVar) {
        this.f3997e = yVar;
    }

    @Override // android.content.pm.IPackageStatsObserver
    public final void onGetStatsCompleted(PackageStats packageStats, boolean z) {
        if (!z || packageStats == null) {
            return;
        }
        long j10 = packageStats.codeSize;
        long j11 = packageStats.dataSize;
        long j12 = packageStats.cacheSize;
        x9.y yVar = this.f3997e;
        yVar.f18395c = j10;
        yVar.f18396d = j11;
        yVar.f18397e = j12;
        yVar.f18394b = j10 + j11 + j12;
    }
}
