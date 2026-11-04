package net.engio.mbassy.common;

import java.util.HashMap;
import java.util.Iterator;
import net.engio.mbassy.common.AbstractConcurrentSet;

/* loaded from: classes.dex */
public class StrongConcurrentSet<T> extends AbstractConcurrentSet<T> {
    public StrongConcurrentSet() {
        super(new HashMap());
    }

    @Override // net.engio.mbassy.common.AbstractConcurrentSet
    public AbstractConcurrentSet.Entry<T> createEntry(T t10, AbstractConcurrentSet.Entry<T> entry) {
        return entry != null ? new StrongEntry(t10, entry) : new StrongEntry(t10);
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        return new Iterator<T>() { // from class: net.engio.mbassy.common.StrongConcurrentSet.1
            private ISetEntry<T> current;

            {
                this.current = StrongConcurrentSet.this.head;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.current != null;
            }

            @Override // java.util.Iterator
            public T next() {
                ISetEntry<T> iSetEntry = this.current;
                if (iSetEntry == null) {
                    return null;
                }
                T value = iSetEntry.getValue();
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
                StrongConcurrentSet.this.remove(this.current.getValue());
                this.current = next;
            }
        };
    }

    public static class StrongEntry<T> extends AbstractConcurrentSet.Entry<T> {
        private T value;

        @Override // net.engio.mbassy.common.ISetEntry
        public T getValue() {
            return this.value;
        }

        private StrongEntry(T t10, AbstractConcurrentSet.Entry<T> entry) {
            super(entry);
            this.value = t10;
        }

        private StrongEntry(T t10) {
            this.value = t10;
        }
    }
}
