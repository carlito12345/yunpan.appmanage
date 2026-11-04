package okhttp3.internal.http2;

import fg.k;
import java.util.List;

/* loaded from: classes.dex */
public interface PushObserver {
    public static final PushObserver CANCEL = new PushObserver() { // from class: okhttp3.internal.http2.PushObserver.1
        @Override // okhttp3.internal.http2.PushObserver
        public boolean onData(int i10, k kVar, int i11, boolean z) {
            kVar.skip(i11);
            return true;
        }

        @Override // okhttp3.internal.http2.PushObserver
        public boolean onHeaders(int i10, List<Header> list, boolean z) {
            return true;
        }

        @Override // okhttp3.internal.http2.PushObserver
        public boolean onRequest(int i10, List<Header> list) {
            return true;
        }

        @Override // okhttp3.internal.http2.PushObserver
        public void onReset(int i10, ErrorCode errorCode) {
        }
    };

    boolean onData(int i10, k kVar, int i11, boolean z);

    boolean onHeaders(int i10, List<Header> list, boolean z);

    boolean onRequest(int i10, List<Header> list);

    void onReset(int i10, ErrorCode errorCode);
}
