package dh;

import j$.util.Objects;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.nio.channels.SocketChannel;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.InflaterInputStream;

/* loaded from: classes.dex */
public final class b extends Socket {

    /* renamed from: a, reason: collision with root package name */
    public final Socket f4643a;

    public b(Socket socket) {
        Objects.requireNonNull(socket, "delegate");
        this.f4643a = socket;
    }

    @Override // java.net.Socket
    public final void bind(SocketAddress socketAddress) throws IOException {
        this.f4643a.bind(socketAddress);
    }

    @Override // java.net.Socket, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.f4643a.close();
    }

    @Override // java.net.Socket
    public final void connect(SocketAddress socketAddress) throws IOException {
        this.f4643a.connect(socketAddress);
    }

    @Override // java.net.Socket
    public final SocketChannel getChannel() {
        return this.f4643a.getChannel();
    }

    @Override // java.net.Socket
    public final InetAddress getInetAddress() {
        return this.f4643a.getInetAddress();
    }

    @Override // java.net.Socket
    public final InputStream getInputStream() {
        return new InflaterInputStream(this.f4643a.getInputStream());
    }

    @Override // java.net.Socket
    public final boolean getKeepAlive() {
        return this.f4643a.getKeepAlive();
    }

    @Override // java.net.Socket
    public final InetAddress getLocalAddress() {
        return this.f4643a.getLocalAddress();
    }

    @Override // java.net.Socket
    public final int getLocalPort() {
        return this.f4643a.getLocalPort();
    }

    @Override // java.net.Socket
    public final SocketAddress getLocalSocketAddress() {
        return this.f4643a.getLocalSocketAddress();
    }

    @Override // java.net.Socket
    public final boolean getOOBInline() {
        return this.f4643a.getOOBInline();
    }

    @Override // java.net.Socket
    public final OutputStream getOutputStream() {
        return new DeflaterOutputStream(this.f4643a.getOutputStream());
    }

    @Override // java.net.Socket
    public final int getPort() {
        return this.f4643a.getPort();
    }

    @Override // java.net.Socket
    public final synchronized int getReceiveBufferSize() {
        return this.f4643a.getReceiveBufferSize();
    }

    @Override // java.net.Socket
    public final SocketAddress getRemoteSocketAddress() {
        return this.f4643a.getRemoteSocketAddress();
    }

    @Override // java.net.Socket
    public final boolean getReuseAddress() {
        return this.f4643a.getReuseAddress();
    }

    @Override // java.net.Socket
    public final synchronized int getSendBufferSize() {
        return this.f4643a.getSendBufferSize();
    }

    @Override // java.net.Socket
    public final int getSoLinger() {
        return this.f4643a.getSoLinger();
    }

    @Override // java.net.Socket
    public final synchronized int getSoTimeout() {
        return this.f4643a.getSoTimeout();
    }

    @Override // java.net.Socket
    public final boolean getTcpNoDelay() {
        return this.f4643a.getTcpNoDelay();
    }

    @Override // java.net.Socket
    public final int getTrafficClass() {
        return this.f4643a.getTrafficClass();
    }

    @Override // java.net.Socket
    public final boolean isBound() {
        return this.f4643a.isBound();
    }

    @Override // java.net.Socket
    public final boolean isClosed() {
        return this.f4643a.isClosed();
    }

    @Override // java.net.Socket
    public final boolean isConnected() {
        return this.f4643a.isConnected();
    }

    @Override // java.net.Socket
    public final boolean isInputShutdown() {
        return this.f4643a.isInputShutdown();
    }

    @Override // java.net.Socket
    public final boolean isOutputShutdown() {
        return this.f4643a.isOutputShutdown();
    }

    @Override // java.net.Socket
    public final void sendUrgentData(int i10) throws IOException {
        this.f4643a.sendUrgentData(i10);
    }

    @Override // java.net.Socket
    public final void setKeepAlive(boolean z) throws SocketException {
        this.f4643a.setKeepAlive(z);
    }

    @Override // java.net.Socket
    public final void setOOBInline(boolean z) throws SocketException {
        this.f4643a.setOOBInline(z);
    }

    @Override // java.net.Socket
    public final void setPerformancePreferences(int i10, int i11, int i12) {
        this.f4643a.setPerformancePreferences(i10, i11, i12);
    }

    @Override // java.net.Socket
    public final synchronized void setReceiveBufferSize(int i10) {
        this.f4643a.setReceiveBufferSize(i10);
    }

    @Override // java.net.Socket
    public final void setReuseAddress(boolean z) throws SocketException {
        this.f4643a.setReuseAddress(z);
    }

    @Override // java.net.Socket
    public final synchronized void setSendBufferSize(int i10) {
        this.f4643a.setSendBufferSize(i10);
    }

    @Override // java.net.Socket
    public final void setSoLinger(boolean z, int i10) throws SocketException {
        this.f4643a.setSoLinger(z, i10);
    }

    @Override // java.net.Socket
    public final synchronized void setSoTimeout(int i10) {
        this.f4643a.setSoTimeout(i10);
    }

    @Override // java.net.Socket
    public final void setTcpNoDelay(boolean z) throws SocketException {
        this.f4643a.setTcpNoDelay(z);
    }

    @Override // java.net.Socket
    public final void setTrafficClass(int i10) throws SocketException {
        this.f4643a.setTrafficClass(i10);
    }

    @Override // java.net.Socket
    public final void shutdownInput() throws IOException {
        this.f4643a.shutdownInput();
    }

    @Override // java.net.Socket
    public final void shutdownOutput() throws IOException {
        this.f4643a.shutdownOutput();
    }

    @Override // java.net.Socket
    public final String toString() {
        return this.f4643a.toString();
    }

    @Override // java.net.Socket
    public final void connect(SocketAddress socketAddress, int i10) throws IOException {
        this.f4643a.connect(socketAddress, i10);
    }
}
