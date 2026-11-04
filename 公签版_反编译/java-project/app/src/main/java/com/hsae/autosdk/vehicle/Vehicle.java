package com.hsae.autosdk.vehicle;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import com.hsae.autosdk.util.LogUtil;
import com.hsae.autosdk.vehicle.IVehicle;
import com.hsae.autosdk.vehicle.IVehicleCallback;
import com.hsae.autosdk.vehicle.VehicleConst;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import ta.q;

/* loaded from: classes.dex */
public class Vehicle {
    private static Vehicle mInstance;
    private String mKey;
    private String mPackageName;
    private VehicleCallbackStub mVehicleCallback;
    private final String TAG = "Vehicle";
    private ArrayList<VehicleListener> mVehicleObservers = new ArrayList<>();
    private ArrayList<VehicleIllListener> mVehicleIllListeners = new ArrayList<>();
    private CopyOnWriteArrayList<VehicleScreenListener> mVehicleScreenListeners = new CopyOnWriteArrayList<>();
    private ArrayList<VehicleStateListener> mVehicleStateObservers = new ArrayList<>();
    private IVehicle mVehicleStub = IVehicle.Stub.asInterface(ServiceManager.getService(VehicleConst.IBINDER_VEHICLE));

    public class VehicleCallbackStub extends IVehicleCallback.Stub {
        public /* synthetic */ VehicleCallbackStub(Vehicle vehicle, int i10) {
            this();
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void keyLeaveCarRemind(boolean z) {
            LogUtil.m10i(Vehicle.this.TAG, "keyLeaveCarRemind  key : " + z);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).keyLeaveCarRemind(z);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onABSFaultResponse(int i10) {
            LogUtil.m10i(Vehicle.this.TAG, "onABSFaultResponse  state : " + i10);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onABSFaultResponse(i10);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onAccStateResponse(boolean z) {
            LogUtil.m10i(Vehicle.this.TAG, "onAccStateResponse  on : " + z);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onAccStateResponse(z);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onAverageFuelConsumptionResponse(float f10) {
            LogUtil.m10i(Vehicle.this.TAG, "onAverageFuelConsumptionResponse  value : " + f10);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onAverageFuelConsumptionResponse(f10);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onBatteryPowerResponse(int i10) {
            LogUtil.m10i(Vehicle.this.TAG, "onBatteryPowerResponse  percent : " + i10);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onBatteryPowerResponse(i10);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onBrakeForceResponse(int i10) {
            LogUtil.m10i(Vehicle.this.TAG, "onBrakeForceResponse  value : " + i10);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onBrakeForceResponse(i10);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onDetectedEngineResponse(int i10) {
            LogUtil.m10i(Vehicle.this.TAG, "onDetectedEngineResponse  state : " + i10);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onDetectedEngineResponse(i10);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onDoorResponse(boolean z, boolean z4, boolean z10, boolean z11, boolean z12) {
            LogUtil.m10i(Vehicle.this.TAG, "onDoorResponse  frontLeft : " + z + " frontRight : " + z4 + " rearLeft : " + z10 + " rearRight : " + z11 + " back : " + z12);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onDoorResponse(z, z4, z10, z11, z12);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onEPSDetectionResponse(int i10) {
            LogUtil.m10i(Vehicle.this.TAG, "onEPSDetectionResponse  state : " + i10);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onEPSDetectionResponse(i10);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onEQPinData(byte b10, byte b11, byte b12, byte b13) {
            String str = Vehicle.this.TAG;
            StringBuilder sbO = q.o(b10, b11, "onEQPinData  data1 : ", " data2 : ", "  data3 : ");
            sbO.append((int) b12);
            sbO.append(" data4 : ");
            sbO.append((int) b13);
            LogUtil.m10i(str, sbO.toString());
            Iterator it = Vehicle.this.mVehicleIllListeners.iterator();
            while (it.hasNext()) {
                ((VehicleIllListener) it.next()).onEQPinData(b10, b11, b12, b13);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onEngineRotatingSpeedResponse(float f10) {
            LogUtil.m10i(Vehicle.this.TAG, "onEngineRotatingSpeedResponse  value : " + f10);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onEngineRotatingSpeedResponse(f10);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onHydraulicOilDetectedResponse(int i10) {
            LogUtil.m10i(Vehicle.this.TAG, "onHydraulicOilDetectedResponse  state : " + i10);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onHydraulicOilDetectedResponse(i10);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onILLContStatusResponse(int i10) {
            LogUtil.m10i(Vehicle.this.TAG, "onILLContStatusResponse  status : " + i10);
            Iterator it = Vehicle.this.mVehicleIllListeners.iterator();
            while (it.hasNext()) {
                ((VehicleIllListener) it.next()).onILLContStatusResponse(i10);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onIgnResponse(boolean z) {
            LogUtil.m10i(Vehicle.this.TAG, "onIgnResponse  ign : " + z);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onIgnResponse(z);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onIllStateResponse(boolean z, boolean z4, boolean z10, boolean z11) {
            LogUtil.m10i(Vehicle.this.TAG, "onIllStateResponse  beamLight : " + z + " highBeam : " + z4 + " rearLight : " + z10 + " frontFogLamps : " + z11);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onIllStateResponse(z, z4, z10, z11);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onLaneWarningSensorInfoResponse(int i10) {
            LogUtil.m10i(Vehicle.this.TAG, "onLaneWarningSensorInfoResponse  state : " + i10);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onLaneWarningSensorInfoResponse(i10);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onMROutPutStatusResponse(int i10) {
            LogUtil.m10i(Vehicle.this.TAG, "onMROutPutStatusResponse  status : " + i10);
            Iterator it = Vehicle.this.mVehicleIllListeners.iterator();
            while (it.hasNext()) {
                ((VehicleIllListener) it.next()).onMROutPutStatusResponse(i10);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onMeterSpeedChanged(float f10) {
            LogUtil.m10i(Vehicle.this.TAG, "onMeterSpeedChanged(" + f10 + ").");
            Iterator it = Vehicle.this.mVehicleStateObservers.iterator();
            while (it.hasNext()) {
                ((VehicleStateListener) it.next()).onMeterSpeedChanged(f10);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onOffScreenStateChanged(boolean z) {
            LogUtil.m10i(Vehicle.this.TAG, "onOffScreenStateChanged  isOffScreen : " + z);
            Iterator it = Vehicle.this.mVehicleScreenListeners.iterator();
            while (it.hasNext()) {
                ((VehicleScreenListener) it.next()).onOffScreenStateChanged(z);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onParkingResponse(int i10) {
            LogUtil.m10i(Vehicle.this.TAG, "onParkingResponse  brakeStateFromMcu : " + i10);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onParkingResponse(i10);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onRemainingOil(int i10, int i11, int i12, int i13) {
            LogUtil.m10i(Vehicle.this.TAG, "onRemainingOil  oil : " + i10);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onRemainingOil(i10, i11, i12, i13);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onSafetyBeltResponse(int i10, int i11) {
            LogUtil.m10i(Vehicle.this.TAG, "onSafetyBeltResponse  mainBelt : " + i10 + " subBelt : " + i11);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onSafetyBeltResponse(i10, i11);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onSteeringWheelAngleResponse(int i10) {
            LogUtil.m10i(Vehicle.this.TAG, "onSteeringWheelAngleResponse  angle : " + i10);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onSteeringWheelAngleResponse(i10);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onStreeringWheelReationSpeed(int i10, int i11) {
            LogUtil.m10i(Vehicle.this.TAG, "onStreeringWheelReationSpeed  swRotation : " + i10 + " swRotationSpeed : " + i11);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onStreeringWheelReationSpeed(i10, i11);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onThrottleEffortsResponse(int i10) {
            LogUtil.m10i(Vehicle.this.TAG, "onThrottleEffortsResponse  percent : " + i10);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onThrottleEffortsResponse(i10);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onTotalMileageResponse(long j10) {
            LogUtil.m10i(Vehicle.this.TAG, "onTotalMileageResponse  value : " + j10);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onTotalMileageResponse(j10);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onTpmsInfoResponse(int i10, int i11, int i12) {
            String str = Vehicle.this.TAG;
            StringBuilder sbO = q.o(i10, i11, "onTpmsInfoResponse  value : ", " which : ", " state : ");
            sbO.append(i12);
            LogUtil.m10i(str, sbO.toString());
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onTpmsInfoResponse(i10, i11, i12);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onTurnSignalsInfoResponse(int i10) {
            LogUtil.m10i(Vehicle.this.TAG, "onTurnSignalsInfoResponse  value : " + i10);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onTurnSignalsInfoResponse(i10);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onVDCDetectionResponse(int i10) {
            LogUtil.m10i(Vehicle.this.TAG, "onVDCDetectionResponse  state : " + i10);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onVDCDetectionResponse(i10);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onVehicleGearInfoResponse(int i10) {
            LogUtil.m10i(Vehicle.this.TAG, "onVehicleGearInfoResponse  gear : " + i10);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onVehicleGearInfoResponse(i10);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onVehicleMileageInfoResponse(float f10) {
            LogUtil.m10i(Vehicle.this.TAG, "onVehicleMileageInfoResponse  value : " + f10);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onVehicleMileageInfoResponse(f10);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onVehicleSpeedInfoResponse(int i10) {
            LogUtil.m10i(Vehicle.this.TAG, "onVehicleSpeedInfoResponse  speed : " + i10);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onVehicleSpeedInfoResponse(i10);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onVehicleSpeedPulseInfoResponse(int i10) {
            LogUtil.m10i(Vehicle.this.TAG, "onVehicleSpeedPulseInfoResponse  speedPulse : " + i10);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onVehicleSpeedPulseInfoResponse(i10);
            }
        }

        @Override // com.hsae.autosdk.vehicle.IVehicleCallback
        public void onWiperStateResponse(int i10) {
            LogUtil.m10i(Vehicle.this.TAG, "onWiperStateResponse  state : " + i10);
            Iterator it = Vehicle.this.mVehicleObservers.iterator();
            while (it.hasNext()) {
                ((VehicleListener) it.next()).onWiperStateResponse(i10);
            }
        }

        private VehicleCallbackStub() {
        }
    }

    public interface VehicleIllListener {
        void onEQPinData(byte b10, byte b11, byte b12, byte b13);

        void onILLContStatusResponse(int i10);

        void onMROutPutStatusResponse(int i10);
    }

    public interface VehicleListener {
        void keyLeaveCarRemind(boolean z);

        void onABSFaultResponse(int i10);

        void onAccStateResponse(boolean z);

        void onAverageFuelConsumptionResponse(float f10);

        void onBatteryPowerResponse(int i10);

        void onBrakeForceResponse(int i10);

        void onDetectedEngineResponse(int i10);

        void onDoorResponse(boolean z, boolean z4, boolean z10, boolean z11, boolean z12);

        void onEPSDetectionResponse(int i10);

        void onEngineRotatingSpeedResponse(float f10);

        void onHydraulicOilDetectedResponse(int i10);

        void onIgnResponse(boolean z);

        void onIllStateResponse(boolean z, boolean z4, boolean z10, boolean z11);

        void onLaneWarningSensorInfoResponse(int i10);

        void onParkingResponse(int i10);

        void onRemainingOil(int i10, int i11, int i12, int i13);

        void onSafetyBeltResponse(int i10, int i11);

        void onSteeringWheelAngleResponse(int i10);

        void onStreeringWheelReationSpeed(int i10, int i11);

        void onThrottleEffortsResponse(int i10);

        void onTotalMileageResponse(long j10);

        void onTpmsInfoResponse(int i10, int i11, int i12);

        void onTurnSignalsInfoResponse(int i10);

        void onVDCDetectionResponse(int i10);

        void onVehicleGearInfoResponse(int i10);

        void onVehicleMileageInfoResponse(float f10);

        void onVehicleSpeedInfoResponse(int i10);

        void onVehicleSpeedPulseInfoResponse(int i10);

        void onWiperStateResponse(int i10);
    }

    public interface VehicleScreenListener {
        void onOffScreenStateChanged(boolean z);
    }

    public interface VehicleStateListener {
        void onMeterSpeedChanged(float f10);
    }

    private Vehicle() {
    }

    public static Vehicle getInstance() {
        if (mInstance == null) {
            mInstance = new Vehicle();
        }
        return mInstance;
    }

    private IVehicle getNewStub() {
        try {
            PrintStream printStream = System.out;
            printStream.getClass();
            IBinder service = ServiceManager.getService(VehicleConst.IBINDER_VEHICLE);
            if (service == null) {
                return null;
            }
            this.mVehicleStub = IVehicle.Stub.asInterface(service);
            printStream.getClass();
            recoverLink();
            return this.mVehicleStub;
        } catch (Exception unused) {
            return null;
        }
    }

    private IVehicle getStub() {
        if (this.mVehicleStub == null) {
            getNewStub();
        }
        IVehicle iVehicle = this.mVehicleStub;
        if (iVehicle == null) {
            return null;
        }
        return (iVehicle.asBinder().isBinderAlive() && this.mVehicleStub.asBinder().pingBinder()) ? this.mVehicleStub : getNewStub();
    }

    private void recoverLink() {
        if (getStub() == null) {
            return;
        }
        if (this.mVehicleObservers.size() <= 0 && this.mVehicleIllListeners.isEmpty() && this.mVehicleScreenListeners.isEmpty() && this.mVehicleStateObservers.isEmpty()) {
            return;
        }
        try {
            if (this.mVehicleCallback == null) {
                this.mVehicleCallback = new VehicleCallbackStub(this, 0);
            }
            getStub().registerVehicleCallback(this.mVehicleCallback, this.mPackageName, this.mKey);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean registerCallback() {
        boolean zRegisterVehicleCallback = false;
        Object[] objArr = 0;
        if (this.mVehicleCallback != null) {
            return false;
        }
        IVehicle stub = getStub();
        if (stub == null) {
            LogUtil.m13e(this.TAG, "registerCallback mIVehicle is null");
            return false;
        }
        VehicleCallbackStub vehicleCallbackStub = new VehicleCallbackStub(this, objArr == true ? 1 : 0);
        this.mVehicleCallback = vehicleCallbackStub;
        try {
            zRegisterVehicleCallback = stub.registerVehicleCallback(vehicleCallbackStub, this.mPackageName, this.mKey);
            LogUtil.m15d(this.TAG, "registerCallback registerVehicleCallback(" + this.mVehicleCallback + "," + this.mPackageName + "," + this.mKey + ") ret = " + zRegisterVehicleCallback);
            return zRegisterVehicleCallback;
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return zRegisterVehicleCallback;
        }
    }

    private void unregisterCallback() {
        if (this.mVehicleCallback != null && this.mVehicleIllListeners.isEmpty() && this.mVehicleObservers.isEmpty() && this.mVehicleScreenListeners.isEmpty() && this.mVehicleStateObservers.isEmpty()) {
            IVehicle stub = getStub();
            if (stub == null) {
                LogUtil.m13e(this.TAG, "unregisterCallback mIVehicle is null");
                return;
            }
            try {
                stub.unregisterVehicleCallback(this.mVehicleCallback);
                LogUtil.m15d(this.TAG, "unregisterCallback unregisterVehicleCallback(" + this.mVehicleCallback + ").");
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
            this.mVehicleCallback = null;
        }
    }

    public boolean[] getDoorState() {
        return getStub() == null ? new boolean[0] : getStub().getDoorState();
    }

    public int getGearId() {
        return getStub() == null ? VehicleConst.VehicleData.Gear.OFF.ordinal() : getStub().getGearId();
    }

    public boolean getIgnState() {
        if (getStub() == null) {
            return false;
        }
        return getStub().getIgnState();
    }

    public boolean getKeyLeaveCarState() {
        if (getStub() == null) {
            return true;
        }
        return getStub().getKeyLeaveCarState();
    }

    public float getMeterSpeed() {
        IVehicle stub = getStub();
        if (stub == null) {
            return 0.0f;
        }
        return stub.getMeterSpeed();
    }

    public boolean getOffScreenState() {
        if (getStub() == null) {
            return false;
        }
        return getStub().getOffScreenState();
    }

    public int getParkState() {
        if (getStub() == null) {
            return -1;
        }
        return getStub().getParkState();
    }

    public int[] getSaftBelt() {
        return getStub() == null ? new int[0] : getStub().getSaftBelt();
    }

    public int getSpeed() {
        if (getStub() == null) {
            return -1;
        }
        return getStub().getSpeed();
    }

    public int[] getTpmsStatus() {
        return getStub() == null ? new int[0] : getStub().getTpmsStatus();
    }

    public int getTurnLight() {
        if (getStub() == null) {
            return -1;
        }
        return getStub().getTurnLight();
    }

    public boolean getUpdateState() {
        if (getStub() == null) {
            return false;
        }
        return getStub().getUpdateState();
    }

    public int getVehicleType() {
        if (getStub() == null) {
            return -1;
        }
        return getStub().getVehicleType();
    }

    public boolean isAccOn() {
        if (getStub() == null) {
            return false;
        }
        try {
            return getStub().isAccOn();
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return true;
        }
    }

    public boolean isL42PAVMType() {
        if (getStub() == null) {
            return false;
        }
        return getStub().isL42PAVMType();
    }

    public boolean isSafetyLockEnabled() {
        if (getStub() == null) {
            return true;
        }
        try {
            return getStub().isSafetyLockEnabled();
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return false;
        }
    }

    public void registerListener(VehicleListener vehicleListener) {
    }

    public void registerOffScreenStateListener(VehicleScreenListener vehicleScreenListener) {
        if (getStub() == null) {
            return;
        }
        if (!this.mVehicleScreenListeners.contains(vehicleScreenListener)) {
            this.mVehicleScreenListeners.add(vehicleScreenListener);
        }
        if (this.mVehicleCallback == null) {
            this.mVehicleCallback = new VehicleCallbackStub(this, 0);
            getStub().registerVehicleCallback(this.mVehicleCallback, "", "");
        }
    }

    public boolean registerVehicleIllListener(VehicleIllListener vehicleIllListener, Context context, String str) {
        int i10 = 0;
        if (getStub() == null) {
            return false;
        }
        if (!this.mVehicleIllListeners.contains(vehicleIllListener)) {
            this.mVehicleIllListeners.add(vehicleIllListener);
        }
        this.mPackageName = context.getPackageName();
        this.mKey = str;
        if (this.mVehicleCallback != null) {
            return false;
        }
        this.mVehicleCallback = new VehicleCallbackStub(this, i10);
        return getStub().registerVehicleCallback(this.mVehicleCallback, this.mPackageName, str);
    }

    public boolean registerVehicleStateListener(VehicleStateListener vehicleStateListener) {
        if (!this.mVehicleStateObservers.contains(vehicleStateListener)) {
            this.mVehicleStateObservers.add(vehicleStateListener);
            if (vehicleStateListener != null) {
                vehicleStateListener.toString();
            }
        }
        this.mPackageName = "something";
        this.mKey = "sth";
        if (vehicleStateListener != null) {
            vehicleStateListener.toString();
        }
        return registerCallback();
    }

    public void setOffScreenState(boolean z) {
        if (getStub() == null) {
            return;
        }
        getStub().setOffScreenState(z);
    }

    public void setUpdateState(boolean z) {
        if (getStub() == null) {
            return;
        }
        getStub().setUpdateState(z);
    }

    public void unRegisterListener(VehicleListener vehicleListener) {
        if (getStub() == null) {
            return;
        }
        if (this.mVehicleObservers.contains(vehicleListener)) {
            this.mVehicleObservers.remove(vehicleListener);
        }
        if (this.mVehicleCallback != null && this.mVehicleIllListeners.size() == 0 && this.mVehicleObservers.size() == 0 && this.mVehicleScreenListeners.size() == 0 && this.mVehicleStateObservers.isEmpty()) {
            getStub().unregisterVehicleCallback(this.mVehicleCallback);
            this.mVehicleCallback = null;
        }
    }

    public void unRegisterOffScreenStateListener(VehicleScreenListener vehicleScreenListener) {
        if (getStub() == null) {
            return;
        }
        if (this.mVehicleScreenListeners.contains(vehicleScreenListener)) {
            this.mVehicleScreenListeners.remove(vehicleScreenListener);
        }
        if (this.mVehicleCallback != null && this.mVehicleIllListeners.size() == 0 && this.mVehicleObservers.size() == 0 && this.mVehicleScreenListeners.size() == 0 && this.mVehicleStateObservers.isEmpty()) {
            getStub().unregisterVehicleCallback(this.mVehicleCallback);
            this.mVehicleCallback = null;
        }
    }

    public void unRegisterVehicleIllListener(VehicleIllListener vehicleIllListener) {
        if (getStub() == null) {
            return;
        }
        if (this.mVehicleIllListeners.contains(vehicleIllListener)) {
            this.mVehicleIllListeners.remove(vehicleIllListener);
        }
        if (this.mVehicleCallback != null && this.mVehicleIllListeners.size() == 0 && this.mVehicleObservers.size() == 0 && this.mVehicleScreenListeners.size() == 0 && this.mVehicleStateObservers.isEmpty()) {
            getStub().unregisterVehicleCallback(this.mVehicleCallback);
            this.mVehicleCallback = null;
        }
    }

    public void unregisterVehicleStateListener(VehicleStateListener vehicleStateListener) {
        if (this.mVehicleStateObservers.contains(vehicleStateListener)) {
            this.mVehicleStateObservers.remove(vehicleStateListener);
            if (vehicleStateListener != null) {
                vehicleStateListener.toString();
            }
        }
        if (vehicleStateListener != null) {
            vehicleStateListener.toString();
        }
        unregisterCallback();
    }

    public boolean registerListener(VehicleListener vehicleListener, Context context, String str) {
        int i10 = 0;
        if (getStub() == null) {
            return false;
        }
        if (!this.mVehicleObservers.contains(vehicleListener)) {
            this.mVehicleObservers.add(vehicleListener);
        }
        this.mPackageName = context.getPackageName();
        this.mKey = str;
        if (this.mVehicleCallback != null) {
            return false;
        }
        this.mVehicleCallback = new VehicleCallbackStub(this, i10);
        return getStub().registerVehicleCallback(this.mVehicleCallback, this.mPackageName, str);
    }
}
