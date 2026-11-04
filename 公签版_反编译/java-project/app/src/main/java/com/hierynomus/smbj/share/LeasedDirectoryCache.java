package com.hierynomus.smbj.share;

import com.hierynomus.msfscc.FileInformationClass;
import com.hierynomus.msfscc.fileinformation.FileDirectoryQueryableInformation;
import com.hierynomus.msfscc.fileinformation.FileInformation;
import com.hierynomus.msfscc.fileinformation.FileInformationFactory;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public class LeasedDirectoryCache {
    private static final AtomicLong TOTAL_HITS = new AtomicLong();
    private static final AtomicLong TOTAL_POPULATES = new AtomicLong();
    private final ConcurrentMap<CacheKey, List<? extends FileDirectoryQueryableInformation>> entries = new ConcurrentHashMap();
    private final AtomicLong serveHits = new AtomicLong();
    private final AtomicLong populates = new AtomicLong();

    public static final class CacheKey {
        private final FileInformationClass informationClass;
        private final String path;
        private final String searchPattern;

        public CacheKey(String str, FileInformationClass fileInformationClass, String str2) {
            this.path = str == null ? "" : str.toLowerCase();
            this.informationClass = fileInformationClass;
            this.searchPattern = str2 == null ? "" : str2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CacheKey)) {
                return false;
            }
            CacheKey cacheKey = (CacheKey) obj;
            return this.path.equals(cacheKey.path) && this.informationClass == cacheKey.informationClass && this.searchPattern.equals(cacheKey.searchPattern);
        }

        public int hashCode() {
            return Objects.hash(this.path, this.informationClass, this.searchPattern);
        }
    }

    private static <F extends FileInformation> FileInformationClass infoClassOf(Class<F> cls) {
        return FileInformationFactory.getDecoder(cls).getInformationClass();
    }

    public static boolean isCacheable(String str) {
        return str == null || str.isEmpty();
    }

    public static void resetStats() {
        TOTAL_HITS.set(0L);
        TOTAL_POPULATES.set(0L);
    }

    public static long totalHits() {
        return TOTAL_HITS.get();
    }

    public static long totalPopulates() {
        return TOTAL_POPULATES.get();
    }

    public long getPopulates() {
        return this.populates.get();
    }

    public long getServeHits() {
        return this.serveHits.get();
    }

    public void invalidateAll() {
        this.entries.clear();
    }

    public <I extends FileDirectoryQueryableInformation> void populate(String str, Class<I> cls, String str2, List<I> list) {
        if (isCacheable(str2)) {
            this.entries.put(new CacheKey(str, infoClassOf(cls), str2), Collections.unmodifiableList(new ArrayList(list)));
            this.populates.incrementAndGet();
            TOTAL_POPULATES.incrementAndGet();
        }
    }

    public <I extends FileDirectoryQueryableInformation> List<I> serve(String str, Class<I> cls, String str2) {
        if (!isCacheable(str2)) {
            return null;
        }
        List<I> list = (List) this.entries.get(new CacheKey(str, infoClassOf(cls), str2));
        if (list != null) {
            this.serveHits.incrementAndGet();
            TOTAL_HITS.incrementAndGet();
        }
        return list;
    }

    public int size() {
        return this.entries.size();
    }
}
