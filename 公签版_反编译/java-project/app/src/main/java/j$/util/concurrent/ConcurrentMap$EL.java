package j$.util.concurrent;

import j$.util.Objects;
import java.util.concurrent.ConcurrentMap;
import java.util.function.Function;

/* renamed from: j$.util.concurrent.ConcurrentMap$-EL, reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class ConcurrentMap$EL {
    public static Object computeIfAbsent(ConcurrentMap concurrentMap, Object obj, Function function) {
        Object objApply;
        if (concurrentMap instanceof v) {
            return ((v) concurrentMap).computeIfAbsent(obj, function);
        }
        Objects.requireNonNull(function);
        Object objPutIfAbsent = concurrentMap.get(obj);
        return (objPutIfAbsent == null && (objApply = function.apply(obj)) != null && (objPutIfAbsent = concurrentMap.putIfAbsent(obj, objApply)) == null) ? objApply : objPutIfAbsent;
    }
}
