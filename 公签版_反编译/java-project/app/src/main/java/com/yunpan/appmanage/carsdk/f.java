package com.yunpan.appmanage.carsdk;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.ui.ActivityNissan;
import com.yunpan.appmanage.ui.ActivityStudy;
import com.yunpan.appmanage.ui.ActivityTextIflytek;
import java.io.PrintStream;
import ua.n7;
import ua.x4;

/* loaded from: classes.dex */
public final class f implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3802a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3803b;

    public /* synthetic */ f(int i10, Object obj) {
        this.f3802a = i10;
        this.f3803b = obj;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) throws RemoteException {
        IInterface bVar;
        c5.c aVar = null;
        x8.c aVar2 = null;
        int i10 = 0;
        int i11 = 1;
        switch (this.f3802a) {
            case 0:
                int i12 = c5.b.f2873e;
                if (iBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.baidu.naviauto.imaplbs.IMapAutoAPIService");
                    aVar = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c5.c)) ? new c5.a(iBinder) : (c5.c) iInterfaceQueryLocalInterface;
                }
                i iVar = (i) this.f3803b;
                iVar.f3835a = aVar;
                iVar.f3836b = true;
                PrintStream printStream = System.out;
                printStream.getClass();
                try {
                    iVar.f3838d = ((c5.a) iVar.f3835a).h("on_sync_connect_state");
                    printStream.getClass();
                    return;
                } catch (RemoteException e7) {
                    e7.printStackTrace();
                    return;
                }
            case 1:
                ((r) this.f3803b).f3869d.post(new q(this, i10));
                return;
            case 2:
                ((Handler) ((k0) this.f3803b).f3849e).post(new i0(this, i11));
                return;
            case 3:
                try {
                    ((fa.e) this.f3803b).f5667f = oa.e.h(iBinder);
                    return;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            case 4:
                StringBuilder sb2 = new StringBuilder("service=");
                l6.d dVar = (l6.d) this.f3803b;
                sb2.append(dVar.f10638c.f10670g.name());
                p000if.a.o0(sb2.toString());
                try {
                    iBinder.linkToDeath(dVar.f10641f, 0);
                    int i13 = j6.b.f9769e;
                    IInterface iInterfaceQueryLocalInterface2 = iBinder.queryLocalInterface("com.desaysv.ivi.vdb.IVDBus");
                    dVar.f10640e = (iInterfaceQueryLocalInterface2 == null || !(iInterfaceQueryLocalInterface2 instanceof j6.c)) ? new j6.a(iBinder) : (j6.c) iInterfaceQueryLocalInterface2;
                    p000if.a.o0("bind success! service=" + dVar.f10638c.f10670g.name());
                    dVar.f();
                    dVar.d();
                    return;
                } catch (Exception e11) {
                    p000if.a.n0(e11.getMessage());
                    e11.printStackTrace();
                    return;
                }
            case 5:
                ActivityNissan activityNissan = (ActivityNissan) this.f3803b;
                int i14 = p9.c.f12618e;
                if (iBinder == null) {
                    bVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface3 = iBinder.queryLocalInterface("com.szlanyou.otaupdate.aidl.IRemoteOTAUpdate");
                    bVar = (iInterfaceQueryLocalInterface3 == null || !(iInterfaceQueryLocalInterface3 instanceof p9.d)) ? new p9.b(iBinder) : (p9.d) iInterfaceQueryLocalInterface3;
                }
                try {
                    x4 x4Var = activityNissan.H;
                    p9.b bVar2 = (p9.b) bVar;
                    bVar2.getClass();
                    Parcel parcelObtain = Parcel.obtain();
                    Parcel parcelObtain2 = Parcel.obtain();
                    try {
                        parcelObtain.writeInterfaceToken("com.szlanyou.otaupdate.aidl.IRemoteOTAUpdate");
                        if (x4Var == null) {
                            x4Var = null;
                        }
                        parcelObtain.writeStrongBinder(x4Var);
                        bVar2.f12617e.transact(1, parcelObtain, parcelObtain2, 0);
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        Parcel parcelObtain3 = Parcel.obtain();
                        Parcel parcelObtain4 = Parcel.obtain();
                        try {
                            try {
                                parcelObtain3.writeInterfaceToken("com.szlanyou.otaupdate.aidl.IRemoteOTAUpdate");
                                bVar2.f12617e.transact(4, parcelObtain3, parcelObtain4, 0);
                                parcelObtain4.readException();
                                parcelObtain4.recycle();
                                parcelObtain3.recycle();
                                return;
                            } finally {
                            }
                        } catch (Exception unused) {
                        }
                    } finally {
                    }
                } catch (Exception unused2) {
                    x4 x4Var2 = activityNissan.H;
                    p9.b bVar3 = (p9.b) bVar;
                    bVar3.getClass();
                    Parcel parcelObtain5 = Parcel.obtain();
                    Parcel parcelObtain6 = Parcel.obtain();
                    try {
                        parcelObtain5.writeInterfaceToken("com.szlanyou.otaupdate.aidl.IRemoteOTAUpdate");
                        parcelObtain5.writeStrongBinder(x4Var2 != null ? x4Var2 : null);
                        bVar3.f12617e.transact(2, parcelObtain5, parcelObtain6, 0);
                        parcelObtain6.readException();
                        parcelObtain6.recycle();
                        parcelObtain5.recycle();
                        com.yunpan.appmanage.util.a0.u("绑定服务失败");
                        return;
                    } finally {
                    }
                }
                break;
            case 6:
                oa.d dVarH = oa.e.h(iBinder);
                ActivityStudy activityStudy = (ActivityStudy) this.f3803b;
                activityStudy.G = dVarH;
                try {
                    v9.a aVar3 = new v9.a();
                    aVar3.f16681b = 1;
                    v9.i iVarB = aVar3.b(new oa.g(activityStudy.G.f()));
                    activityStudy.F = iVarB;
                    if (iVarB.f16702c < 1) {
                        com.yunpan.appmanage.util.a0.u("无法获取root权限");
                        return;
                    } else {
                        try {
                            activityStudy.G.e();
                        } catch (Exception unused3) {
                        }
                        com.yunpan.appmanage.util.a0.w("可以获取root权限");
                        return;
                    }
                } catch (RemoteException unused4) {
                    com.yunpan.appmanage.util.a0.u("失败：不适合您的系统");
                    return;
                }
            default:
                int i15 = x8.b.f18192e;
                if (iBinder != null) {
                    IInterface iInterfaceQueryLocalInterface4 = iBinder.queryLocalInterface("com.iflytek.autofly.voicecore.aidl.IEventBus");
                    aVar2 = (iInterfaceQueryLocalInterface4 == null || !(iInterfaceQueryLocalInterface4 instanceof x8.c)) ? new x8.a(iBinder) : (x8.c) iInterfaceQueryLocalInterface4;
                }
                ActivityTextIflytek activityTextIflytek = (ActivityTextIflytek) this.f3803b;
                activityTextIflytek.F = aVar2;
                Toaster.show((CharSequence) "连接成功");
                try {
                    ((x8.a) activityTextIflytek.F).k(activityTextIflytek.H);
                } catch (Exception e12) {
                    g.b.s(e12, new StringBuilder("无法绑定："));
                }
                try {
                    ((x8.a) activityTextIflytek.F).j(new n7(this, 0));
                } catch (Exception e13) {
                    g.b.s(e13, new StringBuilder("无法绑定："));
                }
                try {
                    ((x8.a) activityTextIflytek.F).h(new n7(this, 1));
                } catch (Exception e14) {
                    g.b.s(e14, new StringBuilder("无法绑定："));
                }
                new h(2);
                return;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        switch (this.f3802a) {
            case 0:
                i iVar = (i) this.f3803b;
                iVar.f3835a = null;
                iVar.f3836b = false;
                System.out.getClass();
                break;
            case 1:
                ((r) this.f3803b).f3869d.post(new q(this, 1));
                break;
            case 2:
                k0 k0Var = (k0) this.f3803b;
                if (!k0Var.f3845a) {
                    ((Handler) k0Var.f3849e).post(new i0(this, 0));
                    break;
                }
                break;
            case 3:
                break;
            case 4:
                StringBuilder sb2 = new StringBuilder("service=");
                l6.d dVar = (l6.d) this.f3803b;
                sb2.append(dVar.f10638c.f10670g.name());
                p000if.a.o0(sb2.toString());
                dVar.f10640e = null;
                break;
            case 5:
                break;
            case 6:
                com.yunpan.appmanage.util.a0.u("root服务已关闭");
                ((ActivityStudy) this.f3803b).G = null;
                break;
            default:
                ((ActivityTextIflytek) this.f3803b).F = null;
                break;
        }
    }

    private final void a(ComponentName componentName) {
    }

    private final void b(ComponentName componentName) {
    }
}
