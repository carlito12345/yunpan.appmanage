package vd;

import com.hierynomus.smbj.SMBClient;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public final class d0 implements vc.o {

    /* renamed from: e, reason: collision with root package name */
    public static final Logger f16820e = LoggerFactory.getLogger((Class<?>) d0.class);

    /* renamed from: a, reason: collision with root package name */
    public final LinkedList f16821a = new LinkedList();

    /* renamed from: b, reason: collision with root package name */
    public final LinkedList f16822b = new LinkedList();

    /* renamed from: c, reason: collision with root package name */
    public final ConcurrentLinkedQueue f16823c = new ConcurrentLinkedQueue();

    /* renamed from: d, reason: collision with root package name */
    public final ConcurrentHashMap f16824d = new ConcurrentHashMap();

    public final void a() {
        synchronized (this.f16821a) {
            while (true) {
                try {
                    b0 b0Var = (b0) this.f16823c.poll();
                    if (b0Var != null) {
                        Logger logger = f16820e;
                        if (logger.isDebugEnabled()) {
                            logger.debug("Removing transport connection " + b0Var + " (" + System.identityHashCode(b0Var) + ")");
                        }
                        this.f16821a.remove(b0Var);
                        this.f16822b.remove(b0Var);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public final b0 b(vc.b bVar, sd.k kVar, int i10, InetAddress inetAddress, int i11, String str, boolean z, boolean z4) {
        int i12;
        Logger logger = f16820e;
        for (b0 b0Var : this.f16821a) {
            if (b0Var.f8193a != 5 && b0Var.f8193a != 6) {
                String strC = str == null ? kVar.c() : str;
                String str2 = b0Var.f16811y;
                if (str2 == null || strC.equalsIgnoreCase(str2)) {
                    if (kVar.equals(b0Var.f16803n) && (i10 == 0 || i10 == (i12 = b0Var.f16805q) || (i10 == 445 && i12 == 139))) {
                        InetAddress inetAddress2 = b0Var.l;
                        if (inetAddress == inetAddress2 || (inetAddress != null && inetAddress.equals(inetAddress2))) {
                            if (i11 == b0Var.f16802m && (((wc.a) bVar.e()).z == 0 || b0Var.f16810x.size() < ((wc.a) bVar.e()).z)) {
                                try {
                                    Socket socket = b0Var.f16804p;
                                    if (!(b0Var.f8193a == 5 || b0Var.f8193a == 6 || socket == null || socket.isClosed()) && (!z4 || !b0Var.T())) {
                                        if (!z || b0Var.o0()) {
                                            if (z || ((wc.a) bVar.e()).f17838h || !b0Var.o0() || b0Var.l0().Q()) {
                                                if (b0Var.l0().J(bVar)) {
                                                    if (logger.isTraceEnabled()) {
                                                        logger.trace("Reusing transport connection " + b0Var);
                                                    }
                                                    b0Var.b0();
                                                    return b0Var;
                                                }
                                                if (logger.isTraceEnabled()) {
                                                    logger.trace("Cannot reuse, different config " + b0Var);
                                                }
                                            } else if (logger.isTraceEnabled()) {
                                                logger.debug("Cannot reuse, signing enforced on connection " + b0Var);
                                            }
                                        } else if (logger.isTraceEnabled()) {
                                            logger.debug("Cannot reuse, signing enforced but connection does not have it enabled " + b0Var);
                                        }
                                    }
                                } catch (vc.c e7) {
                                    logger.debug("Error while checking for reuse", (Throwable) e7);
                                }
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    public final b0 c(vc.b bVar, String str, int i10, boolean z, boolean z4) {
        b0 b0VarD;
        int i11 = 1;
        sd.k[] kVarArrE = ((sd.f) bVar.i()).e(str, true);
        if (kVarArrE.length == 0) {
            throw new UnknownHostException(str);
        }
        Arrays.sort(kVarArrE, new ua.k0(i11, this));
        synchronized (this.f16821a) {
            try {
                int length = kVarArrE.length;
                int i12 = 0;
                while (true) {
                    if (i12 >= length) {
                        IOException e7 = null;
                        for (sd.k kVar : kVarArrE) {
                            Logger logger = f16820e;
                            if (logger.isDebugEnabled()) {
                                logger.debug("Trying address {}", kVar);
                            }
                            try {
                                b0VarD = d(bVar, kVar, i10, z, z4);
                                b0VarD.y0(b0.class);
                                try {
                                    try {
                                        b0VarD.j0();
                                        b0VarD.b0();
                                        b0VarD.Y();
                                    } catch (IOException e10) {
                                        e(b0VarD);
                                        throw e10;
                                    }
                                } finally {
                                }
                            } catch (IOException e11) {
                                e7 = e11;
                                String strB = kVar.b();
                                Integer num = (Integer) this.f16824d.get(strB);
                                if (num == null) {
                                    this.f16824d.put(strB, 1);
                                } else {
                                    this.f16824d.put(strB, Integer.valueOf(num.intValue() + 1));
                                }
                            }
                        }
                        if (e7 != null) {
                            throw e7;
                        }
                        throw new he.f("All connection attempts failed");
                    }
                    int i13 = i12;
                    b0VarD = b(bVar, kVarArrE[i12], i10, ((wc.a) bVar.e()).E, ((wc.a) bVar.e()).F, str, z4, true);
                    if (b0VarD == null) {
                        i12 = i13 + 1;
                    }
                }
            } finally {
            }
        }
        return b0VarD;
    }

    public final b0 d(vc.b bVar, sd.k kVar, int i10, boolean z, boolean z4) {
        Logger logger;
        b0 b0Var;
        InetAddress inetAddress = ((wc.a) bVar.e()).E;
        int i11 = ((wc.a) bVar.e()).F;
        int i12 = i10 <= 0 ? SMBClient.DEFAULT_PORT : i10;
        synchronized (this.f16821a) {
            try {
                a();
                Logger logger2 = f16820e;
                if (logger2.isTraceEnabled()) {
                    logger2.trace("Exclusive " + z + " enforced signing " + z4);
                }
                if (z || ((wc.a) bVar.e()).z == 1) {
                    logger = logger2;
                } else {
                    logger = logger2;
                    b0Var = b(bVar, kVar, i12, inetAddress, i11, null, z4, false);
                    if (b0Var != null) {
                    }
                }
                b0Var = new b0(bVar, kVar, i12, inetAddress, i11, z4);
                if (logger.isDebugEnabled()) {
                    logger.debug("New transport connection " + b0Var);
                }
                if (z) {
                    this.f16822b.add(b0Var);
                } else {
                    this.f16821a.add(0, b0Var);
                }
            } finally {
            }
        }
        return b0Var;
    }

    public final void e(b0 b0Var) {
        Logger logger = f16820e;
        if (logger.isDebugEnabled()) {
            logger.debug("Scheduling transport connection for removal " + b0Var + " (" + System.identityHashCode(b0Var) + ")");
        }
        this.f16823c.add(b0Var);
    }
}
