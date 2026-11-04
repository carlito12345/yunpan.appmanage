package com.hierynomus.smbj.event;

/* loaded from: classes.dex */
public class ConnectionClosed implements SMBEvent {
    private String hostname;
    private int port;

    public ConnectionClosed(String str, int i10) {
        this.hostname = str;
        this.port = i10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ConnectionClosed connectionClosed = (ConnectionClosed) obj;
        if (this.port != connectionClosed.port) {
            return false;
        }
        return this.hostname.equals(connectionClosed.hostname);
    }

    public String getHostname() {
        return this.hostname;
    }

    public int getPort() {
        return this.port;
    }

    public int hashCode() {
        return (this.hostname.hashCode() * 31) + this.port;
    }
}
