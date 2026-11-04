.class public Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/sevenzipjbinding/IInStream;


# static fields
.field private static final SEVEN_ZIP_FIRST_VOLUME_POSTFIX:Ljava/lang/String; = ".7z.001"


# instance fields
.field private absoluteLength:J

.field private absoluteOffset:J

.field private final archiveOpenVolumeCallback:Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;

.field private currentInStream:Lnet/sf/sevenzipjbinding/IInStream;

.field private currentIndex:I

.field private currentVolumeLength:J

.field private currentVolumeOffset:J

.field private cuttedVolumeFilename:Ljava/lang/String;

.field private volumePositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentIndex:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 6
    iput-object p2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->archiveOpenVolumeCallback:Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;

    const-wide/16 v1, 0x0

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    const-string p2, ".7z.001"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    const/4 v0, 0x0

    .line 9
    invoke-static {p2, v0, p1}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->cuttedVolumeFilename:Ljava/lang/String;

    const/4 p1, 0x1

    .line 11
    invoke-direct {p0, p1, p1}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->openVolume(IZ)V

    return-void

    .line 12
    :cond_0
    new-instance p2, Lnet/sf/sevenzipjbinding/SevenZipException;

    const-string v0, "The first 7z volume filename \'"

    const-string v1, "\' don\'t ends with the postfix: \'.7z.001\'. Can\'t proceed"

    .line 13
    invoke-static {v0, p1, v1}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-direct {p2, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;)V
    .locals 1

    .line 1
    sget-object v0, Lnet/sf/sevenzipjbinding/PropID;->NAME:Lnet/sf/sevenzipjbinding/PropID;

    invoke-interface {p1, v0}, Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;->getProperty(Lnet/sf/sevenzipjbinding/PropID;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;-><init>(Ljava/lang/String;Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;)V

    return-void
.end method

.method private openVolume(IZ)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentIndex:I

    .line 4
    .line 5
    if-ne v2, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    :goto_0
    const-wide/16 v3, -0x1

    .line 15
    .line 16
    if-ge v2, p1, :cond_1

    .line 17
    .line 18
    iget-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    .line 19
    .line 20
    cmp-long v7, v5, v3

    .line 21
    .line 22
    if-nez v7, :cond_1

    .line 23
    .line 24
    invoke-direct {p0, v2, v0}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->openVolume(IZ)V

    .line 25
    .line 26
    .line 27
    add-int/2addr v2, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    .line 30
    .line 31
    cmp-long v2, v5, v3

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-gt v2, p1, :cond_2

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->cuttedVolumeFilename:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    new-array v4, v1, [Ljava/lang/Object;

    .line 59
    .line 60
    aput-object v3, v4, v0

    .line 61
    .line 62
    const-string v3, "{0,number,000}"

    .line 63
    .line 64
    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iget-object v3, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->archiveOpenVolumeCallback:Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;

    .line 76
    .line 77
    invoke-interface {v3, v2}, Lnet/sf/sevenzipjbinding/IArchiveOpenVolumeCallback;->getStream(Ljava/lang/String;)Lnet/sf/sevenzipjbinding/IInStream;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-nez v2, :cond_3

    .line 82
    .line 83
    iget-object p1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    sub-int/2addr p2, v1

    .line 90
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Ljava/lang/Long;

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 97
    .line 98
    .line 99
    move-result-wide p1

    .line 100
    iput-wide p1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    .line 101
    .line 102
    return-void

    .line 103
    :cond_3
    iput-object v2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentInStream:Lnet/sf/sevenzipjbinding/IInStream;

    .line 104
    .line 105
    iget-object v2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 106
    .line 107
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    const-wide/16 v3, 0x0

    .line 112
    .line 113
    if-ne v2, p1, :cond_5

    .line 114
    .line 115
    iget-object v2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentInStream:Lnet/sf/sevenzipjbinding/IInStream;

    .line 116
    .line 117
    const/4 v5, 0x2

    .line 118
    invoke-interface {v2, v3, v4, v5}, Lnet/sf/sevenzipjbinding/ISeekableStream;->seek(JI)J

    .line 119
    .line 120
    .line 121
    move-result-wide v5

    .line 122
    iput-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeLength:J

    .line 123
    .line 124
    cmp-long v2, v5, v3

    .line 125
    .line 126
    if-eqz v2, :cond_4

    .line 127
    .line 128
    iget-object v2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 129
    .line 130
    add-int/lit8 v5, p1, -0x1

    .line 131
    .line 132
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    check-cast v5, Ljava/lang/Long;

    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 139
    .line 140
    .line 141
    move-result-wide v5

    .line 142
    iget-wide v7, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeLength:J

    .line 143
    .line 144
    add-long/2addr v5, v7

    .line 145
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    if-eqz p2, :cond_6

    .line 153
    .line 154
    iget-object v2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentInStream:Lnet/sf/sevenzipjbinding/IInStream;

    .line 155
    .line 156
    invoke-interface {v2, v3, v4, v0}, Lnet/sf/sevenzipjbinding/ISeekableStream;->seek(JI)J

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_4
    new-instance p2, Ljava/lang/RuntimeException;

    .line 161
    .line 162
    const-string v0, "Volume "

    .line 163
    .line 164
    const-string v1, " is empty"

    .line 165
    .line 166
    invoke-static {v0, p1, v1}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p2

    .line 174
    :cond_5
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 175
    .line 176
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Ljava/lang/Long;

    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 183
    .line 184
    .line 185
    move-result-wide v5

    .line 186
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 187
    .line 188
    add-int/lit8 v2, p1, -0x1

    .line 189
    .line 190
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Ljava/lang/Long;

    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 197
    .line 198
    .line 199
    move-result-wide v7

    .line 200
    sub-long/2addr v5, v7

    .line 201
    iput-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeLength:J

    .line 202
    .line 203
    :cond_6
    :goto_1
    if-eqz p2, :cond_7

    .line 204
    .line 205
    iput-wide v3, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeOffset:J

    .line 206
    .line 207
    iget-object p2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 208
    .line 209
    add-int/lit8 v0, p1, -0x1

    .line 210
    .line 211
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    check-cast p2, Ljava/lang/Long;

    .line 216
    .line 217
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 218
    .line 219
    .line 220
    move-result-wide v0

    .line 221
    iput-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 222
    .line 223
    :cond_7
    iput p1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentIndex:I

    .line 224
    .line 225
    return-void
.end method

.method private openVolumeToAbsoluteOffset()V
    .locals 9

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    iget-wide v1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    .line 10
    .line 11
    const-wide/16 v3, -0x1

    .line 12
    .line 13
    cmp-long v5, v1, v3

    .line 14
    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    iget-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 18
    .line 19
    cmp-long v7, v5, v1

    .line 20
    .line 21
    if-ltz v7, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/Long;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    iget-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 37
    .line 38
    cmp-long v7, v1, v5

    .line 39
    .line 40
    if-lez v7, :cond_1

    .line 41
    .line 42
    add-int/lit8 v0, v0, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/lit8 v1, v1, -0x1

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    if-ge v0, v1, :cond_2

    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    invoke-direct {p0, v0, v2}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->openVolume(IZ)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    invoke-direct {p0, v0, v2}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->openVolume(IZ)V

    .line 65
    .line 66
    .line 67
    iget-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    .line 68
    .line 69
    cmp-long v1, v5, v3

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    iget-wide v7, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 74
    .line 75
    cmp-long v1, v7, v5

    .line 76
    .line 77
    if-gez v1, :cond_4

    .line 78
    .line 79
    :cond_3
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/lang/Long;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 88
    .line 89
    .line 90
    move-result-wide v5

    .line 91
    iget-wide v7, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 92
    .line 93
    cmp-long v1, v5, v7

    .line 94
    .line 95
    if-lez v1, :cond_2

    .line 96
    .line 97
    :cond_4
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string v1, "close() method not supported. The user should implement its own caching and closing stratagies within the IArchiveOpenVolumeCallback.getStream() implementation."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public declared-synchronized read([B)I
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    .line 3
    .line 4
    const-wide/16 v2, -0x1

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-eqz v4, :cond_0

    .line 9
    .line 10
    iget-wide v2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    cmp-long v4, v2, v0

    .line 13
    .line 14
    if-ltz v4, :cond_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentInStream:Lnet/sf/sevenzipjbinding/IInStream;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Lnet/sf/sevenzipjbinding/ISequentialInStream;->read([B)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 28
    .line 29
    int-to-long v2, p1

    .line 30
    add-long/2addr v0, v2

    .line 31
    iput-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 32
    .line 33
    iget-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeOffset:J

    .line 34
    .line 35
    add-long/2addr v0, v2

    .line 36
    iput-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeOffset:J

    .line 37
    .line 38
    iget-wide v2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeLength:J

    .line 39
    .line 40
    cmp-long v4, v0, v2

    .line 41
    .line 42
    if-ltz v4, :cond_1

    .line 43
    .line 44
    iget v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentIndex:I

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    add-int/2addr v0, v1

    .line 48
    invoke-direct {p0, v0, v1}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->openVolume(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    :cond_1
    monitor-exit p0

    .line 52
    return p1

    .line 53
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    throw p1
.end method

.method public declared-synchronized seek(JI)J
    .locals 7

    .line 1
    const-string v0, "Seek: unknown origin: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    const-wide/16 v1, -0x1

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    if-eqz p3, :cond_3

    .line 9
    .line 10
    if-eq p3, v3, :cond_2

    .line 11
    .line 12
    const/4 v5, 0x2

    .line 13
    if-ne p3, v5, :cond_1

    .line 14
    .line 15
    :try_start_0
    iget-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    .line 16
    .line 17
    cmp-long p3, v5, v1

    .line 18
    .line 19
    if-nez p3, :cond_0

    .line 20
    .line 21
    const p3, 0x7fffffff

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p3, v4}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->openVolume(IZ)V

    .line 25
    .line 26
    .line 27
    const/4 p3, 0x1

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    const/4 p3, 0x0

    .line 32
    :goto_0
    iget-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    .line 33
    .line 34
    add-long/2addr p1, v5

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 37
    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    iget-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 55
    .line 56
    add-long/2addr p1, v5

    .line 57
    :cond_3
    const/4 p3, 0x0

    .line 58
    :goto_1
    iget-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    cmp-long v0, p1, v5

    .line 61
    .line 62
    if-nez v0, :cond_4

    .line 63
    .line 64
    if-nez p3, :cond_4

    .line 65
    .line 66
    monitor-exit p0

    .line 67
    return-wide p1

    .line 68
    :cond_4
    :try_start_1
    iput-wide p1, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 69
    .line 70
    invoke-direct {p0}, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->openVolumeToAbsoluteOffset()V

    .line 71
    .line 72
    .line 73
    iget-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteLength:J

    .line 74
    .line 75
    cmp-long p3, v5, v1

    .line 76
    .line 77
    if-eqz p3, :cond_5

    .line 78
    .line 79
    iget-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 80
    .line 81
    cmp-long p3, v5, v0

    .line 82
    .line 83
    if-gtz p3, :cond_5

    .line 84
    .line 85
    iput-wide v5, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    monitor-exit p0

    .line 88
    return-wide v5

    .line 89
    :cond_5
    :try_start_2
    iget-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->absoluteOffset:J

    .line 90
    .line 91
    iget-object p3, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->volumePositions:Ljava/util/List;

    .line 92
    .line 93
    iget v2, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentIndex:I

    .line 94
    .line 95
    sub-int/2addr v2, v3

    .line 96
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    check-cast p3, Ljava/lang/Long;

    .line 101
    .line 102
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 103
    .line 104
    .line 105
    move-result-wide v2

    .line 106
    sub-long/2addr v0, v2

    .line 107
    iput-wide v0, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentVolumeOffset:J

    .line 108
    .line 109
    iget-object p3, p0, Lnet/sf/sevenzipjbinding/impl/VolumedArchiveInStream;->currentInStream:Lnet/sf/sevenzipjbinding/IInStream;

    .line 110
    .line 111
    invoke-interface {p3, v0, v1, v4}, Lnet/sf/sevenzipjbinding/ISeekableStream;->seek(JI)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    .line 113
    .line 114
    monitor-exit p0

    .line 115
    return-wide p1

    .line 116
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    throw p1
.end method
