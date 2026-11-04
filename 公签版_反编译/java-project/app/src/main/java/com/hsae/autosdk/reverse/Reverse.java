package com.hsae.autosdk.reverse;

import android.os.RemoteException;
import android.os.ServiceManager;
import com.hsae.autosdk.reverse.IReverse;
import com.hsae.autosdk.reverse.IReverseCallback;
import com.hsae.autosdk.reverse.IReverseStateCallback;
import com.hsae.autosdk.util.LogUtil;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class Reverse {
    private static Reverse mInstance;
    private ReverseCallbackStub mReverseCallback;
    private ReverseStateCallbackStub mReverseStateCallback;
    private final String TAG = "Reverse";
    private ArrayList<ReverseListener> mReverseObservers = new ArrayList<>();
    private ArrayList<ReverseStateListener> mReverseStateObservers = new ArrayList<>();
    private ArrayList<AvmListener> mAvmListener = new ArrayList<>();
    private IReverse mReverseStub = IReverse.Stub.asInterface(ServiceManager.getService(ReverseConst.IBINDER_REVERSE));

    public interface AvmListener {
        void onAVMStatusAndRequestResponseNoIPA(byte b10, byte b11);

        void onAVMStatusAndRequestResponseWithIPA(byte b10, byte b11, byte b12, byte b13, byte b14, byte b15, byte b16, byte b17);
    }

    public class ReverseCallbackStub extends IReverseCallback.Stub {
        public /* synthetic */ ReverseCallbackStub(Reverse reverse, int i10) {
            this();
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onAVMChangeDAFrameResponse(byte b10) {
            Iterator it = Reverse.this.mReverseObservers.iterator();
            while (it.hasNext()) {
                ((ReverseListener) it.next()).onAVMChangeDAFrameResponse(b10);
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onAVMCheckLanguageResponse() {
            Iterator it = Reverse.this.mReverseObservers.iterator();
            while (it.hasNext()) {
                ((ReverseListener) it.next()).onAVMCheckLanguageResponse();
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onAVMCheckViewStateResponse() {
            Iterator it = Reverse.this.mReverseObservers.iterator();
            while (it.hasNext()) {
                ((ReverseListener) it.next()).onAVMCheckViewStateResponse();
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onAVMHardwareVersionResponse(String str) {
            Iterator it = Reverse.this.mReverseObservers.iterator();
            while (it.hasNext()) {
                ((ReverseListener) it.next()).onAVMHardwareVersionResponse(str);
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onAVMReverseStateResponse(byte b10) {
            Iterator it = Reverse.this.mReverseObservers.iterator();
            while (it.hasNext()) {
                ((ReverseListener) it.next()).onAVMReverseStateResponse(b10);
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onAVMSettingInfoResponse(byte b10, byte b11, byte b12) {
            Iterator it = Reverse.this.mReverseObservers.iterator();
            while (it.hasNext()) {
                ((ReverseListener) it.next()).onAVMSettingInfoResponse(b10, b11, b12);
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onAVMSoftwareVersionResponse(String str) {
            Iterator it = Reverse.this.mReverseObservers.iterator();
            while (it.hasNext()) {
                ((ReverseListener) it.next()).onAVMSoftwareVersionResponse(str);
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onAVMStartResponse() {
            Iterator it = Reverse.this.mReverseObservers.iterator();
            while (it.hasNext()) {
                ((ReverseListener) it.next()).onAVMStartResponse();
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onAVMStatusAndRequestResponseNoIPA(byte b10, byte b11) {
            Iterator it = Reverse.this.mAvmListener.iterator();
            while (it.hasNext()) {
                ((AvmListener) it.next()).onAVMStatusAndRequestResponseNoIPA(b10, b11);
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onAVMStatusAndRequestResponseWithIPA(byte b10, byte b11, byte b12, byte b13, byte b14, byte b15, byte b16, byte b17) {
            Iterator it = Reverse.this.mAvmListener.iterator();
            while (it.hasNext()) {
                ((AvmListener) it.next()).onAVMStatusAndRequestResponseWithIPA(b10, b11, b12, b13, b14, b15, b16, b17);
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onAVMVINResponse(String str) {
            Iterator it = Reverse.this.mReverseObservers.iterator();
            while (it.hasNext()) {
                ((ReverseListener) it.next()).onAVMVINResponse(str);
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onAvmBeepSoundResponse(byte b10) {
            Iterator it = Reverse.this.mReverseObservers.iterator();
            while (it.hasNext()) {
                ((ReverseListener) it.next()).onAvmBeepSoundResponse(b10);
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onButtonEnableStatusResponse(byte b10) {
            Iterator it = Reverse.this.mReverseObservers.iterator();
            while (it.hasNext()) {
                ((ReverseListener) it.next()).onButtonEnableStatusResponse(b10);
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onCarTypeResponse(byte b10) {
            Iterator it = Reverse.this.mReverseObservers.iterator();
            while (it.hasNext()) {
                ((ReverseListener) it.next()).onCarTypeResponse(b10);
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onDistanceResponse(byte b10) {
            Iterator it = Reverse.this.mReverseObservers.iterator();
            while (it.hasNext()) {
                ((ReverseListener) it.next()).onDistanceResponse(b10);
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onFrCenterResponse(byte b10) {
            Iterator it = Reverse.this.mReverseObservers.iterator();
            while (it.hasNext()) {
                ((ReverseListener) it.next()).onFrCenterResponse(b10);
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onFrLeftResponse(byte b10) {
            Iterator it = Reverse.this.mReverseObservers.iterator();
            while (it.hasNext()) {
                ((ReverseListener) it.next()).onFrLeftResponse(b10);
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onFrRightResponse(byte b10) {
            Iterator it = Reverse.this.mReverseObservers.iterator();
            while (it.hasNext()) {
                ((ReverseListener) it.next()).onFrRightResponse(b10);
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onFrameResponse(byte b10) {
            Iterator it = Reverse.this.mReverseObservers.iterator();
            while (it.hasNext()) {
                ((ReverseListener) it.next()).onFrameResponse(b10);
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onLightsStatusResponse(byte b10) {
            Iterator it = Reverse.this.mReverseObservers.iterator();
            while (it.hasNext()) {
                ((ReverseListener) it.next()).onLightsStatusResponse(b10);
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onRrCenterResponse(byte b10) {
            Iterator it = Reverse.this.mReverseObservers.iterator();
            while (it.hasNext()) {
                ((ReverseListener) it.next()).onRrCenterResponse(b10);
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onRrLeftResponse(byte b10) {
            Iterator it = Reverse.this.mReverseObservers.iterator();
            while (it.hasNext()) {
                ((ReverseListener) it.next()).onRrLeftResponse(b10);
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseCallback
        public void onRrRightResponse(byte b10) {
            Iterator it = Reverse.this.mReverseObservers.iterator();
            while (it.hasNext()) {
                ((ReverseListener) it.next()).onRrRightResponse(b10);
            }
        }

        private ReverseCallbackStub() {
        }
    }

    public interface ReverseListener {
        void onAVMChangeDAFrameResponse(byte b10);

        void onAVMCheckLanguageResponse();

        void onAVMCheckViewStateResponse();

        void onAVMHardwareVersionResponse(String str);

        void onAVMReverseStateResponse(byte b10);

        void onAVMSettingInfoResponse(byte b10, byte b11, byte b12);

        void onAVMSoftwareVersionResponse(String str);

        void onAVMStartResponse();

        void onAVMVINResponse(String str);

        void onAvmBeepSoundResponse(byte b10);

        void onButtonEnableStatusResponse(byte b10);

        void onCarTypeResponse(byte b10);

        void onDistanceResponse(byte b10);

        void onFrCenterResponse(byte b10);

        void onFrLeftResponse(byte b10);

        void onFrRightResponse(byte b10);

        void onFrameResponse(byte b10);

        void onLightsStatusResponse(byte b10);

        void onRrCenterResponse(byte b10);

        void onRrLeftResponse(byte b10);

        void onRrRightResponse(byte b10);
    }

    public class ReverseStateCallbackStub extends IReverseStateCallback.Stub {
        public /* synthetic */ ReverseStateCallbackStub(Reverse reverse, int i10) {
            this();
        }

        @Override // com.hsae.autosdk.reverse.IReverseStateCallback
        public void onReverseStateChanged(boolean z) {
            Iterator it = Reverse.this.mReverseStateObservers.iterator();
            while (it.hasNext()) {
                ((ReverseStateListener) it.next()).onReverseStateChanged(z);
            }
        }

        private ReverseStateCallbackStub() {
        }
    }

    public interface ReverseStateListener {
        void onReverseStateChanged(boolean z);
    }

    private Reverse() {
    }

    public static Reverse getInstance() {
        if (mInstance == null) {
            mInstance = new Reverse();
        }
        return mInstance;
    }

    private IReverse getNewStub() throws InterruptedException {
        LogUtil.recoveryMechanismDelay(15);
        this.mReverseStub = IReverse.Stub.asInterface(ServiceManager.getService(ReverseConst.IBINDER_REVERSE));
        recoverLink();
        return this.mReverseStub;
    }

    private IReverse getStub() throws InterruptedException {
        if (this.mReverseStub == null) {
            getNewStub();
        }
        IReverse iReverse = this.mReverseStub;
        if (iReverse != null) {
            return (iReverse.asBinder().isBinderAlive() && this.mReverseStub.asBinder().pingBinder()) ? this.mReverseStub : getNewStub();
        }
        throw new IllegalArgumentException("Air service doesn't start");
    }

    private void recoverLink() {
        if (getStub() == null) {
            return;
        }
        int i10 = 0;
        if (this.mReverseStateObservers.size() > 0) {
            try {
                if (this.mReverseStateCallback == null) {
                    this.mReverseStateCallback = new ReverseStateCallbackStub(this, i10);
                }
                getStub().registerReverseStateCallback(this.mReverseStateCallback);
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
        if (this.mReverseObservers.size() > 0) {
            try {
                if (this.mReverseCallback == null) {
                    this.mReverseCallback = new ReverseCallbackStub(this, i10);
                }
                getStub().registerReverseCallback(this.mReverseCallback);
            } catch (RemoteException e10) {
                e10.printStackTrace();
            }
        }
    }

    public void avmControlCmd(byte b10, byte b11, byte b12, byte b13, byte b14, byte b15, byte b16) throws InterruptedException {
        getStub();
        try {
            getStub().avmControlCmd(b10, b11, b12, b13, b14, b15, b16);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        }
    }

    public int getCameraType() {
        if (getStub() == null) {
            return -1;
        }
        return getStub().getCameraType();
    }

    public int getCurrentVehicleType() {
        if (getStub() == null) {
            return -1;
        }
        return getStub().getCurrentVehicleType();
    }

    public byte getFrameType() {
        if (getStub() == null) {
            return (byte) -1;
        }
        return getStub().getFrameType();
    }

    public boolean getQuickReverseState() {
        if (getStub() == null) {
            return false;
        }
        try {
            return getStub().getQuickReverseState();
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return false;
        }
    }

    public boolean getReverseState() {
        if (getStub() == null) {
            return false;
        }
        try {
            return getStub().getReverseState();
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return false;
        }
    }

    public int getSteeringWheelAngle() {
        if (getStub() == null) {
            return -1;
        }
        return getStub().getSteeringWheelAngle();
    }

    public int getSteeringWheelFlag() {
        if (getStub() == null) {
            return -1;
        }
        return getStub().getSteeringWheelFlag();
    }

    public int getVehicleType() {
        if (getStub() == null) {
            return -1;
        }
        return getStub().getVehicleType();
    }

    public void notifyReverseStartSucess(boolean z) {
        if (getStub() == null) {
            return;
        }
        getStub().notifyReverseStartSucess(z);
    }

    public void registerAvmListener(AvmListener avmListener) {
        if (getStub() == null) {
            return;
        }
        if (!this.mAvmListener.contains(avmListener)) {
            this.mAvmListener.add(avmListener);
            if (this.mReverseCallback == null) {
                this.mReverseCallback = new ReverseCallbackStub(this, 0);
                getStub().registerReverseCallback(this.mReverseCallback);
            }
        }
        ArrayList<AvmListener> arrayList = this.mAvmListener;
        if (arrayList != null) {
            arrayList.toString();
        }
    }

    public void registerListener(ReverseListener reverseListener) {
        if (getStub() == null || this.mReverseObservers.contains(reverseListener)) {
            return;
        }
        this.mReverseObservers.add(reverseListener);
        if (this.mReverseCallback == null) {
            this.mReverseCallback = new ReverseCallbackStub(this, 0);
            getStub().registerReverseCallback(this.mReverseCallback);
        }
    }

    public void registerStateListener(ReverseStateListener reverseStateListener) {
        if (getStub() == null) {
            return;
        }
        if (!this.mReverseStateObservers.contains(reverseStateListener)) {
            this.mReverseStateObservers.add(reverseStateListener);
            if (this.mReverseStateCallback == null) {
                this.mReverseStateCallback = new ReverseStateCallbackStub(this, 0);
                getStub().registerReverseStateCallback(this.mReverseStateCallback);
            }
        }
        ArrayList<ReverseStateListener> arrayList = this.mReverseStateObservers;
        if (arrayList != null) {
            arrayList.toString();
        }
    }

    public void reqAVMAnimationEnable(byte b10) {
        if (getStub() == null) {
            return;
        }
        getStub().reqAVMAnimationEnable(b10);
    }

    public void reqAVMReset() {
        if (getStub() == null) {
            return;
        }
        getStub().reqAVMReset();
    }

    public void reqAVMReverseState() {
        if (getStub() == null) {
            return;
        }
        getStub().reqAVMReverseState();
    }

    public void reqAVMStateInfo(byte b10, byte b11, byte b12, byte b13) {
        if (getStub() == null) {
            return;
        }
        getStub().reqAVMStateInfo(b10, b11, b12, b13);
    }

    public void reqAVMSwitchScreen(byte b10) {
        if (getStub() == null) {
            return;
        }
        getStub().reqAVMSwitchScreen(b10);
    }

    public void reqAVMSynchronizationData(int i10, byte b10, byte b11) {
        if (getStub() == null) {
            return;
        }
        getStub().reqAVMSynchronizationData(i10, b10, b11);
    }

    public void reqAVMTouchInfo(int i10, int i11) {
        if (getStub() == null) {
            return;
        }
        getStub().reqAVMTouchInfo(i10, i11);
    }

    public void reqAVMVersion() {
        if (getStub() == null) {
            return;
        }
        getStub().reqAVMVersion();
    }

    public void reqChangeAVMLaungage(byte b10) {
        if (getStub() == null) {
            return;
        }
        getStub().reqChangeAVMLaungage(b10);
    }

    public void reqChangeCarColor(byte b10) {
        if (getStub() == null) {
            return;
        }
        System.currentTimeMillis();
        getStub().reqChangeCarColor(b10);
        System.currentTimeMillis();
    }

    public void reqCurrentAVMSettingValue() {
        if (getStub() == null) {
            return;
        }
        getStub().reqCurrentAVMSettingValue();
    }

    public void reqDisplayTrackLine(byte b10) {
        if (getStub() == null) {
            return;
        }
        getStub().reqDisplayTrackLine(b10);
    }

    public void reqEnterAVMFrame(byte b10) {
        if (getStub() == null) {
            return;
        }
        getStub().reqEnterAVMFrame(b10);
    }

    public void reqEnterAVMSettingFrame() {
        if (getStub() == null) {
            return;
        }
        getStub().reqEnterAVMSettingFrame();
    }

    public void reqExitAVMFrame() {
        if (getStub() == null) {
            return;
        }
        getStub().reqExitAVMFrame();
    }

    public void setReverseType(int i10) {
        if (getStub() == null) {
            return;
        }
        getStub().setReverseType(i10);
    }

    public void setVehicleType(int i10) {
        if (getStub() == null) {
            return;
        }
        getStub().setVehicleType(i10);
    }

    public void unRegisterAvmListener(AvmListener avmListener) {
        if (getStub() == null) {
            return;
        }
        if (this.mAvmListener.contains(avmListener)) {
            this.mAvmListener.remove(avmListener);
        }
        if (this.mReverseCallback == null || this.mAvmListener.size() != 0) {
            return;
        }
        getStub().unregisterReverseCallback(this.mReverseCallback);
        this.mReverseCallback = null;
    }

    public void unRegisterListener(ReverseListener reverseListener) {
        if (getStub() == null) {
            return;
        }
        if (this.mReverseObservers.contains(reverseListener)) {
            this.mReverseObservers.remove(reverseListener);
        }
        if (this.mReverseCallback == null || this.mReverseObservers.size() != 0) {
            return;
        }
        getStub().unregisterReverseCallback(this.mReverseCallback);
        this.mReverseCallback = null;
    }

    public void unRegisterStateListener(ReverseStateListener reverseStateListener) {
        if (getStub() == null) {
            return;
        }
        if (this.mReverseStateObservers.contains(reverseStateListener)) {
            this.mReverseStateObservers.remove(reverseStateListener);
        }
        if (this.mReverseStateCallback == null || this.mReverseStateObservers.size() != 0) {
            return;
        }
        getStub().unregisterReverseStateCallback(this.mReverseStateCallback);
        this.mReverseStateCallback = null;
    }
}
