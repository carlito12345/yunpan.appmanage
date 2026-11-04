package com.hsae.autosdk.carplay;

import android.os.RemoteException;
import android.os.ServiceManager;
import com.hsae.autosdk.carplay.ICarPlayManager;
import com.hsae.autosdk.server.IServerCallback;
import com.hsae.autosdk.server.Server;
import com.hsae.autosdk.server.ServerListener;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class CarPlayProxy {
    private static CarPlayProxy SELF;
    private ICarPlayManager carplayManagerStub;
    private final String TAG = "CarPlayProxy";
    private ArrayList<ServerListener> mServerObservers = new ArrayList<>();
    private CarPlayProxyCallback cpc = new CarPlayProxyCallback(this, 0);

    public class CarPlayProxyCallback extends IServerCallback.Stub {
        public /* synthetic */ CarPlayProxyCallback(CarPlayProxy carPlayProxy, int i10) {
            this();
        }

        @Override // com.hsae.autosdk.server.IServerCallback
        public void onServiceDestroyed() {
            CarPlayProxy.this.carplayManagerStub = null;
            Iterator it = CarPlayProxy.this.mServerObservers.iterator();
            while (it.hasNext()) {
                ((ServerListener) it.next()).onServiceDestroyed();
            }
        }

        @Override // com.hsae.autosdk.server.IServerCallback
        public void onServiceStarted() {
            CarPlayProxy.this.getNewStub();
            Iterator it = CarPlayProxy.this.mServerObservers.iterator();
            while (it.hasNext()) {
                ((ServerListener) it.next()).onServiceStarted();
            }
        }

        private CarPlayProxyCallback() {
        }
    }

    private CarPlayProxy() {
        if (this.carplayManagerStub == null) {
            getStub();
        }
    }

    public static CarPlayProxy getInstance() {
        if (SELF == null) {
            SELF = new CarPlayProxy();
        }
        return SELF;
    }

    private ICarPlayManager getStub() {
        if (this.carplayManagerStub == null) {
            getNewStub();
        }
        ICarPlayManager iCarPlayManager = this.carplayManagerStub;
        if (iCarPlayManager == null) {
            return null;
        }
        return (iCarPlayManager.asBinder().isBinderAlive() && this.carplayManagerStub.asBinder().pingBinder()) ? this.carplayManagerStub : getNewStub();
    }

    public void accessorySourceChange(int i10, boolean z, boolean z4) {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().accessorySourceChange(i10, z, z4);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public void authenticate() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().authenticate();
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public void carplayIconTapped() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().carplayIconTapped();
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public void carplayLinked(boolean z) {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().carplayLinked(z);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public boolean getCarPlayRingState() {
        try {
            if (getStub() == null) {
                return false;
            }
            return getStub().getCarPlayRingState();
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return false;
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public ICarPlayManager getNewStub() {
        ICarPlayManager iCarPlayManagerAsInterface = ICarPlayManager.Stub.asInterface(ServiceManager.getService(CarPlayConst.IBINDER_CARPLAY_MANAGER));
        this.carplayManagerStub = iCarPlayManagerAsInterface;
        return iCarPlayManagerAsInterface;
    }

    public int getPhoneState() {
        try {
            if (getStub() == null) {
                return 0;
            }
            return getStub().getPhoneState();
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return 0;
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public String getVersion() {
        try {
            return getStub() == null ? "" : getStub().getVersion();
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return "";
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public void handupBTPhone() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().handupBTPhone();
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public void hide() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().hide();
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public boolean isAppBackground() {
        try {
            if (getStub() == null) {
                return false;
            }
            return getStub().isAppBackground();
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return false;
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean isConnected() {
        try {
            if (getStub() == null) {
                return false;
            }
            return getStub().isConnected();
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return false;
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean isNeedInitServer() {
        return ServiceManager.getService(CarPlayConst.IBINDER_CARPLAY_MANAGER) == null;
    }

    public boolean isVrStarted() {
        try {
            if (getStub() == null) {
                return false;
            }
            return getStub().isVrStarted();
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return false;
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public void onHmiChanged(int i10, int i11) {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().onHmiChanged(i10, i11);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public void onTelOff() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().onTelOff();
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public void onTelOn() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().onTelOn();
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public void pause() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().pause();
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public void play() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().play();
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public void popUpCurrentMode() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().popUpCurrentMode();
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public void registerCarPlayListener(ICarPlayListener iCarPlayListener) {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().registerCarPlayListener(iCarPlayListener);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public void registerListener(ServerListener serverListener) {
        if (!this.mServerObservers.contains(serverListener)) {
            this.mServerObservers.add(serverListener);
        }
        if (this.mServerObservers.size() == 1) {
            Server.getInstance().registerServerListener(CarPlayConst.CARPLAY_SERVICE, this.cpc);
        }
    }

    public void show() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().show();
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public void showByVr(int i10) {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().showByVr(i10);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public void startCarplayNativeAuthenticate() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().startCarplayNativeAuthenticate();
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public void syncPowerState(boolean z) {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().syncPowerState(z);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public void syncReverseState(boolean z) {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().syncReverseState(z);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public void syncSpeedData(int i10, int i11) {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().syncSpeedData(i10, i11);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public void unRegisterListener(ServerListener serverListener) {
        if (this.mServerObservers.contains(serverListener)) {
            this.mServerObservers.remove(serverListener);
        }
        if (this.mServerObservers.size() == 0) {
            Server.getInstance().unregisterServerListener(CarPlayConst.CARPLAY_SERVICE, this.cpc);
        }
    }

    public void unregisterCarPlayListener(ICarPlayListener iCarPlayListener) {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().unregisterCarPlayListener(iCarPlayListener);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }
}
