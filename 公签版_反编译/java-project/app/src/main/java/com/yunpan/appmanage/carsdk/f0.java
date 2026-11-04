package com.yunpan.appmanage.carsdk;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.autolink.app.vehiclemanager.data.VehiclePropertyKey;
import com.autolink.app.vehicleservice.IVehicleControl;

/* loaded from: classes.dex */
public final class f0 implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h0 f3804a;

    public f0(h0 h0Var) {
        this.f3804a = h0Var;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        h0 h0Var = this.f3804a;
        try {
            h0Var.f3814c = IVehicleControl.Stub.asInterface(iBinder);
            h0Var.f3814c.registerCallback(h0Var.D, new int[]{VehiclePropertyKey.KeyAvmPosition.getValue(), VehiclePropertyKey.KeyVehiclePropertyDriverDoor.getValue(), VehiclePropertyKey.KeyVehiclePropertyPassengerDoor.getValue(), VehiclePropertyKey.KeyVehiclePropertyRhRDoor.getValue(), VehiclePropertyKey.KeyVehiclePropertyLhRDoor.getValue(), VehiclePropertyKey.KeyVehiclePropertyTrunkCem2.getValue(), VehiclePropertyKey.KeyVehiclePropertyLhTurnLight.getValue(), VehiclePropertyKey.KeyVehiclePropertyRhTurnLight.getValue(), VehiclePropertyKey.KeyVehiclePropertyParkTailLight.getValue(), VehiclePropertyKey.KeyVehiclePropertyLowBeam.getValue(), VehiclePropertyKey.KeyVehiclePropertyHighBeam.getValue(), VehiclePropertyKey.KeyVehiclePropertyBrake.getValue(), VehiclePropertyKey.KeyVehiclePropertyKeySts.getValue(), VehiclePropertyKey.KeyVehiclePropertyEngineSts.getValue()});
        } catch (RemoteException unused) {
            h0Var.getClass();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        h0 h0Var = this.f3804a;
        h0Var.f3814c = null;
        h0Var.getClass();
    }
}
