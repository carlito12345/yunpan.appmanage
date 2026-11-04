package com.hsae.autosdk.server;

import android.os.RemoteException;
import android.os.ServiceManager;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.hsae.autosdk.server.IServer;

/* loaded from: classes.dex */
public class Server {
    private static Server mServer;
    private final String TAG = HTTP.SERVER_HEADER;
    private IServer mServerManagerStub = IServer.Stub.asInterface(ServiceManager.getService(ServerConst.IBINDER_SERVER));

    public static Server getInstance() {
        if (mServer == null) {
            mServer = new Server();
        }
        return mServer;
    }

    private IServer getNewStub() {
        IServer iServerAsInterface = IServer.Stub.asInterface(ServiceManager.getService(ServerConst.IBINDER_SERVER));
        this.mServerManagerStub = iServerAsInterface;
        return iServerAsInterface;
    }

    private IServer getStub() {
        if (this.mServerManagerStub == null) {
            getNewStub();
        }
        IServer iServer = this.mServerManagerStub;
        if (iServer == null) {
            return null;
        }
        return (iServer.asBinder().isBinderAlive() && this.mServerManagerStub.asBinder().pingBinder()) ? this.mServerManagerStub : getNewStub();
    }

    public void registerServerListener(String str, IServerCallback iServerCallback) {
        if (getStub() == null) {
            return;
        }
        try {
            getStub().registerServerListener(str, iServerCallback);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        }
    }

    public void unregisterServerListener(String str, IServerCallback iServerCallback) {
        if (getStub() == null) {
            return;
        }
        try {
            getStub().unregisterServerListener(str, iServerCallback);
        } catch (RemoteException e7) {
            e7.printStackTrace();
        }
    }
}
