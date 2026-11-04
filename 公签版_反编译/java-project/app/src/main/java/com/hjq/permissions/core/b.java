package com.hjq.permissions.core;

import com.hjq.permissions.fragment.factory.PermissionFragmentFactory;
import com.hjq.permissions.permission.PermissionChannel;
import java.util.List;
import ua.o7;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3754a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3755b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3756c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f3757d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f3758e;

    public /* synthetic */ b(Object obj, Object obj2, Object obj3, Object obj4, int i10) {
        this.f3754a = i10;
        this.f3755b = obj;
        this.f3756c = obj2;
        this.f3757d = obj3;
        this.f3758e = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3754a) {
            case 0:
                ((PermissionFragmentFactory) this.f3755b).createAndCommitFragment((List) this.f3756c, (PermissionChannel) this.f3757d, (PermissionDescriptionLogic) this.f3758e);
                break;
            default:
                ((o7) this.f3755b).f15868e.C.setText(((String) this.f3756c) + " , " + ((String) this.f3757d) + " , " + ((String) this.f3758e));
                break;
        }
    }
}
