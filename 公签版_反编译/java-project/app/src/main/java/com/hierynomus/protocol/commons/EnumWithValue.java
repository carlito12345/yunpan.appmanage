package com.hierynomus.protocol.commons;

import java.lang.Enum;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Set;

/* loaded from: classes.dex */
public interface EnumWithValue<E extends Enum<E>> {

    public static class EnumUtils {
        public static <E extends Enum<E>> E ensureNotNull(E e7, E e10) {
            return e7 != null ? e7 : e10;
        }

        /* JADX WARN: Incorrect types in method signature: <E::Lcom/hierynomus/protocol/commons/EnumWithValue<*>;>(JTE;)Z */
        public static boolean isSet(long j10, EnumWithValue enumWithValue) {
            return (j10 & enumWithValue.getValue()) > 0;
        }

        public static <E extends Enum<E>> EnumSet<E> toEnumSet(long j10, Class<E> cls) {
            if (!EnumWithValue.class.isAssignableFrom(cls)) {
                throw new IllegalArgumentException("Can only be used with EnumWithValue enums.");
            }
            EnumSet<E> enumSetNoneOf = EnumSet.noneOf(cls);
            for (E e7 : cls.getEnumConstants()) {
                if (isSet(j10, (EnumWithValue) e7)) {
                    enumSetNoneOf.add(e7);
                }
            }
            return enumSetNoneOf;
        }

        public static <E extends Enum<E>> long toLong(Collection<E> collection) {
            long value = 0;
            for (E e7 : collection) {
                if (!(e7 instanceof EnumWithValue)) {
                    throw new IllegalArgumentException("Can only be used with EnumWithValue enums.");
                }
                value |= ((EnumWithValue) e7).getValue();
            }
            return value;
        }

        /* JADX WARN: Incorrect return type in method signature: <E::Lcom/hierynomus/protocol/commons/EnumWithValue<*>;>(JLjava/lang/Class<TE;>;TE;)TE; */
        public static EnumWithValue valueOf(long j10, Class cls, EnumWithValue enumWithValue) {
            for (EnumWithValue enumWithValue2 : (EnumWithValue[]) cls.getEnumConstants()) {
                if (enumWithValue2.getValue() == j10) {
                    return enumWithValue2;
                }
            }
            return enumWithValue;
        }

        public static <E extends Enum<E>> Set<E> ensureNotNull(Set<E> set, Class<E> cls) {
            return set == null ? EnumSet.noneOf(cls) : set;
        }
    }

    long getValue();
}
