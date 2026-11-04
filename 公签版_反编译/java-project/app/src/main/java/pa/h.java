package pa;

import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.view.KeyEvent;
import com.hsae.autosdk.core.NoConst;
import com.hsae.autosdk.hmi.HmiConst;
import com.hsae.autosdk.hmi.IHmi;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.bean.KeyMapAccFindBean;
import com.yunpan.appmanage.carsdk.u;
import com.yunpan.appmanage.service.AccService;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import z7.o;
import z7.s;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public IHmi f12643a;

    /* renamed from: b, reason: collision with root package name */
    public final AccService f12644b;

    /* renamed from: d, reason: collision with root package name */
    public o f12646d;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f12647e;

    /* renamed from: n, reason: collision with root package name */
    public final u f12655n;

    /* renamed from: c, reason: collision with root package name */
    public int f12645c = NoConst.RECORDING_TIME_INTERVAL;

    /* renamed from: f, reason: collision with root package name */
    public final g f12648f = new g(this);

    /* renamed from: g, reason: collision with root package name */
    public int f12649g = -1;

    /* renamed from: h, reason: collision with root package name */
    public long f12650h = 0;

    /* renamed from: i, reason: collision with root package name */
    public int f12651i = -1;

    /* renamed from: j, reason: collision with root package name */
    public long f12652j = 0;

    /* renamed from: k, reason: collision with root package name */
    public int f12653k = -1;
    public long l = 0;

    /* renamed from: m, reason: collision with root package name */
    public final HashSet f12654m = new HashSet();

    public h(AccService accService) {
        new HashSet();
        this.f12655n = new u(this, Looper.getMainLooper(), 13);
        this.f12644b = accService;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005b A[Catch: Exception -> 0x00f9, TryCatch #0 {Exception -> 0x00f9, blocks: (B:3:0x0002, B:4:0x0022, B:6:0x002c, B:8:0x0043, B:15:0x00f5, B:11:0x005b, B:13:0x00ef, B:14:0x00f2, B:17:0x00fb), top: B:35:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a() {
        try {
            s sVarT = q4.a.t(this.f12644b);
            this.f12645c = sVarT.o("intervalTime").e();
            this.f12646d = sVarT.p("keys");
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < this.f12646d.f19478a.size(); i10++) {
                KeyMapAccFindBean keyMapAccFindBean = new KeyMapAccFindBean();
                if (this.f12646d.l(i10).g().f19480a.containsKey("isOpen")) {
                    boolean zB = this.f12646d.l(i10).g().o("isOpen").b();
                    keyMapAccFindBean.isOpen = zB;
                    if (zB) {
                        keyMapAccFindBean.pos = i10;
                        keyMapAccFindBean.keyCode = this.f12646d.l(i10).g().o("keyCode").e();
                        keyMapAccFindBean.zhKeyCode = this.f12646d.l(i10).g().o("zhKeyCode").e();
                        keyMapAccFindBean.isHaveClick = !this.f12646d.l(i10).g().p("click").f19478a.isEmpty();
                        keyMapAccFindBean.isHaveLongClick = !this.f12646d.l(i10).g().p("longClick").f19478a.isEmpty();
                        keyMapAccFindBean.isHaveDoubleClick = !this.f12646d.l(i10).g().p("doubleClick").f19478a.isEmpty();
                        if (this.f12646d.l(i10).g().p("zhClick").f19478a.isEmpty()) {
                            keyMapAccFindBean.zhKeyCode = -1;
                        }
                        arrayList.add(keyMapAccFindBean);
                    }
                }
            }
            this.f12647e = arrayList;
        } catch (Exception unused) {
        }
        if (this.f12647e.isEmpty()) {
            c();
            return;
        }
        if (this.f12643a == null) {
            try {
                IBinder service = ServiceManager.getService(HmiConst.IBINDER_HMI);
                if (service == null) {
                    return;
                }
                IHmi iHmiAsInterface = IHmi.Stub.asInterface(service);
                this.f12643a = iHmiAsInterface;
                if (iHmiAsInterface == null) {
                    return;
                }
                iHmiAsInterface.registerHmiCallback(this.f12648f);
            } catch (Exception e7) {
                e7.getMessage();
                e7.printStackTrace();
            }
        }
    }

    public final void b(KeyEvent keyEvent) {
        if (this.f12647e.isEmpty()) {
            c();
            return;
        }
        AccService accService = this.f12644b;
        if (accService.F) {
            return;
        }
        int action = keyEvent.getAction();
        HashSet hashSet = this.f12654m;
        if (action != 1) {
            hashSet.clear();
        } else if (hashSet.remove(Integer.valueOf(keyEvent.getKeyCode()))) {
            return;
        }
        if (keyEvent.getAction() != 0 || this.f12651i < 0 || System.currentTimeMillis() - this.f12652j >= PopupConst.DURATION_POPUP_SHORT) {
            try {
                int i10 = this.f12649g;
                u uVar = this.f12655n;
                long j10 = 0;
                if (i10 != -1 && keyEvent.getAction() == 0) {
                    if (System.currentTimeMillis() - this.f12650h < this.f12645c && keyEvent.getKeyCode() == ((KeyMapAccFindBean) this.f12647e.get(this.f12649g)).zhKeyCode) {
                        hashSet.add(Integer.valueOf(keyEvent.getKeyCode()));
                        uVar.removeMessages(0);
                        uVar.removeMessages(1);
                        accService.b(this.f12646d.l(this.f12649g).g().p("zhClick"));
                        this.f12649g = -1;
                        this.f12650h = 0L;
                        this.f12651i = -1;
                        this.f12652j = 0L;
                        this.f12653k = -1;
                        this.l = 0L;
                        throw new Exception();
                    }
                    this.f12649g = -1;
                    this.f12650h = 0L;
                }
                Iterator it = this.f12647e.iterator();
                while (it.hasNext()) {
                    KeyMapAccFindBean keyMapAccFindBean = (KeyMapAccFindBean) it.next();
                    if (keyMapAccFindBean.keyCode == keyEvent.getKeyCode()) {
                        uVar.removeMessages(1);
                        if (keyEvent.getAction() == 0) {
                            if (!keyMapAccFindBean.isHaveDoubleClick && !keyMapAccFindBean.isHaveLongClick && keyMapAccFindBean.zhKeyCode == -1 && keyMapAccFindBean.isHaveClick) {
                                accService.b(this.f12646d.l(keyMapAccFindBean.pos).g().p("click"));
                                this.f12649g = -1;
                                this.f12650h = j10;
                                this.f12651i = -1;
                                this.f12652j = j10;
                                this.f12653k = -1;
                                this.l = j10;
                                hashSet.add(Integer.valueOf(keyEvent.getKeyCode()));
                                throw new Exception();
                            }
                            if (keyMapAccFindBean.isHaveLongClick) {
                                Message messageObtain = Message.obtain();
                                messageObtain.what = 1;
                                messageObtain.arg1 = keyMapAccFindBean.pos;
                                uVar.sendMessageDelayed(messageObtain, this.f12645c);
                            }
                            this.f12651i = keyMapAccFindBean.pos;
                            this.f12652j = System.currentTimeMillis();
                        } else if (keyEvent.getAction() == 1) {
                            uVar.removeMessages(1);
                            if (this.f12653k == keyMapAccFindBean.pos && keyMapAccFindBean.isHaveDoubleClick && System.currentTimeMillis() - this.l < this.f12645c) {
                                uVar.removeMessages(0);
                                accService.b(this.f12646d.l(keyMapAccFindBean.pos).g().p("doubleClick"));
                                this.f12649g = -1;
                                this.f12650h = 0L;
                                this.f12651i = -1;
                                this.f12652j = 0L;
                                this.f12653k = -1;
                                this.l = 0L;
                                throw new Exception();
                            }
                            if (keyMapAccFindBean.isHaveClick) {
                                if (!keyMapAccFindBean.isHaveDoubleClick && keyMapAccFindBean.zhKeyCode == -1) {
                                    accService.b(this.f12646d.l(keyMapAccFindBean.pos).g().p("click"));
                                    this.f12649g = -1;
                                    this.f12650h = 0L;
                                    this.f12651i = -1;
                                    this.f12652j = 0L;
                                    this.f12653k = -1;
                                    this.l = 0L;
                                    throw new Exception();
                                }
                                Message messageObtain2 = Message.obtain();
                                messageObtain2.what = 0;
                                messageObtain2.arg1 = keyMapAccFindBean.pos;
                                uVar.sendMessageDelayed(messageObtain2, this.f12645c);
                            }
                            if (keyMapAccFindBean.zhKeyCode != -1) {
                                this.f12649g = keyMapAccFindBean.pos;
                                this.f12650h = System.currentTimeMillis();
                                j10 = 0;
                            } else {
                                this.f12649g = -1;
                                j10 = 0;
                                this.f12650h = 0L;
                            }
                            this.f12651i = -1;
                            this.f12652j = j10;
                            this.f12653k = keyMapAccFindBean.pos;
                            this.l = System.currentTimeMillis();
                        } else {
                            continue;
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public final void c() {
        this.f12655n.removeCallbacksAndMessages(null);
        IHmi iHmi = this.f12643a;
        if (iHmi != null) {
            try {
                iHmi.unregisterHmiCallback(this.f12648f);
            } catch (RemoteException unused) {
            }
            this.f12643a = null;
        }
    }
}
