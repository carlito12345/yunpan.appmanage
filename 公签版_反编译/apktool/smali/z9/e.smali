.class public final Lz9/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Landroid/hardware/usb/UsbDeviceConnection;

.field public final b:Landroid/hardware/usb/UsbEndpoint;

.field public final c:Landroid/hardware/usb/UsbEndpoint;

.field public final d:Landroid/hardware/usb/UsbInterface;

.field public final e:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbInterface;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lz9/e;->e:Ljava/util/LinkedList;

    .line 10
    .line 11
    iput-object p1, p0, Lz9/e;->a:Landroid/hardware/usb/UsbDeviceConnection;

    .line 12
    .line 13
    iput-object p2, p0, Lz9/e;->d:Landroid/hardware/usb/UsbInterface;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    const/4 v0, 0x0

    .line 17
    move-object v0, p1

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ge v1, v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p2, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x2

    .line 34
    if-ne v3, v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    move-object p1, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    move-object v0, v2

    .line 45
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    if-eqz p1, :cond_3

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    iput-object p1, p0, Lz9/e;->b:Landroid/hardware/usb/UsbEndpoint;

    .line 53
    .line 54
    iput-object v0, p0, Lz9/e;->c:Landroid/hardware/usb/UsbEndpoint;

    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string p2, "not all endpoints found"

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :goto_2
    throw p1

    .line 66
    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public final A(Landroid/hardware/usb/UsbRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz9/e;->e:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lz9/e;->e:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public final J([B)V
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    array-length v3, p1

    .line 11
    sub-int/2addr v3, v1

    .line 12
    const/16 v4, 0x3e8

    .line 13
    .line 14
    iget-object v5, p0, Lz9/e;->a:Landroid/hardware/usb/UsbDeviceConnection;

    .line 15
    .line 16
    iget-object v6, p0, Lz9/e;->b:Landroid/hardware/usb/UsbEndpoint;

    .line 17
    .line 18
    invoke-virtual {v5, v6, v0, v3, v4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ltz v3, :cond_1

    .line 23
    .line 24
    add-int/2addr v1, v3

    .line 25
    array-length v4, p1

    .line 26
    if-lt v1, v4, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    array-length v3, p1

    .line 30
    sub-int/2addr v3, v1

    .line 31
    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    if-ltz v3, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 39
    .line 40
    const-string v0, "bulk transfer fail"

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :goto_2
    throw p1

    .line 47
    :goto_3
    goto :goto_2
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz9/e;->d:Landroid/hardware/usb/UsbInterface;

    .line 2
    .line 3
    iget-object v1, p0, Lz9/e;->a:Landroid/hardware/usb/UsbDeviceConnection;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final r(I[B)V
    .locals 4

    .line 1
    iget-object v0, p0, Lz9/e;->e:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lz9/e;->e:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroid/hardware/usb/UsbRequest;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/hardware/usb/UsbRequest;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lz9/e;->a:Landroid/hardware/usb/UsbDeviceConnection;

    .line 18
    .line 19
    iget-object v3, p0, Lz9/e;->c:Landroid/hardware/usb/UsbEndpoint;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iget-object v1, p0, Lz9/e;->e:Ljava/util/LinkedList;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/hardware/usb/UsbRequest;

    .line 35
    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbRequest;->setClientData(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0, p1}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    :goto_1
    iget-object p1, p0, Lz9/e;->a:Landroid/hardware/usb/UsbDeviceConnection;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/hardware/usb/UsbRequest;->getClientData()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p1, v2}, Landroid/hardware/usb/UsbRequest;->setClientData(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/hardware/usb/UsbRequest;->getEndpoint()Landroid/hardware/usb/UsbEndpoint;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget-object v3, p0, Lz9/e;->b:Landroid/hardware/usb/UsbEndpoint;

    .line 79
    .line 80
    if-ne v2, v3, :cond_1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    if-ne v0, v1, :cond_2

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lz9/e;->A(Landroid/hardware/usb/UsbRequest;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 96
    .line 97
    const-string p2, "unexpected behavior"

    .line 98
    .line 99
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 104
    .line 105
    const-string p2, "Connection.requestWait return null"

    .line 106
    .line 107
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1

    .line 111
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 112
    .line 113
    const-string p2, "\u961f\u5217\u8bfb\u53d6UsbRequest\u5931\u8d25"

    .line 114
    .line 115
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    goto :goto_4

    .line 121
    :goto_3
    throw p1

    .line 122
    :goto_4
    goto :goto_3
.end method
