package pa;

import wa.s;

/* loaded from: classes.dex */
public final class b extends f {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String[] f12626e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ e f12627f;

    public b(e eVar, String[] strArr) {
        this.f12627f = eVar;
        this.f12626e = strArr;
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onAccStateResponse(boolean z) {
        if (z) {
            s.c().i(10005);
        } else {
            s.c().i(10006);
        }
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onILLContStatusResponse(int i10) {
        if (i10 == 0) {
            s.c().i(10001);
        } else if (i10 == 1) {
            s.c().i(10000);
        }
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onIgnResponse(boolean z) {
        if (z) {
            s.c().i(10003);
        } else {
            s.c().i(10004);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x000b  */
    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onVehicleGearInfoResponse(int i10) {
        String str;
        if (i10 >= 0) {
            str = i10 < 8 ? this.f12626e[i10] : "未知";
        }
        e eVar = this.f12627f;
        eVar.f12637h = str;
        s.c().j(10007, eVar.f12637h);
        eVar.f12639j.removeCallbacks(eVar.f12640k);
        eVar.f12639j.postDelayed(eVar.f12640k, 300L);
        eVar.f12639j.removeCallbacks(eVar.l);
        if (eVar.f12638i == 0 && eVar.f12637h.equals("D")) {
            eVar.f12639j.postDelayed(eVar.l, 10000L);
        }
        eVar.f12639j.removeCallbacks(eVar.f12641m);
        if (eVar.f12638i == 0) {
            if (eVar.f12637h.equals("D") || eVar.f12637h.equals("R") || eVar.f12637h.equals("S") || eVar.f12637h.equals("L")) {
                eVar.f12639j.postDelayed(eVar.f12641m, 10000L);
            }
        }
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onVehicleSpeedInfoResponse(int i10) {
        e eVar = this.f12627f;
        int i11 = eVar.f12638i;
        if (i11 == 0 && i10 > 0) {
            eVar.f12639j.removeCallbacks(eVar.l);
            eVar.f12639j.removeCallbacks(eVar.f12641m);
            if (eVar.f12637h.equals("L")) {
                s.c().i(10010);
            }
        } else if (i10 == 0 && i11 > 0) {
            if (eVar.f12637h.equals("D")) {
                eVar.f12639j.removeCallbacks(eVar.l);
                eVar.f12639j.postDelayed(eVar.l, 10000L);
            }
            if (eVar.f12637h.equals("D") || eVar.f12637h.equals("R") || eVar.f12637h.equals("S") || eVar.f12637h.equals("L")) {
                eVar.f12639j.removeCallbacks(eVar.f12641m);
                eVar.f12639j.postDelayed(eVar.f12641m, 10000L);
            }
        }
        eVar.f12638i = i10;
    }
}
