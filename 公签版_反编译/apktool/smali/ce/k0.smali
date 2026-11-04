.class public final Lce/k0;
.super Lce/a;
.source "SourceFile"


# static fields
.field public static final L:Z

.field public static final M:[B


# instance fields
.field public final F:Lce/y0;

.field public final G:Ljava/lang/String;

.field public H:[B

.field public I:I

.field public final K:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "jcifs.smb1.smb.client.disablePlainTextPasswords"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lwd/a;->a(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lce/k0;->L:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/16 v1, 0x9

    .line 12
    .line 13
    new-array v1, v1, [B

    .line 14
    .line 15
    fill-array-data v1, :array_0

    .line 16
    .line 17
    .line 18
    sput-object v1, Lce/k0;->M:[B

    .line 19
    .line 20
    sget-object v2, Lwd/a;->a:Ljava/util/Properties;

    .line 21
    .line 22
    const-string v3, "jcifs.smb1.smb.client.TreeConnectAndX.CheckDirectory"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    aput-byte v3, v1, v0

    .line 35
    .line 36
    :cond_0
    const-string v0, "jcifs.smb1.smb.client.TreeConnectAndX.CreateDirectory"

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const/4 v3, 0x2

    .line 45
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    aput-byte v0, v1, v3

    .line 50
    .line 51
    :cond_1
    const-string v0, "jcifs.smb1.smb.client.TreeConnectAndX.Delete"

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    const/4 v3, 0x3

    .line 60
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    aput-byte v0, v1, v3

    .line 65
    .line 66
    :cond_2
    const-string v0, "jcifs.smb1.smb.client.TreeConnectAndX.DeleteDirectory"

    .line 67
    .line 68
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    const/4 v3, 0x4

    .line 75
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    aput-byte v0, v1, v3

    .line 80
    .line 81
    :cond_3
    const-string v0, "jcifs.smb1.smb.client.TreeConnectAndX.OpenAndX"

    .line 82
    .line 83
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    const/4 v3, 0x5

    .line 90
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    aput-byte v0, v1, v3

    .line 95
    .line 96
    :cond_4
    const-string v0, "jcifs.smb1.smb.client.TreeConnectAndX.Rename"

    .line 97
    .line 98
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    const/4 v3, 0x6

    .line 105
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    aput-byte v0, v1, v3

    .line 110
    .line 111
    :cond_5
    const-string v0, "jcifs.smb1.smb.client.TreeConnectAndX.Transaction"

    .line 112
    .line 113
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_6

    .line 118
    .line 119
    const/4 v3, 0x7

    .line 120
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    aput-byte v0, v1, v3

    .line 125
    .line 126
    :cond_6
    const-string v0, "jcifs.smb1.smb.client.TreeConnectAndX.QueryInformation"

    .line 127
    .line 128
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-eqz v0, :cond_7

    .line 133
    .line 134
    const/16 v2, 0x8

    .line 135
    .line 136
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    aput-byte v0, v1, v2

    .line 141
    .line 142
    :cond_7
    return-void

    .line 143
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lce/y0;Ljava/lang/String;Ljava/lang/String;Lce/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4}, Lce/a;-><init>(Lce/q;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lce/k0;->F:Lce/y0;

    .line 5
    .line 6
    iput-object p2, p0, Lce/k0;->K:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lce/k0;->G:Ljava/lang/String;

    .line 9
    .line 10
    const/16 p1, 0x75

    .line 11
    .line 12
    iput-byte p1, p0, Lce/q;->c:B

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final d(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final i(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final o(I[B)I
    .locals 5

    .line 1
    iget-object v0, p0, Lce/k0;->G:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lce/k0;->F:Lce/y0;

    .line 4
    .line 5
    iget-object v2, v1, Lce/y0;->h:Lce/b1;

    .line 6
    .line 7
    iget-object v2, v2, Lce/b1;->w:Lce/a1;

    .line 8
    .line 9
    iget v2, v2, Lce/a1;->g:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object v2, v1, Lce/y0;->i:Lce/p;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v1, v1, Lce/y0;->i:Lce/p;

    .line 20
    .line 21
    iget-object v1, v1, Lce/p;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-lez v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lce/k0;->H:[B

    .line 30
    .line 31
    iget v2, p0, Lce/k0;->I:I

    .line 32
    .line 33
    invoke-static {v1, v3, p2, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lce/k0;->I:I

    .line 37
    .line 38
    add-int/2addr v1, p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 41
    .line 42
    aput-byte v3, p2, p1

    .line 43
    .line 44
    :goto_0
    iget-object v2, p0, Lce/k0;->K:Ljava/lang/String;

    .line 45
    .line 46
    iget-boolean v4, p0, Lce/q;->q:Z

    .line 47
    .line 48
    invoke-virtual {p0, v2, p2, v1, v4}, Lce/q;->u(Ljava/lang/String;[BIZ)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    add-int/2addr v2, v1

    .line 53
    :try_start_0
    const-string v1, "ASCII"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-static {v1, v3, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    add-int/2addr v0, v2

    .line 71
    add-int/lit8 v1, v0, 0x1

    .line 72
    .line 73
    aput-byte v3, p2, v0

    .line 74
    .line 75
    sub-int/2addr v1, p1

    .line 76
    return v1

    .line 77
    :catch_0
    return v3
.end method

.method public final t(I[B)I
    .locals 5

    .line 1
    iget-object v0, p0, Lce/k0;->F:Lce/y0;

    .line 2
    .line 3
    iget-object v1, v0, Lce/y0;->h:Lce/b1;

    .line 4
    .line 5
    iget-object v1, v1, Lce/b1;->w:Lce/a1;

    .line 6
    .line 7
    iget v1, v1, Lce/a1;->g:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    iget-object v1, v0, Lce/y0;->i:Lce/p;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lce/y0;->i:Lce/p;

    .line 19
    .line 20
    iget-object v1, v1, Lce/p;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-lez v1, :cond_2

    .line 27
    .line 28
    iget-object v1, v0, Lce/y0;->h:Lce/b1;

    .line 29
    .line 30
    iget-object v1, v1, Lce/b1;->w:Lce/a1;

    .line 31
    .line 32
    iget-boolean v4, v1, Lce/a1;->h:Z

    .line 33
    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    iget-object v0, v0, Lce/y0;->i:Lce/p;

    .line 37
    .line 38
    iget-object v1, v1, Lce/a1;->p:[B

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lce/p;->b([B)[B

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lce/k0;->H:[B

    .line 45
    .line 46
    array-length v0, v0

    .line 47
    iput v0, p0, Lce/k0;->I:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sget-boolean v1, Lce/k0;->L:Z

    .line 51
    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    iget-object v1, v0, Lce/y0;->i:Lce/p;

    .line 55
    .line 56
    iget-object v1, v1, Lce/p;->c:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    add-int/2addr v1, v3

    .line 63
    mul-int/lit8 v1, v1, 0x2

    .line 64
    .line 65
    new-array v1, v1, [B

    .line 66
    .line 67
    iput-object v1, p0, Lce/k0;->H:[B

    .line 68
    .line 69
    iget-object v0, v0, Lce/y0;->i:Lce/p;

    .line 70
    .line 71
    iget-object v0, v0, Lce/p;->c:Ljava/lang/String;

    .line 72
    .line 73
    iget-boolean v3, p0, Lce/q;->q:Z

    .line 74
    .line 75
    invoke-virtual {p0, v0, v1, v2, v3}, Lce/q;->u(Ljava/lang/String;[BIZ)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput v0, p0, Lce/k0;->I:I

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 83
    .line 84
    const-string p2, "Plain text passwords are disabled"

    .line 85
    .line 86
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_2
    iput v3, p0, Lce/k0;->I:I

    .line 91
    .line 92
    :goto_0
    add-int/lit8 v0, p1, 0x1

    .line 93
    .line 94
    aput-byte v2, p2, p1

    .line 95
    .line 96
    add-int/lit8 p1, p1, 0x2

    .line 97
    .line 98
    aput-byte v2, p2, v0

    .line 99
    .line 100
    iget v0, p0, Lce/k0;->I:I

    .line 101
    .line 102
    int-to-long v0, v0

    .line 103
    invoke-static {v0, v1, p2, p1}, Lce/q;->q(J[BI)V

    .line 104
    .line 105
    .line 106
    const/4 p1, 0x4

    .line 107
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "SmbComTreeConnectAndX["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lce/a;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",disconnectTid=false,passwordLength="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lce/k0;->I:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",password="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lce/k0;->H:[B

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static {v3, v2}, Lde/c;->d(I[B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, ",path="

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lce/k0;->K:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, ",service="

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lce/k0;->G:Ljava/lang/String;

    .line 58
    .line 59
    const-string v3, "]"

    .line 60
    .line 61
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-object v0
.end method

.method public final v(B)I
    .locals 4

    .line 1
    and-int/lit16 p1, p1, 0xff

    .line 2
    .line 3
    sget-object v0, Lce/k0;->M:[B

    .line 4
    .line 5
    if-eqz p1, :cond_7

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq p1, v1, :cond_6

    .line 9
    .line 10
    const/4 v1, 0x6

    .line 11
    if-eq p1, v1, :cond_5

    .line 12
    .line 13
    const/4 v2, 0x7

    .line 14
    if-eq p1, v2, :cond_4

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    if-eq p1, v1, :cond_3

    .line 19
    .line 20
    const/16 v1, 0x10

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-eq p1, v1, :cond_2

    .line 24
    .line 25
    const/16 v1, 0x25

    .line 26
    .line 27
    if-eq p1, v1, :cond_1

    .line 28
    .line 29
    const/16 v1, 0x2d

    .line 30
    .line 31
    if-eq p1, v1, :cond_0

    .line 32
    .line 33
    return v3

    .line 34
    :cond_0
    const/4 p1, 0x5

    .line 35
    aget-byte p1, v0, p1

    .line 36
    .line 37
    return p1

    .line 38
    :cond_1
    aget-byte p1, v0, v2

    .line 39
    .line 40
    return p1

    .line 41
    :cond_2
    aget-byte p1, v0, v3

    .line 42
    .line 43
    return p1

    .line 44
    :cond_3
    aget-byte p1, v0, v1

    .line 45
    .line 46
    return p1

    .line 47
    :cond_4
    aget-byte p1, v0, v1

    .line 48
    .line 49
    return p1

    .line 50
    :cond_5
    const/4 p1, 0x3

    .line 51
    aget-byte p1, v0, p1

    .line 52
    .line 53
    return p1

    .line 54
    :cond_6
    const/4 p1, 0x4

    .line 55
    aget-byte p1, v0, p1

    .line 56
    .line 57
    return p1

    .line 58
    :cond_7
    const/4 p1, 0x2

    .line 59
    aget-byte p1, v0, p1

    .line 60
    .line 61
    return p1
.end method
