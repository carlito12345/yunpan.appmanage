package com.hierynomus.smbj.server;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class ServerList {
    private ReentrantLock lock = new ReentrantLock();
    private Map<String, Server> lookup = new HashMap();

    public Server lookup(String str) {
        this.lock.lock();
        try {
            return this.lookup.get(str);
        } finally {
            this.lock.unlock();
        }
    }

    public void registerServer(Server server) {
        this.lock.lock();
        try {
            this.lookup.put(server.getServerName(), server);
        } finally {
            this.lock.unlock();
        }
    }

    public void unregister(String str) {
        this.lock.lock();
        try {
            this.lookup.remove(str);
        } finally {
            this.lock.unlock();
        }
    }
}
