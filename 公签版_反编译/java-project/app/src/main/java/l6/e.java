package l6;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.yunpan.appmanage.bean.LogcatRxHandlerMsgBean;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class e extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10655a = 0;

    public e() {
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (this.f10655a) {
            case 0:
                super.handleMessage(message);
                if (message.what != 1000) {
                    return;
                }
                Iterator it = ((Map) message.obj).entrySet().iterator();
                if (it.hasNext()) {
                    g.b.t(((Map.Entry) it.next()).getKey());
                    throw null;
                }
                return;
            default:
                int i10 = message.what;
                try {
                    if (i10 == 0) {
                        LogcatRxHandlerMsgBean logcatRxHandlerMsgBean = (LogcatRxHandlerMsgBean) message.obj;
                        ((mc.b) logcatRxHandlerMsgBean.emitter).f(logcatRxHandlerMsgBean.jsonArray);
                    } else {
                        if (i10 != 1) {
                            return;
                        }
                        LogcatRxHandlerMsgBean logcatRxHandlerMsgBean2 = (LogcatRxHandlerMsgBean) message.obj;
                        ((mc.b) logcatRxHandlerMsgBean2.emitter).f(logcatRxHandlerMsgBean2.jsonArray);
                    }
                    return;
                } catch (Exception unused) {
                    return;
                }
        }
    }

    public e(Looper looper) {
        super(looper);
    }
}
