package com.hsae.autosdk.source;

import android.os.RemoteException;
import android.os.ServiceManager;
import com.hsae.autosdk.source.ISource;
import com.hsae.autosdk.source.ISourceCallback;
import com.hsae.autosdk.source.SourceConst;
import com.hsae.autosdk.util.LogUtil;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class Source {
    private SourceStateCallbackStub mSourceStateCallback;
    private final String TAG = "Source";
    private ISource mSourceManagerStub = ISource.Stub.asInterface(ServiceManager.getService(SourceConst.IBINDER_SOURCE));
    private ArrayList<SourceStateListener> mSourceStateListeners = new ArrayList<>();

    public class SourceStateCallbackStub extends ISourceCallback.Stub {
        public /* synthetic */ SourceStateCallbackStub(Source source, int i10) {
            this();
        }

        @Override // com.hsae.autosdk.source.ISourceCallback
        public void onSourceChanged(int i10) {
            Iterator it = Source.this.mSourceStateListeners.iterator();
            while (it.hasNext()) {
                ((SourceStateListener) it.next()).onSourceStateChanged(i10);
            }
        }

        private SourceStateCallbackStub() {
        }
    }

    public interface SourceStateListener {
        void onSourceStateChanged(int i10);
    }

    private void getInfo() {
    }

    private ISource getNewStub() throws InterruptedException {
        LogUtil.recoveryMechanismDelay(15);
        ISource iSourceAsInterface = ISource.Stub.asInterface(ServiceManager.getService(SourceConst.IBINDER_SOURCE));
        this.mSourceManagerStub = iSourceAsInterface;
        return iSourceAsInterface;
    }

    private ISource getStub() {
        if (this.mSourceManagerStub == null) {
            try {
                getNewStub();
            } catch (Exception unused) {
            }
        }
        ISource iSource = this.mSourceManagerStub;
        if (iSource == null) {
            throw new IllegalArgumentException("Source Manager service doesn't start");
        }
        if (iSource.asBinder().isBinderAlive() && this.mSourceManagerStub.asBinder().pingBinder()) {
            return this.mSourceManagerStub;
        }
        try {
            return getNewStub();
        } catch (Exception unused2) {
            return null;
        }
    }

    public int getCurrentAudioCard() {
        if (getStub() == null) {
            return 0;
        }
        try {
            return getStub().getCurrentAudioCard();
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return 0;
        }
    }

    public SourceConst.App getCurrentSource() {
        if (getStub() == null) {
            return null;
        }
        getInfo();
        try {
            return SourceConst.App.findById(getStub().getCurrentSource());
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return SourceConst.App.LAUNCHER;
        }
    }

    public SourceConst.App getFocusedApp() {
        if (getStub() == null) {
            return null;
        }
        getInfo();
        try {
            return SourceConst.App.findById(getStub().getFocusedApp());
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return SourceConst.App.LAUNCHER;
        }
    }

    public SourceConst.App getLastSource() {
        if (getStub() == null) {
            return null;
        }
        try {
            return SourceConst.App.findById(getStub().getLastSource());
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return SourceConst.App.KUWO_MUSIC;
        }
    }

    public SourceConst.App getPrevSource() {
        if (getStub() == null) {
            return null;
        }
        getInfo();
        try {
            return SourceConst.App.findById(getStub().getPrevSource());
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return SourceConst.App.LAUNCHER;
        }
    }

    public int getSoundCardType() {
        if (getStub() == null) {
            return 0;
        }
        try {
            return getStub().getSoundCardType();
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return 0;
        }
    }

    public boolean isAllowPlay(SourceConst.App app) {
        if (getStub() == null || app == null) {
            return false;
        }
        try {
            return getStub().isAllowPlay(app.ordinal());
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return false;
        }
    }

    public boolean isAudioPlayPermitted() {
        if (getStub() == null) {
            return false;
        }
        try {
            return getStub().isAudioPlayPermitted();
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return false;
        }
    }

    public void isBTPhoneComing(boolean z, boolean z4) {
        if (getStub() == null) {
            return;
        }
        try {
            getStub().isBTPhoneComing(z, z4);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        }
    }

    public boolean isInUpgrade(SourceConst.App app) {
        try {
            if (getStub() == null) {
                return false;
            }
            return getStub().isInUpgrade(app.ordinal());
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return false;
        } catch (IllegalArgumentException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean isNaviOnTop() {
        if (getStub() == null) {
            return false;
        }
        try {
            return getStub().isNaviOnTop();
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return false;
        }
    }

    public void mainAudioChanged(SourceConst.App app, boolean z) {
        if (getStub() == null) {
            return;
        }
        synchronized (this) {
            if (app == null) {
                return;
            }
            try {
                getStub().mainAudioChanged(app.ordinal(), z);
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
    }

    public void notifyBtState(boolean z) {
        if (getStub() == null) {
            return;
        }
        try {
            getStub().notifyBtState(z);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        }
    }

    public void notifyCarPlayPhoneState(boolean z) {
        if (getStub() == null) {
            return;
        }
        try {
            getStub().notifyCarPlayPhoneState(z);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        }
    }

    public void notifyDiagnoseState(boolean z) {
        if (getStub() == null) {
            return;
        }
        try {
            getStub().notifyDiagnoseState(z);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        }
    }

    public void notifyPhoneState(boolean z) {
        if (getStub() == null) {
            return;
        }
        try {
            getStub().notifyPhoneState(z);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        }
    }

    public void registerSourceStateListener(SourceStateListener sourceStateListener) {
        if (getStub() == null) {
            return;
        }
        if (!this.mSourceStateListeners.contains(sourceStateListener)) {
            this.mSourceStateListeners.add(sourceStateListener);
        }
        if (this.mSourceStateCallback == null) {
            this.mSourceStateCallback = new SourceStateCallbackStub(this, 0);
            getStub().registerSourceListener(this.mSourceStateCallback);
        }
    }

    public void resetToDefaults() {
        if (getStub() == null) {
            return;
        }
        try {
            getStub().resetToDefaults();
        } catch (RemoteException e7) {
            e7.printStackTrace();
        }
    }

    public void setAudioCardMode(int i10, int i11) {
        if (getStub() == null) {
            return;
        }
        try {
            getStub().setAudioCardMode(i10, i11);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        }
    }

    public void setBTPhoneActive(boolean z) {
        if (getStub() == null) {
            return;
        }
        try {
            getStub().setBTPhoneActive(z);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        }
    }

    public void setFocusedApp(int i10) {
        if (getStub() == null) {
            return;
        }
        try {
            getStub().setFocusedApp(i10);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        }
    }

    public void showApp(int i10) {
        if (getStub() == null) {
            return;
        }
        try {
            getStub().showApp(i10);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        }
    }

    public void switchAudioI2SMode(SourceConst.App app, boolean z, int i10) {
        if (getStub() == null || app == null) {
            return;
        }
        try {
            getStub().switchAudioI2SMode(app.ordinal(), z, i10);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        }
    }

    public void switchOTG() {
        if (getStub() == null) {
            return;
        }
        try {
            getStub().switchOTG();
        } catch (RemoteException e7) {
            e7.printStackTrace();
        }
    }

    public boolean tryToSwitchSource(SourceConst.App app) {
        if (getStub() == null || app == null) {
            return false;
        }
        try {
            return getStub().isAllowPlay(app.ordinal());
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return false;
        }
    }
}
