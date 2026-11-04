.class public final Lokhttp3/internal/ws/WebSocketProtocol;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ACCEPT_MAGIC:Ljava/lang/String; = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

.field static final B0_FLAG_FIN:I = 0x80

.field static final B0_FLAG_RSV1:I = 0x40

.field static final B0_FLAG_RSV2:I = 0x20

.field static final B0_FLAG_RSV3:I = 0x10

.field static final B0_MASK_OPCODE:I = 0xf

.field static final B1_FLAG_MASK:I = 0x80

.field static final B1_MASK_LENGTH:I = 0x7f

.field static final CLOSE_CLIENT_GOING_AWAY:I = 0x3e9

.field static final CLOSE_MESSAGE_MAX:J = 0x7bL

.field static final CLOSE_NO_STATUS_CODE:I = 0x3ed

.field static final OPCODE_BINARY:I = 0x2

.field static final OPCODE_CONTINUATION:I = 0x0

.field static final OPCODE_CONTROL_CLOSE:I = 0x8

.field static final OPCODE_CONTROL_PING:I = 0x9

.field static final OPCODE_CONTROL_PONG:I = 0xa

.field static final OPCODE_FLAG_CONTROL:I = 0x8

.field static final OPCODE_TEXT:I = 0x1

.field static final PAYLOAD_BYTE_MAX:J = 0x7dL

.field static final PAYLOAD_LONG:I = 0x7f

.field static final PAYLOAD_SHORT:I = 0x7e

.field static final PAYLOAD_SHORT_MAX:J = 0xffffL


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/AssertionError;

    .line 5
    .line 6
    const-string v1, "No instances."

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    throw v0
.end method

.method public static acceptHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lfg/l;->d:Lfg/l;

    .line 8
    .line 9
    invoke-static {p0}, Lfg/e0;->e(Ljava/lang/String;)Lfg/l;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "SHA-1"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lfg/l;->f(Ljava/lang/String;)Lfg/l;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lfg/l;->a()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static closeCodeExceptionMessage(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-lt p0, v0, :cond_4

    .line 4
    .line 5
    const/16 v0, 0x1388

    .line 6
    .line 7
    if-lt p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v0, 0x3ec

    .line 11
    .line 12
    if-lt p0, v0, :cond_1

    .line 13
    .line 14
    const/16 v0, 0x3ee

    .line 15
    .line 16
    if-le p0, v0, :cond_2

    .line 17
    .line 18
    :cond_1
    const/16 v0, 0x3f4

    .line 19
    .line 20
    if-lt p0, v0, :cond_3

    .line 21
    .line 22
    const/16 v0, 0xbb7

    .line 23
    .line 24
    if-gt p0, v0, :cond_3

    .line 25
    .line 26
    :cond_2
    const-string v0, "Code "

    .line 27
    .line 28
    const-string v1, " is reserved and may not be used."

    .line 29
    .line 30
    invoke-static {v0, p0, v1}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_3
    const/4 p0, 0x0

    .line 36
    return-object p0

    .line 37
    :cond_4
    :goto_0
    const-string v0, "Code must be in range [1000,5000): "

    .line 38
    .line 39
    invoke-static {p0, v0}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static toggleMask(Lfg/g;[B)V
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :cond_0
    iget-object v2, p0, Lfg/g;->e:[B

    .line 4
    .line 5
    iget v3, p0, Lfg/g;->f:I

    .line 6
    .line 7
    iget v4, p0, Lfg/g;->g:I

    .line 8
    .line 9
    :goto_0
    if-ge v3, v4, :cond_1

    .line 10
    .line 11
    rem-int/2addr v1, v0

    .line 12
    aget-byte v5, v2, v3

    .line 13
    .line 14
    aget-byte v6, p1, v1

    .line 15
    .line 16
    xor-int/2addr v5, v6

    .line 17
    int-to-byte v5, v5

    .line 18
    aput-byte v5, v2, v3

    .line 19
    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-wide v2, p0, Lfg/g;->d:J

    .line 26
    .line 27
    iget-object v4, p0, Lfg/g;->a:Lfg/i;

    .line 28
    .line 29
    invoke-static {v4}, Lue/d;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-wide v4, v4, Lfg/i;->b:J

    .line 33
    .line 34
    cmp-long v6, v2, v4

    .line 35
    .line 36
    if-eqz v6, :cond_3

    .line 37
    .line 38
    iget-wide v2, p0, Lfg/g;->d:J

    .line 39
    .line 40
    const-wide/16 v4, -0x1

    .line 41
    .line 42
    cmp-long v6, v2, v4

    .line 43
    .line 44
    if-nez v6, :cond_2

    .line 45
    .line 46
    const-wide/16 v2, 0x0

    .line 47
    .line 48
    :goto_1
    invoke-virtual {p0, v2, v3}, Lfg/g;->r(J)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    iget v4, p0, Lfg/g;->g:I

    .line 54
    .line 55
    iget v5, p0, Lfg/g;->f:I

    .line 56
    .line 57
    sub-int/2addr v4, v5

    .line 58
    int-to-long v4, v4

    .line 59
    add-long/2addr v2, v4

    .line 60
    goto :goto_1

    .line 61
    :goto_2
    const/4 v3, -0x1

    .line 62
    if-ne v2, v3, :cond_0

    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string p1, "no more bytes"

    .line 68
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_4

    .line 73
    :goto_3
    throw p0

    .line 74
    :goto_4
    goto :goto_3
.end method

.method public static validateCloseCode(I)V
    .locals 1

    .line 1
    invoke-static {p0}, Lokhttp3/internal/ws/WebSocketProtocol;->closeCodeExceptionMessage(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method
