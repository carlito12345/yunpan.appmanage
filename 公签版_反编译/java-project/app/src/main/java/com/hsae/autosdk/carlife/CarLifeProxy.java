package com.hsae.autosdk.carlife;

import android.os.RemoteException;
import android.os.ServiceManager;
import com.hsae.autosdk.carlife.ICarLifeManager;
import com.hsae.autosdk.server.IServerCallback;
import com.hsae.autosdk.server.Server;
import com.hsae.autosdk.server.ServerListener;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class CarLifeProxy {
    private static CarLifeProxy SELF;
    private ICarLifeManager carlifeManagerStub;
    private final String TAG = "CarLifeProxy";
    private ArrayList<ServerListener> mServerObservers = new ArrayList<>();
    private CarLifeProxyCallback cpc = new CarLifeProxyCallback(this, 0);

    public class CarLifeProxyCallback extends IServerCallback.Stub {
        public /* synthetic */ CarLifeProxyCallback(CarLifeProxy carLifeProxy, int i10) {
            this();
        }

        @Override // com.hsae.autosdk.server.IServerCallback
        public void onServiceDestroyed() {
            CarLifeProxy.this.carlifeManagerStub = null;
            Iterator it = CarLifeProxy.this.mServerObservers.iterator();
            while (it.hasNext()) {
                ((ServerListener) it.next()).onServiceDestroyed();
            }
        }

        @Override // com.hsae.autosdk.server.IServerCallback
        public void onServiceStarted() {
            CarLifeProxy.this.getNewStub();
            Iterator it = CarLifeProxy.this.mServerObservers.iterator();
            while (it.hasNext()) {
                ((ServerListener) it.next()).onServiceStarted();
            }
        }

        private CarLifeProxyCallback() {
        }
    }

    private CarLifeProxy() {
        if (this.carlifeManagerStub == null) {
            getStub();
        }
    }

    public static CarLifeProxy getInstance() {
        if (SELF == null) {
            SELF = new CarLifeProxy();
        }
        return SELF;
    }

    private ICarLifeManager getStub() {
        if (this.carlifeManagerStub == null) {
            getNewStub();
        }
        ICarLifeManager iCarLifeManager = this.carlifeManagerStub;
        if (iCarLifeManager == null) {
            return null;
        }
        return (iCarLifeManager.asBinder().isBinderAlive() && this.carlifeManagerStub.asBinder().pingBinder()) ? this.carlifeManagerStub : getNewStub();
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

    public void authenticateByMode(int i10) {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().authenticateByMode(i10);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public ICarLifeManager getNewStub() {
        ICarLifeManager iCarLifeManagerAsInterface = ICarLifeManager.Stub.asInterface(ServiceManager.getService(CarLifeConst.IBINDER_CARLIFE_MANAGER));
        this.carlifeManagerStub = iCarLifeManagerAsInterface;
        return iCarLifeManagerAsInterface;
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
        return ServiceManager.getService(CarLifeConst.IBINDER_CARLIFE_MANAGER) == null;
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

    public void onAoaConneced() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().onAoaConneced();
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
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

    public void onUsbAttached(boolean z) {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().onUsbAttached(z);
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

    public void registerCarLifeListener(ICarLifeListener iCarLifeListener) {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().registerCarLifeListener(iCarLifeListener);
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
            Server.getInstance().registerServerListener(CarLifeConst.CARLIFE_SERVICE, this.cpc);
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

    public void startVr() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().startVr();
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
            Server.getInstance().unregisterServerListener(CarLifeConst.CARLIFE_SERVICE, this.cpc);
        }
    }

    public void unregisterCarLifeListener(ICarLifeListener iCarLifeListener) {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().unregisterCarLifeListener(iCarLifeListener);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }
}
