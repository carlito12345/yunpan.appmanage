package okhttp3;

import fg.l;

/* loaded from: classes.dex */
public interface WebSocket {

    public interface Factory {
        WebSocket newWebSocket(Request request, WebSocketListener webSocketListener);
    }

    void cancel();

    boolean close(int i10, String str);

    long queueSize();

    Request request();

    boolean send(l lVar);

    boolean send(String str);
}
