package com.yunpan.appmanage.carsdk;

import java.lang.reflect.Proxy;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class q implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3864a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f3865b;

    public /* synthetic */ q(f fVar, int i10) {
        this.f3864a = i10;
        this.f3865b = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3864a) {
            case 0:
                try {
                    r rVar = (r) this.f3865b.f3803b;
                    Object objR = r.r(rVar.f3871f, "getCarManager", "property");
                    if (objR == null) {
                        throw new IllegalStateException("getCarManager(property) returned null");
                    }
                    rVar.f3872g = objR;
                    r rVar2 = (r) this.f3865b.f3803b;
                    rVar2.getClass();
                    try {
                        r rVar3 = (r) this.f3865b.f3803b;
                        Object objR2 = r.r(rVar3.f3871f, "getCarManager", "power");
                        if (objR2 != null) {
                            rVar3.f3873h = objR2;
                        }
                    } catch (Throwable th2) {
                        rVar2.s("initCarPowerManager", th2);
                    }
                    r rVar4 = (r) this.f3865b.f3803b;
                    a1.i iVar = new a1.i(12, this);
                    rVar4.getClass();
                    try {
                        iVar.F();
                    } catch (Throwable th3) {
                        rVar4.s("registerHardKeys", th3);
                    }
                    r rVar5 = (r) this.f3865b.f3803b;
                    rVar5.getClass();
                    try {
                        r rVar6 = (r) this.f3865b.f3803b;
                        if (rVar6.f3876k == null) {
                            Class<?> cls = Class.forName("android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback");
                            rVar6.f3876k = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new n(rVar6, 12));
                        }
                        rVar6.t(289408001, rVar6.f3876k);
                    } catch (Throwable th4) {
                        rVar5.s("registerGear", th4);
                    }
                    r rVar7 = (r) this.f3865b.f3803b;
                    rVar7.getClass();
                    try {
                        r rVar8 = (r) this.f3865b.f3803b;
                        if (rVar8.l == null) {
                            Class<?> cls2 = Class.forName("android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback");
                            rVar8.l = Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new n(rVar8, 0));
                        }
                        Object objQ = rVar8.q(554766080);
                        if (objQ != null) {
                            Integer num = (Integer) r.r(objQ, "getPropertyId", new Object[0]);
                            int iIntValue = num.intValue();
                            rVar8.f3888y.put(num, 554766080);
                            rVar8.t(iIntValue, rVar8.l);
                        }
                    } catch (Throwable th5) {
                        rVar7.s("registerTrunkDoor", th5);
                    }
                    r rVar9 = (r) this.f3865b.f3803b;
                    rVar9.getClass();
                    try {
                        r rVar10 = (r) this.f3865b.f3803b;
                        if (rVar10.f3877m == null) {
                            Class<?> cls3 = Class.forName("android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback");
                            rVar10.f3877m = Proxy.newProxyInstance(cls3.getClassLoader(), new Class[]{cls3}, new n(rVar10, 1));
                        }
                        Object objQ2 = rVar10.q(537136640);
                        if (objQ2 != null) {
                            Integer num2 = (Integer) r.r(objQ2, "getPropertyId", new Object[0]);
                            int iIntValue2 = num2.intValue();
                            rVar10.z.put(num2, 537136640);
                            rVar10.t(iIntValue2, rVar10.f3877m);
                        }
                    } catch (Throwable th6) {
                        rVar9.s("registerHeadLamp", th6);
                    }
                    r rVar11 = (r) this.f3865b.f3803b;
                    rVar11.getClass();
                    try {
                        r rVar12 = (r) this.f3865b.f3803b;
                        if (rVar12.f3878n == null) {
                            Class<?> cls4 = Class.forName("android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback");
                            rVar12.f3878n = Proxy.newProxyInstance(cls4.getClassLoader(), new Class[]{cls4}, new n(rVar12, 2));
                        }
                        rVar12.t(289408008, rVar12.f3878n);
                    } catch (Throwable th7) {
                        rVar11.s("registerTurnSignal", th7);
                    }
                    r rVar13 = (r) this.f3865b.f3803b;
                    rVar13.getClass();
                    try {
                        r rVar14 = (r) this.f3865b.f3803b;
                        if (rVar14.f3879o == null) {
                            Class<?> cls5 = Class.forName("android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback");
                            rVar14.f3879o = Proxy.newProxyInstance(cls5.getClassLoader(), new Class[]{cls5}, new n(rVar14, 3));
                        }
                        rVar14.t(289408009, rVar14.f3879o);
                    } catch (Throwable th8) {
                        rVar13.s("registerIgnitionState", th8);
                    }
                    r rVar15 = (r) this.f3865b.f3803b;
                    rVar15.getClass();
                    try {
                        r rVar16 = (r) this.f3865b.f3803b;
                        if (rVar16.f3880p == null) {
                            Class<?> cls6 = Class.forName("android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback");
                            rVar16.f3880p = Proxy.newProxyInstance(cls6.getClassLoader(), new Class[]{cls6}, new n(rVar16, 4));
                        }
                        rVar16.t(371198722, rVar16.f3880p);
                    } catch (Throwable th9) {
                        rVar15.s("registerDoorLock", th9);
                    }
                    r rVar17 = (r) this.f3865b.f3803b;
                    rVar17.getClass();
                    try {
                        r rVar18 = (r) this.f3865b.f3803b;
                        if (rVar18.f3881q == null) {
                            Class<?> cls7 = Class.forName("android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback");
                            rVar18.f3881q = Proxy.newProxyInstance(cls7.getClassLoader(), new Class[]{cls7}, new n(rVar18, 5));
                        }
                        rVar18.t(291504647, rVar18.f3881q);
                    } catch (Throwable th10) {
                        rVar17.s("registerVehicleSpeed", th10);
                    }
                    r rVar19 = (r) this.f3865b.f3803b;
                    rVar19.getClass();
                    try {
                        r rVar20 = (r) this.f3865b.f3803b;
                        if (rVar20.r == null) {
                            Class<?> cls8 = Class.forName("android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback");
                            rVar20.r = Proxy.newProxyInstance(cls8.getClassLoader(), new Class[]{cls8}, new n(rVar20, 6));
                        }
                        rVar20.t(291504901, rVar20.r);
                    } catch (Throwable th11) {
                        rVar19.s("registerEngineRpm", th11);
                    }
                    r rVar21 = (r) this.f3865b.f3803b;
                    rVar21.getClass();
                    try {
                        r rVar22 = (r) this.f3865b.f3803b;
                        if (rVar22.f3882s == null) {
                            Class<?> cls9 = Class.forName("android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback");
                            rVar22.f3882s = Proxy.newProxyInstance(cls9.getClassLoader(), new Class[]{cls9}, new n(rVar22, 7));
                        }
                        rVar22.t(287310600, rVar22.f3882s);
                    } catch (Throwable th12) {
                        rVar21.s("registerFuelTankCap", th12);
                    }
                    r rVar23 = (r) this.f3865b.f3803b;
                    rVar23.getClass();
                    try {
                        r rVar24 = (r) this.f3865b.f3803b;
                        if (rVar24.f3883t == null) {
                            Class<?> cls10 = Class.forName("android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback");
                            rVar24.f3883t = Proxy.newProxyInstance(cls10.getClassLoader(), new Class[]{cls10}, new n(rVar24, 8));
                        }
                        rVar24.t(289475072, rVar24.f3883t);
                    } catch (Throwable th13) {
                        rVar23.s("registerApPowerStateReq", th13);
                    }
                    r rVar25 = (r) this.f3865b.f3803b;
                    rVar25.getClass();
                    try {
                        r rVar26 = (r) this.f3865b.f3803b;
                        if (rVar26.f3884u == null) {
                            Class<?> cls11 = Class.forName("android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback");
                            rVar26.f3884u = Proxy.newProxyInstance(cls11.getClassLoader(), new Class[]{cls11}, new n(rVar26, 9));
                        }
                        rVar26.t(289475073, rVar26.f3884u);
                    } catch (Throwable th14) {
                        rVar25.s("registerApPowerStateReport", th14);
                    }
                    r rVar27 = (r) this.f3865b.f3803b;
                    rVar27.getClass();
                    try {
                        r rVar28 = (r) this.f3865b.f3803b;
                        if (rVar28.f3873h == null) {
                            return;
                        }
                        if (rVar28.f3885v == null) {
                            Class<?> cls12 = Class.forName("android.car.hardware.power.CarPowerManager$CarPowerStateListener");
                            rVar28.f3885v = Proxy.newProxyInstance(cls12.getClassLoader(), new Class[]{cls12}, new n(rVar28, 10));
                        }
                        rVar28.f3873h.getClass().getMethod("setListener", Class.forName("android.car.hardware.power.CarPowerManager$CarPowerStateListener"), Executor.class).invoke(rVar28.f3873h, rVar28.f3885v, rVar28.f3886w);
                        return;
                    } catch (Throwable th15) {
                        rVar27.s("registerCarPowerManagerListener", th15);
                        return;
                    }
                } catch (Throwable th16) {
                    ((r) this.f3865b.f3803b).s("initCarPropertyManager", th16);
                    return;
                }
            default:
                ((r) this.f3865b.f3803b).f3872g = null;
                ((r) this.f3865b.f3803b).f3873h = null;
                ((r) this.f3865b.f3803b).f3875j = null;
                ((r) this.f3865b.f3803b).f3876k = null;
                ((r) this.f3865b.f3803b).l = null;
                ((r) this.f3865b.f3803b).f3877m = null;
                ((r) this.f3865b.f3803b).f3878n = null;
                ((r) this.f3865b.f3803b).f3879o = null;
                ((r) this.f3865b.f3803b).f3880p = null;
                ((r) this.f3865b.f3803b).f3881q = null;
                ((r) this.f3865b.f3803b).r = null;
                ((r) this.f3865b.f3803b).f3882s = null;
                ((r) this.f3865b.f3803b).f3883t = null;
                ((r) this.f3865b.f3803b).f3884u = null;
                ((r) this.f3865b.f3803b).f3885v = null;
                ((r) this.f3865b.f3803b).A.clear();
                if (((r) this.f3865b.f3803b).f3870e) {
                    try {
                        ((r) this.f3865b.f3803b).f3871f = null;
                        r.a((r) this.f3865b.f3803b);
                        return;
                    } catch (Throwable th17) {
                        ((r) this.f3865b.f3803b).s("reconnect", th17);
                        return;
                    }
                }
                return;
        }
    }
}
