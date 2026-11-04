package jg;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class h extends HashMap {
    public h() {
        put(u.COPY, new k(3));
        put(u.LZMA, new k(7));
        put(u.LZMA2, new k(6));
        put(u.DEFLATE, new k(0));
        put(u.DEFLATE64, new k(4));
        put(u.BZIP2, new k(2));
        put(u.AES256SHA256, new k(1));
        put(u.BCJ_X86_FILTER, new i(new yh.a(5)));
        put(u.BCJ_PPC_FILTER, new i(new yh.a(3)));
        put(u.BCJ_IA64_FILTER, new i(new yh.a(2)));
        put(u.BCJ_ARM_FILTER, new i(new yh.a(0)));
        put(u.BCJ_ARM_THUMB_FILTER, new i(new yh.a(1)));
        put(u.BCJ_SPARC_FILTER, new i(new yh.a(4)));
        put(u.DELTA_FILTER, new k(5));
    }
}
