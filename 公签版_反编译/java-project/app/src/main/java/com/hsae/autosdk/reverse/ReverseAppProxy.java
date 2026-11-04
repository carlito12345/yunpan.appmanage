package com.hsae.autosdk.reverse;

import android.os.RemoteException;
import android.os.ServiceManager;
import com.hsae.autosdk.reverse.IReverseApp;
import com.hsae.autosdk.reverse.IReverseAppStatusListener;
import com.hsae.autosdk.server.IServerCallback;
import com.hsae.autosdk.server.Server;
import com.hsae.autosdk.server.ServerListener;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class ReverseAppProxy {
    private static ReverseAppProxy SELF;
    private IReverseApp reverseAppStub;
    private final String TAG = "ReverseAppProxy";
    private ArrayList<AVMStatusForL42p> mAVMStatusForL42pObservers = new ArrayList<>();
    L42pAVMStatusStub mL42pAVMStatusStub = null;
    private ArrayList<ServerListener> mServerObservers = new ArrayList<>();
    private ReverseCallback reverseCallback = new ReverseCallback(this, 0);

    public interface AVMStatusForL42p {
        void onMODButtonEnableChanged(boolean z);

        void onMODOpenStatusChanged(boolean z);
    }

    public class L42pAVMStatusStub extends IReverseAppStatusListener.Stub {
        public /* synthetic */ L42pAVMStatusStub(ReverseAppProxy reverseAppProxy, int i10) {
            this();
        }

        @Override // com.hsae.autosdk.reverse.IReverseAppStatusListener
        public void onModButtonEnableChanged(boolean z) {
            Iterator it = ReverseAppProxy.this.mAVMStatusForL42pObservers.iterator();
            while (it.hasNext()) {
                ((AVMStatusForL42p) it.next()).onMODButtonEnableChanged(z);
            }
        }

        @Override // com.hsae.autosdk.reverse.IReverseAppStatusListener
        public void onModStatusChanged(boolean z) {
            Iterator it = ReverseAppProxy.this.mAVMStatusForL42pObservers.iterator();
            while (it.hasNext()) {
                ((AVMStatusForL42p) it.next()).onMODOpenStatusChanged(z);
            }
        }

        private L42pAVMStatusStub() {
        }
    }

    public class ReverseCallback extends IServerCallback.Stub {
        public /* synthetic */ ReverseCallback(ReverseAppProxy reverseAppProxy, int i10) {
            this();
        }

        @Override // com.hsae.autosdk.server.IServerCallback
        public void onServiceDestroyed() {
            ReverseAppProxy.this.reverseAppStub = null;
            Iterator it = ReverseAppProxy.this.mServerObservers.iterator();
            while (it.hasNext()) {
                ((ServerListener) it.next()).onServiceDestroyed();
            }
        }

        @Override // com.hsae.autosdk.server.IServerCallback
        public void onServiceStarted() {
            ReverseAppProxy.this.getNewStub();
            Iterator it = ReverseAppProxy.this.mServerObservers.iterator();
            while (it.hasNext()) {
                ((ServerListener) it.next()).onServiceStarted();
            }
        }

        private ReverseCallback() {
        }
    }

    private ReverseAppProxy() {
        if (this.reverseAppStub == null) {
            getStub();
        }
    }

    public static ReverseAppProxy getInstance() {
        if (SELF == null) {
            SELF = new ReverseAppProxy();
        }
        return SELF;
    }

    private IReverseApp getStub() {
        if (this.reverseAppStub == null) {
            getNewStub();
        }
        IReverseApp iReverseApp = this.reverseAppStub;
        if (iReverseApp == null) {
            return null;
        }
        return (iReverseApp.asBinder().isBinderAlive() && this.reverseAppStub.asBinder().pingBinder()) ? this.reverseAppStub : getNewStub();
    }

    public void changeModStatus() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().changeModStatus();
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public boolean getCurrentModStatus() {
        try {
            getStub();
            return getStub().getCurrentModStatus();
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return false;
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public IReverseApp getNewStub() {
        IReverseApp iReverseAppAsInterface = IReverseApp.Stub.asInterface(ServiceManager.getService(ReverseConst.IBINDER_REVERSING_MANAGER));
        this.reverseAppStub = iReverseAppAsInterface;
        return iReverseAppAsInterface;
    }

    public boolean isModButtonEnable() {
        try {
            getStub();
            return getStub().isCurrentModButtonEnable();
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return false;
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean isNeedInitServer() {
        return ServiceManager.getService(ReverseConst.IBINDER_REVERSING_MANAGER) == null;
    }

    public void registerListener(ServerListener serverListener) {
        if (!this.mServerObservers.contains(serverListener)) {
            this.mServerObservers.add(serverListener);
        }
        if (this.mServerObservers.size() == 1) {
            Server.getInstance().registerServerListener(ReverseConst.REVERSING_SERVICE, this.reverseCallback);
        }
    }

    public void registerReverseAppStatusListener(AVMStatusForL42p aVMStatusForL42p) {
        if (getStub() == null || this.mAVMStatusForL42pObservers.contains(aVMStatusForL42p)) {
            return;
        }
        this.mAVMStatusForL42pObservers.add(aVMStatusForL42p);
        if (this.mL42pAVMStatusStub == null) {
            this.mL42pAVMStatusStub = new L42pAVMStatusStub(this, 0);
            try {
                getStub().registerReverseAppStatusListener(this.mL42pAVMStatusStub);
            } catch (RemoteException e7) {
                e7.getMessage();
            }
        }
    }

    public void sendCameraOFFKey() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().sendCameraOFFKey();
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public void sendLongAVMKeyPressed() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().sendLongAVMKeyPressed();
        } catch (RemoteException e7) {
            e7.printStackTrace();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public void sendNormalAVMKeyPressed() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().sendNormalAVMKeyPressed();
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
            Server.getInstance().unregisterServerListener(ReverseConst.REVERSING_SERVICE, this.reverseCallback);
        }
    }

    public void unRegisterReverseAppStatusListener(AVMStatusForL42p aVMStatusForL42p) {
        if (getStub() == null) {
            return;
        }
        if (this.mAVMStatusForL42pObservers.contains(aVMStatusForL42p)) {
            this.mAVMStatusForL42pObservers.remove(aVMStatusForL42p);
        }
        ArrayList<AVMStatusForL42p> arrayList = this.mAVMStatusForL42pObservers;
        if (arrayList == null || arrayList.size() != 0) {
            return;
        }
        try {
            getStub().unRegisterReverseAppStatusListener(this.mL42pAVMStatusStub);
        } catch (RemoteException e7) {
            e7.getMessage();
        }
        this.mL42pAVMStatusStub = null;
    }
}
