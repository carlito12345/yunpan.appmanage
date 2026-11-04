package org.simpleframework.xml.core;

/* loaded from: classes3.dex */
class SessionManager {
    private ThreadLocal<Reference> local = new ThreadLocal<>();

    public static class Reference {
        private int count;
        private Session session;

        public Reference(boolean z) {
            this.session = new Session(z);
        }

        public int clear() {
            int i10 = this.count - 1;
            this.count = i10;
            return i10;
        }

        public Session get() {
            int i10 = this.count;
            if (i10 >= 0) {
                this.count = i10 + 1;
            }
            return this.session;
        }
    }

    private Session create(boolean z) {
        Reference reference = new Reference(z);
        this.local.set(reference);
        return reference.get();
    }

    public void close() throws PersistenceException {
        Reference reference = this.local.get();
        if (reference == null) {
            throw new PersistenceException("Session does not exist", new Object[0]);
        }
        if (reference.clear() == 0) {
            this.local.remove();
        }
    }

    public Session open() {
        return open(true);
    }

    public Session open(boolean z) {
        Reference reference = this.local.get();
        return reference != null ? reference.get() : create(z);
    }
}
