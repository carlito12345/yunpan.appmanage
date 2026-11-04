.class public abstract Lo9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "ASCII"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static a(Lfg/l;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lfg/i;

    .line 7
    .line 8
    invoke-direct {v1}, Lfg/i;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0}, Lfg/i;->T(Lfg/l;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lfg/i;->readShort()S

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lfg/i;->readShort()S

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const v2, 0xffff

    .line 22
    .line 23
    .line 24
    and-int v3, p0, v2

    .line 25
    .line 26
    shr-int/lit8 v3, v3, 0xf

    .line 27
    .line 28
    if-eqz v3, :cond_a

    .line 29
    .line 30
    and-int/lit8 p0, p0, 0xf

    .line 31
    .line 32
    int-to-byte p0, p0

    .line 33
    const/4 v3, 0x3

    .line 34
    if-eq p0, v3, :cond_9

    .line 35
    .line 36
    const/4 v3, 0x2

    .line 37
    if-eq p0, v3, :cond_8

    .line 38
    .line 39
    invoke-virtual {v1}, Lfg/i;->readShort()S

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    and-int/2addr p0, v2

    .line 44
    invoke-virtual {v1}, Lfg/i;->readShort()S

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    and-int/2addr p1, v2

    .line 49
    invoke-virtual {v1}, Lfg/i;->readShort()S

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lfg/i;->readShort()S

    .line 53
    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    const/4 v4, 0x0

    .line 57
    :goto_0
    const-wide/16 v5, 0x1

    .line 58
    .line 59
    if-ge v4, p0, :cond_2

    .line 60
    .line 61
    invoke-virtual {v1}, Lfg/i;->readByte()B

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-gez v7, :cond_0

    .line 66
    .line 67
    invoke-virtual {v1, v5, v6}, Lfg/i;->skip(J)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_0
    :goto_1
    if-lez v7, :cond_1

    .line 72
    .line 73
    int-to-long v5, v7

    .line 74
    invoke-virtual {v1, v5, v6}, Lfg/i;->skip(J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Lfg/i;->readByte()B

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    :goto_2
    invoke-virtual {v1}, Lfg/i;->readShort()S

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lfg/i;->readShort()S

    .line 86
    .line 87
    .line 88
    add-int/lit8 v4, v4, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    const/4 p0, 0x0

    .line 92
    :goto_3
    if-ge p0, p1, :cond_7

    .line 93
    .line 94
    invoke-virtual {v1}, Lfg/i;->readByte()B

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-gez v4, :cond_3

    .line 99
    .line 100
    invoke-virtual {v1, v5, v6}, Lfg/i;->skip(J)V

    .line 101
    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_3
    :goto_4
    if-lez v4, :cond_4

    .line 105
    .line 106
    int-to-long v7, v4

    .line 107
    invoke-virtual {v1, v7, v8}, Lfg/i;->skip(J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Lfg/i;->readByte()B

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    goto :goto_4

    .line 115
    :cond_4
    :goto_5
    invoke-virtual {v1}, Lfg/i;->readShort()S

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    and-int/2addr v4, v2

    .line 120
    invoke-virtual {v1}, Lfg/i;->readShort()S

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Lfg/i;->readInt()I

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Lfg/i;->readShort()S

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    and-int/2addr v7, v2

    .line 131
    const/4 v8, 0x1

    .line 132
    if-eq v4, v8, :cond_6

    .line 133
    .line 134
    const/16 v8, 0x1c

    .line 135
    .line 136
    if-ne v4, v8, :cond_5

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_5
    int-to-long v7, v7

    .line 140
    invoke-virtual {v1, v7, v8}, Lfg/i;->skip(J)V

    .line 141
    .line 142
    .line 143
    goto :goto_7

    .line 144
    :cond_6
    :goto_6
    new-array v4, v7, [B

    .line 145
    .line 146
    invoke-virtual {v1, v4, v3, v7}, Lfg/i;->read([BII)I

    .line 147
    .line 148
    .line 149
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    :goto_7
    add-int/lit8 p0, p0, 0x1

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_7
    return-object v0

    .line 160
    :cond_8
    new-instance p0, Ljava/net/UnknownHostException;

    .line 161
    .line 162
    const-string v0, ": SERVFAIL"

    .line 163
    .line 164
    invoke-static {p1, v0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-direct {p0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p0

    .line 172
    :cond_9
    new-instance p0, Ljava/net/UnknownHostException;

    .line 173
    .line 174
    const-string v0, ": NXDOMAIN"

    .line 175
    .line 176
    invoke-static {p1, v0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-direct {p0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p0

    .line 184
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 185
    .line 186
    const-string p1, "not a response"

    .line 187
    .line 188
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    goto :goto_9

    .line 192
    :goto_8
    throw p0

    .line 193
    :goto_9
    goto :goto_8
.end method
