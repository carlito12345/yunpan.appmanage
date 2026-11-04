package com.hsae.autosdk.voice;

import android.os.ServiceManager;
import com.hsae.autosdk.server.IServerCallback;
import com.hsae.autosdk.server.Server;
import com.hsae.autosdk.server.ServerListener;
import com.hsae.autosdk.voice.IVoiceManager;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class VoiceProxy {
    private static VoiceProxy SELF;
    private IVoiceManager voiceManagerStub;
    private final String TAG = "VoiceProxy";
    private ArrayList<ServerListener> mServerObservers = new ArrayList<>();
    private VoiceProxyCallback vpc = new VoiceProxyCallback(this, 0);

    public class VoiceProxyCallback extends IServerCallback.Stub {
        public /* synthetic */ VoiceProxyCallback(VoiceProxy voiceProxy, int i10) {
            this();
        }

        @Override // com.hsae.autosdk.server.IServerCallback
        public void onServiceDestroyed() {
            VoiceProxy.this.voiceManagerStub = null;
            Iterator it = VoiceProxy.this.mServerObservers.iterator();
            while (it.hasNext()) {
                ((ServerListener) it.next()).onServiceDestroyed();
            }
        }

        @Override // com.hsae.autosdk.server.IServerCallback
        public void onServiceStarted() {
            VoiceProxy.this.getNewStub();
            Iterator it = VoiceProxy.this.mServerObservers.iterator();
            while (it.hasNext()) {
                ((ServerListener) it.next()).onServiceStarted();
            }
        }

        private VoiceProxyCallback() {
        }
    }

    public static VoiceProxy getInstance() {
        if (SELF == null) {
            SELF = new VoiceProxy();
        }
        return SELF;
    }

    private IVoiceManager getStub() {
        if (this.voiceManagerStub == null) {
            getNewStub();
        }
        IVoiceManager iVoiceManager = this.voiceManagerStub;
        if (iVoiceManager == null) {
            return null;
        }
        return (iVoiceManager.asBinder().isBinderAlive() && this.voiceManagerStub.asBinder().pingBinder()) ? this.voiceManagerStub : getNewStub();
    }

    public IVoiceManager getNewStub() {
        IVoiceManager iVoiceManagerAsInterface = IVoiceManager.Stub.asInterface(ServiceManager.getService(VoiceConst.IBINDER_VOICE_MANAGER));
        this.voiceManagerStub = iVoiceManagerAsInterface;
        return iVoiceManagerAsInterface;
    }

    public void hideVR() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().hideVR();
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public boolean isAllowMediaPlay() {
        try {
            if (getStub() == null) {
                return true;
            }
            return getStub().isAllowMediaPlay();
        } catch (Exception e7) {
            e7.printStackTrace();
            return true;
        }
    }

    public boolean isIflytekChipPrepared() {
        try {
            if (getStub() == null) {
                return false;
            }
            return getStub().isIflytekChipPrepared();
        } catch (Exception e7) {
            e7.printStackTrace();
            return false;
        }
    }

    public boolean isNeedInitServer() {
        return ServiceManager.getService(VoiceConst.IBINDER_VOICE_MANAGER) == null;
    }

    public boolean isSpeechStarted() {
        try {
            if (getStub() == null) {
                return false;
            }
            return getStub().isSpeechStarted();
        } catch (Exception e7) {
            e7.printStackTrace();
            return false;
        }
    }

    public boolean isTtsPlayStarted() {
        try {
            if (getStub() == null) {
                return false;
            }
            return getStub().isTtsPlayStarted();
        } catch (Exception e7) {
            e7.printStackTrace();
            return false;
        }
    }

    public boolean isVrStarted() {
        try {
            if (getStub() == null) {
                return false;
            }
            return getStub().isVrStarted();
        } catch (Exception e7) {
            e7.printStackTrace();
            return false;
        }
    }

    public boolean isWakeUpStarted() {
        try {
            if (getStub() == null) {
                return false;
            }
            return getStub().isWakeUpStarted();
        } catch (Exception e7) {
            e7.printStackTrace();
            return false;
        }
    }

    public void phoneCallStateChange(int i10, String str) {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().phoneCallStateChange(i10, str);
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public void reStartWakeRecord() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().reStartWakeRecord();
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public void registerListener(ServerListener serverListener) {
        this.mServerObservers.size();
        if (!this.mServerObservers.contains(serverListener)) {
            this.mServerObservers.add(serverListener);
        }
        if (this.mServerObservers.size() == 1) {
            Server.getInstance().registerServerListener(VoiceConst.VOICE_SERVICE, this.vpc);
        }
    }

    public void resetIflytekSetting() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().resetIflytekSetting();
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public void resetVRListener(IVRListener iVRListener) {
        try {
            IVoiceManager stub = getStub();
            if (stub == null) {
                return;
            }
            stub.resetVRListener(iVRListener);
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public void resourceRefresh(int i10) {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().resourceRefresh(i10);
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public void setVRListener(IVRListener iVRListener) {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().setVRListener(iVRListener);
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public void startSettings() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().startSettings();
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public void startTTS(String str) {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().startTTS(str);
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public void startVR() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().startVR();
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public void stopIflytekTts() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().stopIflytekTts();
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public void stopSrView() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().stopSrView();
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public void stopTTS() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().stopTTS();
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public void stopVR() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().stopVR();
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public void stopWakeRecord() {
        try {
            if (getStub() == null) {
                return;
            }
            getStub().stopWakeRecord();
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public void unRegisterListener(ServerListener serverListener) {
        if (this.mServerObservers.contains(serverListener)) {
            this.mServerObservers.remove(serverListener);
        }
        if (this.mServerObservers.size() == 0) {
            Server.getInstance().unregisterServerListener(VoiceConst.VOICE_SERVICE, this.vpc);
        }
    }
}
