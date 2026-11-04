package net.engio.mbassy.common;

import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import net.engio.mbassy.common.AbstractConcurrentSet;

/* loaded from: classes.dex */
public class WeakConcurrentSet<T> extends AbstractConcurrentSet<T> {
    public WeakConcurrentSet() {
        super(new WeakHashMap());
    }

    @Override // net.engio.mbassy.common.AbstractConcurrentSet
    public AbstractConcurrentSet.Entry<T> createEntry(T t10, AbstractConcurrentSet.Entry<T> entry) {
        return entry != null ? new WeakEntry(t10, entry) : new WeakEntry(t10);
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        return new Iterator<T>() { // from class: net.engio.mbassy.common.WeakConcurrentSet.1
            private ISetEntry<T> current;

            {
                this.current = WeakConcurrentSet.this.head;
            }

            private void removeOrphans() {
                ISetEntry<T> iSetEntry;
                ReentrantReadWriteLock.WriteLock writeLock = WeakConcurrentSet.this.lock.writeLock();
                try {
                    writeLock.lock();
                    do {
                        ISetEntry<T> iSetEntry2 = this.current;
                        this.current = iSetEntry2.next();
                        WeakConcurrentSet weakConcurrentSet = WeakConcurrentSet.this;
                        AbstractConcurrentSet.Entry<T> entry = weakConcurrentSet.head;
                        if (iSetEntry2 == entry) {
                            weakConcurrentSet.head = entry.next();
                        }
                        iSetEntry2.remove();
                        iSetEntry = this.current;
                        if (iSetEntry == null) {
                            break;
                        }
                    } while (iSetEntry.getValue() == null);
                    writeLock.unlock();
                } catch (Throwable th2) {
                    writeLock.unlock();
                    throw th2;
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                ISetEntry<T> iSetEntry = this.current;
                if (iSetEntry == null) {
                    return false;
                }
                if (iSetEntry.getValue() != null) {
                    return true;
                }
                removeOrphans();
                return this.current != null;
            }

            @Override // java.util.Iterator
            public T next() {
                ISetEntry<T> iSetEntry = this.current;
                if (iSetEntry == null) {
                    return null;
                }
                T value = iSetEntry.getValue();
                if (value == null) {
                    removeOrphans();
                    return (T) next();
                }
                this.current = this.current.next();
                return value;
            }

            @Override // java.util.Iterator
            public void remove() {
                ISetEntry<T> iSetEntry = this.current;
                if (iSetEntry == null) {
                    return;
                }
                ISetEntry<T> next = iSetEntry.next();
                WeakConcurrentSet.this.remove(this.current.getValue());
                this.current = next;
            }
        };
    }

    public static class WeakEntry<T> extends AbstractConcurrentSet.Entry<T> {
        private WeakReference<T> value;

        @Override // net.engio.mbassy.common.ISetEntry
        public T getValue() {
            return this.value.get();
        }

        private WeakEntry(T t10, AbstractConcurrentSet.Entry<T> entry) {
            super(entry);
            this.value = new WeakReference<>(t10);
        }

        private WeakEntry(T t10) {
            this.value = new WeakReference<>(t10);
        }
    }
}
