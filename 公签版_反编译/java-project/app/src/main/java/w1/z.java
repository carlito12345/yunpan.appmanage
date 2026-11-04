package w1;

import android.net.Uri;
import com.hsae.autosdk.core.NoConst;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;

/* loaded from: classes.dex */
public final class z extends c {

    /* renamed from: e, reason: collision with root package name */
    public final int f17414e;

    /* renamed from: f, reason: collision with root package name */
    public final byte[] f17415f;

    /* renamed from: g, reason: collision with root package name */
    public final DatagramPacket f17416g;

    /* renamed from: h, reason: collision with root package name */
    public Uri f17417h;

    /* renamed from: i, reason: collision with root package name */
    public DatagramSocket f17418i;

    /* renamed from: j, reason: collision with root package name */
    public MulticastSocket f17419j;

    /* renamed from: k, reason: collision with root package name */
    public InetAddress f17420k;
    public boolean l;

    /* renamed from: m, reason: collision with root package name */
    public int f17421m;

    public z() {
        super(true);
        this.f17414e = 8000;
        byte[] bArr = new byte[NoConst.MIN_HEARTBEAT_INTERVAL];
        this.f17415f = bArr;
        this.f17416g = new DatagramPacket(bArr, 0, NoConst.MIN_HEARTBEAT_INTERVAL);
    }

    @Override // w1.h
    public final void close() throws IOException {
        this.f17417h = null;
        MulticastSocket multicastSocket = this.f17419j;
        if (multicastSocket != null) {
            try {
                InetAddress inetAddress = this.f17420k;
                inetAddress.getClass();
                multicastSocket.leaveGroup(inetAddress);
            } catch (IOException unused) {
            }
            this.f17419j = null;
        }
        DatagramSocket datagramSocket = this.f17418i;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f17418i = null;
        }
        this.f17420k = null;
        this.f17421m = 0;
        if (this.l) {
            this.l = false;
            l();
        }
    }

    @Override // w1.h
    public final Uri getUri() {
        return this.f17417h;
    }

    @Override // w1.h
    public final long j(j jVar) throws IOException {
        Uri uri = jVar.f17367a;
        this.f17417h = uri;
        String host = uri.getHost();
        host.getClass();
        int port = this.f17417h.getPort();
        m();
        try {
            this.f17420k = InetAddress.getByName(host);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.f17420k, port);
            if (this.f17420k.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.f17419j = multicastSocket;
                multicastSocket.joinGroup(this.f17420k);
                this.f17418i = this.f17419j;
            } else {
                this.f17418i = new DatagramSocket(inetSocketAddress);
            }
            this.f17418i.setSoTimeout(this.f17414e);
            this.l = true;
            n(jVar);
            return -1L;
        } catch (IOException e7) {
            throw new y(e7, 2001);
        } catch (SecurityException e10) {
            throw new y(e10, 2006);
        }
    }

    @Override // r1.h
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 == 0) {
            return 0;
        }
        int i12 = this.f17421m;
        DatagramPacket datagramPacket = this.f17416g;
        if (i12 == 0) {
            try {
                DatagramSocket datagramSocket = this.f17418i;
                datagramSocket.getClass();
                datagramSocket.receive(datagramPacket);
                int length = datagramPacket.getLength();
                this.f17421m = length;
                k(length);
            } catch (SocketTimeoutException e7) {
                throw new y(e7, 2002);
            } catch (IOException e10) {
                throw new y(e10, 2001);
            }
        }
        int length2 = datagramPacket.getLength();
        int i13 = this.f17421m;
        int iMin = Math.min(i13, i11);
        System.arraycopy(this.f17415f, length2 - i13, bArr, i10, iMin);
        this.f17421m -= iMin;
        return iMin;
    }
}
