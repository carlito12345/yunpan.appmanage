package com.yunpan.appmanage.carsdk;

import com.autolink.app.vehiclemanager.data.VehiclePropertyKey;
import com.autolink.app.vehicleservice.IVehicleControlCallback;
import ua.c3;

/* loaded from: classes.dex */
public final class e0 extends IVehicleControlCallback.Stub {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ h0 f3801e;

    public e0(h0 h0Var) {
        this.f3801e = h0Var;
    }

    @Override // com.autolink.app.vehicleservice.IVehicleControlCallback
    public final void onOnlySyncFloatData(int i10, float f10) {
        c3 c3Var = this.f3801e.f3820i;
        if (c3Var != null) {
            c3Var.onOnlySyncFloatData(i10, f10);
        }
    }

    @Override // com.autolink.app.vehicleservice.IVehicleControlCallback
    public final void onOnlySyncIntData(int i10, int i11) {
        c3 c3Var = this.f3801e.f3820i;
        if (c3Var != null) {
            c3Var.onOnlySyncIntData(i10, i11);
        }
    }

    @Override // com.autolink.app.vehicleservice.IVehicleControlCallback
    public final void onReceiveFloat(int i10, float f10, boolean z) {
        c3 c3Var = this.f3801e.f3820i;
        if (c3Var != null) {
            c3Var.onReceiveFloat(i10, f10, z);
        }
    }

    @Override // com.autolink.app.vehicleservice.IVehicleControlCallback
    public final void onReceiveInt(int i10, int i11, boolean z) {
        z7.s sVar;
        h0 h0Var = this.f3801e;
        c3 c3Var = h0Var.f3820i;
        if (c3Var != null) {
            c3Var.onReceiveInt(i10, i11, z);
        }
        if (h0Var.G == null) {
            return;
        }
        try {
            if (i10 == VehiclePropertyKey.KeyAvmPosition.getValue()) {
                z7.s sVar2 = (z7.s) h0Var.I.get(Integer.valueOf(i11));
                if (sVar2 == null) {
                    return;
                }
                h0Var.G.b(sVar2.p("click"));
                return;
            }
            if (i10 != VehiclePropertyKey.KeyHvacEngineSpeed.getValue() && i10 != VehiclePropertyKey.KeyVehiclePropertySpeed.getValue()) {
                VehiclePropertyKey vehiclePropertyKey = VehiclePropertyKey.KeyVehiclePropertyDriverDoor;
                if (i10 != vehiclePropertyKey.getValue() && i10 != VehiclePropertyKey.KeyVehiclePropertyPassengerDoor.getValue() && i10 != VehiclePropertyKey.KeyVehiclePropertyRhRDoor.getValue() && i10 != VehiclePropertyKey.KeyVehiclePropertyLhRDoor.getValue() && i10 != VehiclePropertyKey.KeyVehiclePropertyTrunkCem2.getValue()) {
                    if (i10 == VehiclePropertyKey.KeyVehiclePropertyLowBeam.getValue() || i10 == VehiclePropertyKey.KeyVehiclePropertyLhTurnLight.getValue() || i10 == VehiclePropertyKey.KeyVehiclePropertyRhTurnLight.getValue()) {
                        z7.s sVar3 = i11 == 0 ? (z7.s) h0Var.L.get(Integer.valueOf(i10)) : (z7.s) h0Var.M.get(Integer.valueOf(i10));
                        if (sVar3 == null) {
                            return;
                        }
                        h0Var.G.b(sVar3.p("click"));
                        return;
                    }
                    return;
                }
                if (i11 == 0) {
                    sVar = (z7.s) h0Var.J.get(Integer.valueOf(i10));
                } else {
                    sVar = (z7.s) h0Var.K.get(Integer.valueOf(i10));
                    if (h0Var.N && h0Var.f3814c.getInt(vehiclePropertyKey.getValue()) + h0Var.f3814c.getInt(VehiclePropertyKey.KeyVehiclePropertyPassengerDoor.getValue()) + h0Var.f3814c.getInt(VehiclePropertyKey.KeyVehiclePropertyRhRDoor.getValue()) + h0Var.f3814c.getInt(VehiclePropertyKey.KeyVehiclePropertyLhRDoor.getValue()) == 1) {
                        h0Var.G.b(h0Var.O);
                    }
                }
                if (sVar == null) {
                    return;
                }
                h0Var.G.b(sVar.p("click"));
            }
        } catch (Exception unused) {
        }
    }
}
