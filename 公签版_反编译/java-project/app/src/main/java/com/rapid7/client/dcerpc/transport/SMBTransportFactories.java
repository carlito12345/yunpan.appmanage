package com.rapid7.client.dcerpc.transport;

import com.hierynomus.mserref.NtStatus;
import com.hierynomus.protocol.transport.TransportException;
import com.hierynomus.smbj.common.SMBException;
import com.hierynomus.smbj.session.Session;
import com.hierynomus.smbj.share.PipeShare;
import com.hierynomus.smbj.share.Share;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.rapid7.client.dcerpc.Interface;
import com.rapid7.helper.smbj.io.SMB2Exception;
import com.rapid7.helper.smbj.share.NamedPipe;
import g.b;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import java.util.LinkedList;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'WINREG' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class SMBTransportFactories {
    private static final /* synthetic */ SMBTransportFactories[] $VALUES;
    public static final SMBTransportFactories BROWSER_SRVSVC;
    public static final SMBTransportFactories LSASVC;
    public static final SMBTransportFactories SAMSVC;
    public static final SMBTransportFactories SRVSVC;
    private static final int STATUS_PIPE_NOT_AVAILABLE_BACKOFF_TIME_MS = 3000;
    private static final int STATUS_PIPE_NOT_AVAILABLE_RETRIES = 1;
    public static final SMBTransportFactories SVCCTL;
    public static final SMBTransportFactories WINREG;
    private final Interface abstractSyntax;
    private final String name;
    private final Interface transferSyntax;

    /* renamed from: com.rapid7.client.dcerpc.transport.SMBTransportFactories$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$hierynomus$mserref$NtStatus;

        static {
            int[] iArr = new int[NtStatus.values().length];
            $SwitchMap$com$hierynomus$mserref$NtStatus = iArr;
            try {
                iArr[NtStatus.STATUS_PIPE_NOT_AVAILABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    static {
        Interface r4 = Interface.WINREG_V1_0;
        Interface r13 = Interface.NDR_32BIT_V2;
        SMBTransportFactories sMBTransportFactories = new SMBTransportFactories("WINREG", 0, "winreg", r4, r13);
        WINREG = sMBTransportFactories;
        Interface r12 = Interface.SRVSVC_V3_0;
        SMBTransportFactories sMBTransportFactories2 = new SMBTransportFactories("SRVSVC", 1, "srvsvc", r12, r13);
        SRVSVC = sMBTransportFactories2;
        SMBTransportFactories sMBTransportFactories3 = new SMBTransportFactories("LSASVC", 2, "lsarpc", Interface.LSASVC_V0_0, r13);
        LSASVC = sMBTransportFactories3;
        SMBTransportFactories sMBTransportFactories4 = new SMBTransportFactories("SAMSVC", 3, "samr", Interface.SAMSVC_V1_0, r13);
        SAMSVC = sMBTransportFactories4;
        SMBTransportFactories sMBTransportFactories5 = new SMBTransportFactories("BROWSER_SRVSVC", 4, "browser", r12, r13);
        BROWSER_SRVSVC = sMBTransportFactories5;
        SMBTransportFactories sMBTransportFactories6 = new SMBTransportFactories("SVCCTL", 5, "svcctl", Interface.SVCCTL_V2_0, r13);
        SVCCTL = sMBTransportFactories6;
        $VALUES = new SMBTransportFactories[]{sMBTransportFactories, sMBTransportFactories2, sMBTransportFactories3, sMBTransportFactories4, sMBTransportFactories5, sMBTransportFactories6};
    }

    private SMBTransportFactories(String str, int i10, String str2, Interface r4, Interface r5) {
        this.name = str2;
        this.abstractSyntax = r4;
        this.transferSyntax = r5;
    }

    private NamedPipe openAndHandleStatusPipeNotAvailable(Session session, PipeShare pipeShare) throws IllegalAccessException, InterruptedException, SMBException, IllegalArgumentException, SMB2Exception, InterruptedIOException, InvocationTargetException {
        LinkedList linkedList = new LinkedList();
        for (int i10 = -1; i10 < 1; i10++) {
            try {
                return openPipe(session, pipeShare);
            } catch (SMB2Exception e7) {
                linkedList.offer(e7);
                if (AnonymousClass1.$SwitchMap$com$hierynomus$mserref$NtStatus[e7.getStatus().ordinal()] != 1) {
                    throw ((SMB2Exception) linkedList.poll());
                }
                try {
                    Thread.sleep(PopupConst.DURATION_POPUP_SHORT);
                } catch (InterruptedException e10) {
                    InterruptedIOException interruptedIOException = new InterruptedIOException();
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(interruptedIOException, e10);
                        throw interruptedIOException;
                    } catch (Exception unused) {
                        throw interruptedIOException;
                    }
                }
            }
        }
        if (!linkedList.isEmpty()) {
            throw ((SMB2Exception) linkedList.poll());
        }
        throw new SMBException("Unknown error when opening pipe: " + pipeShare.getSmbPath().toString());
    }

    private NamedPipe openPipe(Session session, PipeShare pipeShare) {
        return new NamedPipe(session, pipeShare, this.name);
    }

    public static SMBTransportFactories valueOf(String str) {
        return (SMBTransportFactories) Enum.valueOf(SMBTransportFactories.class, str);
    }

    public static SMBTransportFactories[] values() {
        return (SMBTransportFactories[]) $VALUES.clone();
    }

    public RPCTransport getTransport(Session session) throws IOException {
        Share shareConnectShare = session.connectShare("IPC$");
        if (!(shareConnectShare instanceof PipeShare)) {
            throw new TransportException(b.j(this.name, " not a named pipe."));
        }
        SMBTransport sMBTransport = new SMBTransport(openAndHandleStatusPipeNotAvailable(session, (PipeShare) shareConnectShare));
        sMBTransport.bind(this.abstractSyntax, this.transferSyntax);
        return sMBTransport;
    }
}
