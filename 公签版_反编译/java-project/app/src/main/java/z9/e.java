package z9;

import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbRequest;
import java.io.Closeable;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.LinkedList;

/* loaded from: classes.dex */
public final class e implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final UsbDeviceConnection f19508a;

    /* renamed from: b, reason: collision with root package name */
    public final UsbEndpoint f19509b;

    /* renamed from: c, reason: collision with root package name */
    public final UsbEndpoint f19510c;

    /* renamed from: d, reason: collision with root package name */
    public final UsbInterface f19511d;

    /* renamed from: e, reason: collision with root package name */
    public final LinkedList f19512e = new LinkedList();

    public e(UsbDeviceConnection usbDeviceConnection, UsbInterface usbInterface) {
        this.f19508a = usbDeviceConnection;
        this.f19511d = usbInterface;
        UsbEndpoint usbEndpoint = null;
        UsbEndpoint usbEndpoint2 = null;
        for (int i10 = 0; i10 < usbInterface.getEndpointCount(); i10++) {
            UsbEndpoint endpoint = usbInterface.getEndpoint(i10);
            if (endpoint.getType() == 2) {
                if (endpoint.getDirection() == 0) {
                    usbEndpoint = endpoint;
                } else {
                    usbEndpoint2 = endpoint;
                }
            }
        }
        if (usbEndpoint == null || usbEndpoint2 == null) {
            throw new IllegalArgumentException("not all endpoints found");
        }
        this.f19509b = usbEndpoint;
        this.f19510c = usbEndpoint2;
    }

    public final void A(UsbRequest usbRequest) {
        synchronized (this.f19512e) {
            this.f19512e.add(usbRequest);
        }
    }

    public final void J(byte[] bArr) {
        int iBulkTransfer;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        int i10 = 0;
        while (true) {
            iBulkTransfer = this.f19508a.bulkTransfer(this.f19509b, bArr2, bArr.length - i10, 1000);
            if (iBulkTransfer < 0 || (i10 = i10 + iBulkTransfer) >= bArr.length) {
                break;
            } else {
                System.arraycopy(bArr, i10, bArr2, 0, bArr.length - i10);
            }
        }
        if (iBulkTransfer < 0) {
            throw new IOException("bulk transfer fail");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        UsbInterface usbInterface = this.f19511d;
        UsbDeviceConnection usbDeviceConnection = this.f19508a;
        usbDeviceConnection.releaseInterface(usbInterface);
        usbDeviceConnection.close();
    }

    public final void r(int i10, byte[] bArr) {
        UsbRequest usbRequest;
        UsbRequest usbRequestRequestWait;
        ByteBuffer byteBuffer;
        synchronized (this.f19512e) {
            try {
                if (this.f19512e.isEmpty()) {
                    usbRequest = new UsbRequest();
                    usbRequest.initialize(this.f19508a, this.f19510c);
                } else {
                    usbRequest = (UsbRequest) this.f19512e.removeFirst();
                }
            } finally {
            }
        }
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(i10).order(ByteOrder.LITTLE_ENDIAN);
        usbRequest.setClientData(byteBufferOrder);
        if (!usbRequest.queue(byteBufferOrder, i10)) {
            throw new IOException("队列读取UsbRequest失败");
        }
        do {
            usbRequestRequestWait = this.f19508a.requestWait();
            if (usbRequestRequestWait == null) {
                throw new IOException("Connection.requestWait return null");
            }
            byteBuffer = (ByteBuffer) usbRequestRequestWait.getClientData();
            usbRequestRequestWait.setClientData(null);
        } while (usbRequestRequestWait.getEndpoint() == this.f19509b);
        if (byteBufferOrder != byteBuffer) {
            throw new IOException("unexpected behavior");
        }
        A(usbRequestRequestWait);
        byteBufferOrder.flip();
        byteBufferOrder.get(bArr);
    }
}
