package wa;

import android.content.ContextWrapper;
import android.content.Intent;
import android.media.session.MediaController;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.widget.Toast;
import com.hjq.toast.Toaster;
import com.hsae.autosdk.carlife.CarLifeProxy;
import com.hsae.autosdk.carplay.CarPlayProxy;
import com.hsae.autosdk.reverse.IReverse;
import com.hsae.autosdk.reverse.IReverseApp;
import com.hsae.autosdk.reverse.ReverseConst;
import com.hsae.autosdk.source.Source;
import com.hsae.autosdk.source.SourceConst;
import com.hsae.bluetoothsdk.bean.BluetoothDevice;
import com.yunpan.appmanage.util.a0;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class g {
    public static void a() throws InterruptedException {
        try {
            if (d(s.c().f17709e)) {
                ArrayList arrayListK = s.c().f17716m.k();
                if (arrayListK != null && !arrayListK.isEmpty()) {
                    Iterator it = arrayListK.iterator();
                    while (it.hasNext()) {
                        if (((BluetoothDevice) it.next()).getStatus() == 5) {
                            return;
                        }
                    }
                }
                a0.w("重启蓝牙模块");
                s.c().f17716m.getClass();
                if (ag.c.l() == 1) {
                    s.c().f17716m.getClass();
                    ag.c.f();
                    Thread.sleep(666L);
                }
                s.c().f17716m.getClass();
                ag.c.g();
            }
        } catch (Exception unused) {
            a0.u("无权限");
        }
    }

    public static void b() throws InterruptedException {
        try {
            boolean zIsConnected = false;
            try {
                NetworkInfo networkInfo = ((ConnectivityManager) s.c().f17709e.getSystemService("connectivity")).getNetworkInfo(1);
                if (networkInfo != null) {
                    zIsConnected = networkInfo.isConnected();
                }
            } catch (Exception unused) {
            }
            if (zIsConnected) {
                return;
            }
            a0.w("重启 wifi 模块");
            if (pa.i.e().d() == 3) {
                pa.i iVarE = pa.i.e();
                if (iVarE.b() != null) {
                    iVarE.b().closeWifi();
                }
                Thread.sleep(1000L);
            }
            pa.i iVarE2 = pa.i.e();
            if (iVarE2.b() == null) {
                return;
            }
            iVarE2.b().openWifi();
        } catch (Exception unused2) {
            a0.t("无权限");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void c(z7.s sVar, int i10) throws IllegalAccessException, InterruptedException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        MediaController mediaControllerE;
        zIsSearching = false;
        boolean zIsSearching = false;
        if (i10 == 2000) {
            if (Build.VERSION.SDK_INT >= 21) {
                if (s.c().f17705a) {
                    Iterator it = t0.e.f(t.f17728a.f17735d.getSystemService("media_session")).getActiveSessions(null).iterator();
                    while (it.hasNext()) {
                        mediaControllerE = t0.e.e(it.next());
                        s.c().getClass();
                        if (s.h(mediaControllerE)) {
                            break;
                        }
                    }
                    mediaControllerE = null;
                    if (mediaControllerE != null) {
                        p000if.a.z0(s.c().f17709e, mediaControllerE.getPackageName());
                        Toast.makeText(s.c().f17709e, "当前播放器：" + mediaControllerE.getPackageName(), 0).show();
                        return;
                    }
                } else if (s.c().f17706b.isEmpty()) {
                    mediaControllerE = null;
                    if (mediaControllerE != null) {
                    }
                } else {
                    Iterator it2 = s.c().f17706b.iterator();
                    while (it2.hasNext()) {
                        mediaControllerE = t0.e.e(it2.next());
                        s.c().getClass();
                        if (s.h(mediaControllerE)) {
                            break;
                        }
                    }
                    mediaControllerE = null;
                    if (mediaControllerE != null) {
                    }
                }
            }
            SourceConst.App currentSource = new Source().getCurrentSource();
            if (currentSource == SourceConst.App.RADIO) {
                Toaster.show((CharSequence) "收音机");
                p000if.a.z0(s.c().f17709e, "com.hsae.d531mc.radio");
                return;
            }
            if (currentSource == SourceConst.App.BT_MUSIC) {
                p000if.a.z0(s.c().f17709e, "com.hsae.d531mc.bluetooth.music");
                return;
            }
            if (currentSource == SourceConst.App.BT_PHONE) {
                p000if.a.z0(s.c().f17709e, "com.hsae.bluetooth.contacts");
                return;
            }
            if (currentSource == SourceConst.App.USB_MUSIC) {
                Intent intent = new Intent();
                intent.setFlags(270532608);
                intent.setClassName("com.hsae.d531mc.usbmedia", "com.hsae.d531mc.usbmedia.musicui.lifecycle.MusicActivity");
                try {
                    p000if.a.x0(1, s.c().f17709e, intent);
                    return;
                } catch (RemoteException | Exception unused) {
                    return;
                }
            }
            if (currentSource == SourceConst.App.USB_VIDEO) {
                p000if.a.z0(s.c().f17709e, "com.hsae.d531mc.usbvideo");
                return;
            }
            if (currentSource == SourceConst.App.HICAR_MUSIC) {
                Toaster.show((CharSequence) "hicar音乐");
                return;
            }
            if (currentSource == SourceConst.App.KUWO_MUSIC) {
                p000if.a.z0(s.c().f17709e, "cn.kuwo.kwmusiccar");
                return;
            }
            if (currentSource == SourceConst.App.KUWO_MV) {
                Toaster.show((CharSequence) "酷我MV");
                return;
            }
            if (currentSource == SourceConst.App.CARLIFE_MUSIC) {
                CarLifeProxy.getInstance().show();
                return;
            }
            if (currentSource == SourceConst.App.CARLIFE_PHONE) {
                CarLifeProxy.getInstance().show();
                return;
            }
            if (currentSource == SourceConst.App.CARLIFE_VR) {
                CarLifeProxy.getInstance().show();
                return;
            }
            if (currentSource == SourceConst.App.HICAR_NAVI) {
                Toaster.show((CharSequence) "hicar 导航");
                return;
            }
            if (currentSource == SourceConst.App.HICAR_PHONE) {
                Toaster.show((CharSequence) "hicar 通话中");
                return;
            }
            if (currentSource == SourceConst.App.CARPLAY_MUSIC) {
                CarPlayProxy.getInstance().show();
                return;
            }
            if (currentSource == SourceConst.App.CARPLAY_PHONE) {
                CarPlayProxy.getInstance().show();
                return;
            }
            if (currentSource == SourceConst.App.CARPLAY_SIRI) {
                Toaster.show((CharSequence) "carplay Siri");
                CarPlayProxy.getInstance().show();
                return;
            }
            if (currentSource == SourceConst.App.XIAOCHEN_FM) {
                Toaster.show((CharSequence) "XIAOCHEN FM");
                return;
            }
            if (currentSource == SourceConst.App.IPOD_MUSIC) {
                Toaster.show((CharSequence) "IPOD 音源");
                return;
            }
            if (currentSource == SourceConst.App.AUDIO_DIAGNOSE) {
                Toaster.show((CharSequence) "音频诊断");
                return;
            }
            if (currentSource == SourceConst.App.ONLINE_MUSIC) {
                Toaster.show((CharSequence) "在线音乐");
                return;
            }
            if (currentSource == SourceConst.App.ONLINE_VIDEO) {
                p000if.a.z0(s.c().f17709e, "com.hsae.ccs20.onlinevideo");
                Toaster.show((CharSequence) "在线视频");
                return;
            }
            if (currentSource == SourceConst.App.HIMALAYA_FM) {
                p000if.a.z0(s.c().f17709e, "com.ximalaya.ting.android.car");
                return;
            }
            if (currentSource == SourceConst.App.NAVI) {
                Toaster.show((CharSequence) "导航播报中");
                return;
            }
            if (currentSource == SourceConst.App.AIR) {
                Toaster.show((CharSequence) "空调");
                return;
            }
            if (currentSource == SourceConst.App.ANDROID_BT) {
                Toaster.show((CharSequence) "原生蓝牙");
                return;
            } else {
                if (currentSource == SourceConst.App.CB_KTV) {
                    p000if.a.z0(s.c().f17709e, "com.changba.sd");
                    return;
                }
                Toaster.show((CharSequence) ("当前源：" + currentSource.name()));
                return;
            }
        }
        b8.n nVar = sVar.f19480a;
        if (i10 == 2002) {
            try {
                if (d(s.c().f17709e)) {
                    int iE = nVar.containsKey("type") ? sVar.o("type").e() : 0;
                    if (iE == 0) {
                        s.c().f17716m.getClass();
                        if (ag.c.l() == 1) {
                            s.c().f17716m.getClass();
                            ag.c.f();
                            Toaster.show((CharSequence) "关闭蓝牙");
                            return;
                        } else {
                            s.c().f17716m.getClass();
                            ag.c.g();
                            a0.w("开启蓝牙");
                            return;
                        }
                    }
                    if (iE == 1) {
                        s.c().f17716m.getClass();
                        if (ag.c.l() == 1) {
                            s.c().f17716m.getClass();
                            ag.c.f();
                            Toaster.show((CharSequence) "关闭蓝牙");
                            return;
                        }
                        return;
                    }
                    if (iE == 2) {
                        s.c().f17716m.getClass();
                        if (ag.c.l() != 1) {
                            s.c().f17716m.getClass();
                            ag.c.g();
                            a0.w("开启蓝牙");
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            } catch (Exception unused2) {
                a0.u("无权限");
                return;
            }
        }
        if (i10 == 2003) {
            try {
                int iE2 = nVar.containsKey("type") ? sVar.o("type").e() : 0;
                if (iE2 == 0) {
                    if (pa.i.e().d() == 3) {
                        pa.i iVarE = pa.i.e();
                        if (iVarE.b() != null) {
                            iVarE.b().closeWifi();
                        }
                        a0.w("关闭 wifi");
                        return;
                    }
                    pa.i iVarE2 = pa.i.e();
                    if (iVarE2.b() != null) {
                        iVarE2.b().openWifi();
                    }
                    a0.w("开启 wifi");
                    return;
                }
                if (iE2 == 1) {
                    if (pa.i.e().d() == 3) {
                        pa.i iVarE3 = pa.i.e();
                        if (iVarE3.b() != null) {
                            iVarE3.b().closeWifi();
                        }
                        a0.w("关闭 wifi");
                        return;
                    }
                    return;
                }
                if (iE2 != 2 || pa.i.e().d() == 3) {
                    return;
                }
                pa.i iVarE4 = pa.i.e();
                if (iVarE4.b() != null) {
                    iVarE4.b().openWifi();
                }
                a0.w("开启 wifi");
                return;
            } catch (Exception unused3) {
                a0.t("无权限");
                return;
            }
        }
        if (i10 == 2004) {
            try {
                int iE3 = nVar.containsKey("type") ? sVar.o("type").e() : 0;
                if (iE3 == 0) {
                    if (pa.i.e().c() == 13) {
                        pa.i iVarE5 = pa.i.e();
                        if (iVarE5.b() != null) {
                            iVarE5.b().closeWifiAP();
                        }
                        a0.w("关闭热点");
                        return;
                    }
                    pa.i iVarE6 = pa.i.e();
                    if (iVarE6.b() != null) {
                        iVarE6.b().openWifiAP();
                    }
                    a0.w("开启热点");
                    return;
                }
                if (iE3 == 1) {
                    if (pa.i.e().c() == 13) {
                        pa.i iVarE7 = pa.i.e();
                        if (iVarE7.b() != null) {
                            iVarE7.b().closeWifiAP();
                        }
                        a0.w("关闭热点");
                        return;
                    }
                    return;
                }
                if (iE3 != 2 || pa.i.e().c() == 13) {
                    return;
                }
                pa.i iVarE8 = pa.i.e();
                if (iVarE8.b() != null) {
                    iVarE8.b().openWifiAP();
                }
                a0.w("开启热点");
                return;
            } catch (Exception unused4) {
                a0.t("无权限");
                return;
            }
        }
        if (i10 == 2005) {
            a();
            return;
        }
        if (i10 == 2006) {
            b();
            return;
        }
        if (i10 == 2012) {
            pa.e eVar = pa.d.f12629a;
            eVar.f12636g.setAudioMute(true);
            eVar.f12636g.setNaviMuteState(true);
            return;
        }
        if (i10 == 2013) {
            pa.e eVar2 = pa.d.f12629a;
            eVar2.f12636g.setAudioMute(false);
            eVar2.f12636g.setNaviMuteState(false);
            return;
        }
        if (i10 == 2010) {
            b();
            a();
            return;
        }
        if (i10 == 2011) {
            b();
            try {
                if (d(s.c().f17709e)) {
                    ArrayList arrayListK = s.c().f17716m.k();
                    if (arrayListK != null && !arrayListK.isEmpty()) {
                        Iterator it3 = arrayListK.iterator();
                        while (it3.hasNext()) {
                            if (((BluetoothDevice) it3.next()).getStatus() == 5) {
                                return;
                            }
                        }
                    }
                    s.c().f17716m.getClass();
                    if (ag.c.n()) {
                        try {
                            zIsSearching = ag.c.f664b.isSearching();
                        } catch (RemoteException e7) {
                            e7.printStackTrace();
                        }
                    }
                    if (zIsSearching) {
                        s.c().f17716m.getClass();
                        if (ag.c.n()) {
                            try {
                                ag.c.f664b.stopSearch();
                            } catch (RemoteException e10) {
                                e10.printStackTrace();
                            }
                        }
                        Thread.sleep(300L);
                    }
                    s.c().f17716m.getClass();
                    if (ag.c.n()) {
                        ag.c.f664b.search(true);
                        return;
                    }
                    return;
                }
                return;
            } catch (Exception unused5) {
                a0.u("无权限");
                return;
            }
        }
        if (i10 == 2014) {
            ta.l.m(Build.VERSION.SDK_INT < 23 ? 9 : SourceConst.IOCTL_FUNCTION_WBAND_16K, false);
            return;
        }
        if (i10 == 2015) {
            try {
                IBinder service = ServiceManager.getService(ReverseConst.IBINDER_REVERSING_MANAGER);
                if (service != null) {
                    IReverseApp iReverseAppAsInterface = IReverseApp.Stub.asInterface(service);
                    if (iReverseAppAsInterface == null) {
                        Toaster.show((CharSequence) "核心服务未启动");
                        return;
                    } else {
                        iReverseAppAsInterface.sendNormalAVMKeyPressed();
                        return;
                    }
                }
                IBinder service2 = ServiceManager.getService(ReverseConst.IBINDER_REVERSE);
                if (service2 == null) {
                    Toaster.show((CharSequence) "不适合您的车机");
                    return;
                }
                IReverse iReverseAsInterface = IReverse.Stub.asInterface(service2);
                if (iReverseAsInterface == null) {
                    Toaster.show((CharSequence) "核心服务未启动");
                    return;
                }
                if (iReverseAsInterface.getVehicleType() == 0 && iReverseAsInterface.getCameraType() == 0) {
                    iReverseAsInterface.reqEnterAVMFrame((byte) 1);
                    return;
                }
                Toaster.show((CharSequence) "当前车型不支持360");
            } catch (Exception e11) {
                a0.u("报错：" + e11.getMessage());
            }
        }
    }

    public static boolean d(ContextWrapper contextWrapper) throws InterruptedException {
        if (s.c().f17716m != null) {
            s.c().f17716m.getClass();
            if (ag.c.n()) {
                return true;
            }
        }
        if (s.c().f17716m != null) {
            try {
                s.c().f17716m.getClass();
                if (ag.c.n()) {
                    try {
                        ag.c.f664b.disConnect();
                    } catch (RemoteException e7) {
                        e7.printStackTrace();
                    }
                }
                Thread.sleep(333L);
            } catch (Exception unused) {
            }
        }
        s.c().f17716m = new ag.c(contextWrapper);
        Thread.sleep(800L);
        s.c().f17716m.getClass();
        return ag.c.n();
    }
}
