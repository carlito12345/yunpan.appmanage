.class public Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HEADER_SIZE:I = 0x10


# instance fields
.field private final data:[B

.field private final name:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;->name:[B

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    new-array p2, p1, [B

    .line 10
    .line 11
    :cond_0
    iput-object p2, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;->data:[B

    .line 12
    .line 13
    return-void
.end method

.method private static align8(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x7

    and-int/lit8 p0, p0, -0x8

    return p0
.end method

.method public static readAll(Lcom/hierynomus/smb/SMBBuffer;II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hierynomus/smb/SMBBuffer;",
            "II)",
            "Ljava/util/List<",
            "Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->rpos(I)V

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->rpos()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {p0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readUInt32()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    long-to-int p2, v1

    .line 21
    invoke-virtual {p0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readUInt16()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readUInt16()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x2

    .line 30
    invoke-virtual {p0, v3}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->skip(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readUInt16()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {p0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readUInt32()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    long-to-int v5, v4

    .line 42
    add-int/2addr v1, p1

    .line 43
    invoke-virtual {p0, v1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->rpos(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v2}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readRawBytes(I)[B

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-lez v5, :cond_1

    .line 51
    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    add-int/2addr v3, p1

    .line 55
    invoke-virtual {p0, v3}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->rpos(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v5}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->readRawBytes(I)[B

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const/4 v2, 0x0

    .line 64
    new-array v2, v2, [B

    .line 65
    .line 66
    :goto_1
    new-instance v3, Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;

    .line 67
    .line 68
    invoke-direct {v3, v1, v2}, Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;-><init>([B[B)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    if-nez p2, :cond_2

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_2
    add-int/2addr p1, p2

    .line 78
    invoke-virtual {p0, p1}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->rpos(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_0
.end method

.method public static writeAll(Lcom/hierynomus/smb/SMBBuffer;Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hierynomus/smb/SMBBuffer;",
            "Ljava/util/List<",
            "Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->wpos()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ge v2, v3, :cond_5

    .line 22
    .line 23
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const/4 v5, 0x1

    .line 34
    sub-int/2addr v4, v5

    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v5, 0x0

    .line 39
    :goto_1
    invoke-virtual {p0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->wpos()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    iget-object v6, v3, Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;->name:[B

    .line 44
    .line 45
    array-length v6, v6

    .line 46
    iget-object v7, v3, Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;->data:[B

    .line 47
    .line 48
    array-length v7, v7

    .line 49
    if-nez v7, :cond_2

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    add-int/lit8 v8, v6, 0x10

    .line 54
    .line 55
    invoke-static {v8}, Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;->align8(I)I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    :goto_2
    invoke-virtual {p0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->wpos()I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    const-wide/16 v10, 0x0

    .line 64
    .line 65
    invoke-virtual {p0, v10, v11}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 66
    .line 67
    .line 68
    const/16 v10, 0x10

    .line 69
    .line 70
    invoke-virtual {p0, v10}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt16(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v6}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt16(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 74
    .line 75
    .line 76
    const/4 v10, 0x2

    .line 77
    invoke-virtual {p0, v10}, Lcom/hierynomus/smb/SMBBuffer;->putReserved(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v8}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt16(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 81
    .line 82
    .line 83
    int-to-long v10, v7

    .line 84
    invoke-virtual {p0, v10, v11}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 85
    .line 86
    .line 87
    iget-object v10, v3, Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;->name:[B

    .line 88
    .line 89
    invoke-virtual {p0, v10}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putRawBytes([B)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 90
    .line 91
    .line 92
    if-lez v7, :cond_3

    .line 93
    .line 94
    add-int/lit8 v6, v6, 0x10

    .line 95
    .line 96
    sub-int/2addr v8, v6

    .line 97
    invoke-virtual {p0, v8}, Lcom/hierynomus/smb/SMBBuffer;->putReserved(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 98
    .line 99
    .line 100
    iget-object v3, v3, Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;->data:[B

    .line 101
    .line 102
    invoke-virtual {p0, v3}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putRawBytes([B)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 103
    .line 104
    .line 105
    :cond_3
    if-nez v5, :cond_4

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->wpos()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    sub-int/2addr v3, v4

    .line 112
    invoke-static {v3}, Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;->align8(I)I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    sub-int/2addr v4, v3

    .line 117
    invoke-virtual {p0, v4}, Lcom/hierynomus/smb/SMBBuffer;->putReserved(I)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 118
    .line 119
    .line 120
    add-int/2addr v4, v3

    .line 121
    invoke-virtual {p0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->wpos()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-virtual {p0, v9}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->wpos(I)V

    .line 126
    .line 127
    .line 128
    int-to-long v4, v4

    .line 129
    invoke-virtual {p0, v4, v5}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->putUInt32(J)Lcom/hierynomus/protocol/commons/buffer/Buffer;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v3}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->wpos(I)V

    .line 133
    .line 134
    .line 135
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_5
    invoke-virtual {p0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->wpos()I

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    sub-int/2addr p0, v1

    .line 143
    return p0

    .line 144
    :cond_6
    :goto_3
    return v0
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;->data:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;->name:[B

    .line 2
    .line 3
    return-object v0
.end method
