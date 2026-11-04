package com.hierynomus.smbj.connection;

import com.hierynomus.smbj.session.Session;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class SessionTable {
    private ReentrantLock lock = new ReentrantLock();
    private Map<Long, Session> lookup = new HashMap();

    public Collection<Session> activeSessions() {
        this.lock.lock();
        try {
            return new ArrayList(this.lookup.values());
        } finally {
            this.lock.unlock();
        }
    }

    public Session find(Long l) {
        this.lock.lock();
        try {
            return this.lookup.get(l);
        } finally {
            this.lock.unlock();
        }
    }

    public boolean isActive(Long l) {
        this.lock.lock();
        try {
            return this.lookup.containsKey(l);
        } finally {
            this.lock.unlock();
        }
    }

    public void registerSession(Long l, Session session) {
        this.lock.lock();
        try {
            this.lookup.put(l, session);
        } finally {
            this.lock.unlock();
        }
    }

    public Session removeSession(Long l) {
        this.lock.lock();
        try {
            return this.lookup.remove(l);
        } finally {
            this.lock.unlock();
        }
    }
}
