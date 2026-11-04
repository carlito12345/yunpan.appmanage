.class public final Lh/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/e;


# static fields
.field public static final j:Ljava/util/HashMap;


# instance fields
.field public a:Lh/l;

.field public b:Lh/i;

.field public c:Lh/f;

.field public d:Lh/h;

.field public e:Lh/k;

.field public f:Lh/j;

.field public g:Lh/m;

.field public h:Lh/g;

.field public i:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lh/y;->j:Ljava/util/HashMap;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const-string v2, "version"

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    const-string v4, "serialNumber"

    .line 13
    .line 14
    invoke-static {v1, v0, v2, v3, v4}, Lg/b;->q(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    const-string v2, "algorithmID"

    .line 19
    .line 20
    const/4 v3, 0x4

    .line 21
    const-string v4, "issuer"

    .line 22
    .line 23
    invoke-static {v1, v0, v2, v3, v4}, Lg/b;->q(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x5

    .line 27
    const-string v2, "validity"

    .line 28
    .line 29
    const/4 v3, 0x6

    .line 30
    const-string v4, "subject"

    .line 31
    .line 32
    invoke-static {v1, v0, v2, v3, v4}, Lg/b;->q(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x7

    .line 36
    const-string v2, "key"

    .line 37
    .line 38
    const/16 v3, 0x8

    .line 39
    .line 40
    const-string v4, "issuerID"

    .line 41
    .line 42
    invoke-static {v1, v0, v2, v3, v4}, Lg/b;->q(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/16 v1, 0x9

    .line 46
    .line 47
    const-string v2, "subjectID"

    .line 48
    .line 49
    const/16 v3, 0xa

    .line 50
    .line 51
    const-string v4, "extensions"

    .line 52
    .line 53
    invoke-static {v1, v0, v2, v3, v4}, Lg/b;->q(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lh/l;

    .line 5
    .line 6
    invoke-direct {v0}, Lh/l;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lh/y;->a:Lh/l;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lh/y;->b:Lh/i;

    .line 13
    .line 14
    iput-object v0, p0, Lh/y;->c:Lh/f;

    .line 15
    .line 16
    iput-object v0, p0, Lh/y;->d:Lh/h;

    .line 17
    .line 18
    iput-object v0, p0, Lh/y;->e:Lh/k;

    .line 19
    .line 20
    iput-object v0, p0, Lh/y;->f:Lh/j;

    .line 21
    .line 22
    iput-object v0, p0, Lh/y;->g:Lh/m;

    .line 23
    .line 24
    iput-object v0, p0, Lh/y;->h:Lh/g;

    .line 25
    .line 26
    iput-object v0, p0, Lh/y;->i:[B

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lg/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh/y;->i:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lg/f;

    .line 6
    .line 7
    invoke-direct {v0}, Lg/f;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lh/y;->b(Lg/f;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lh/y;->i:[B

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lh/y;->i:[B

    .line 20
    .line 21
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, [B

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final b(Lg/f;)V
    .locals 2

    .line 1
    new-instance v0, Lg/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lg/f;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lh/y;->a:Lh/l;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lh/l;->a(Lg/f;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lh/y;->b:Lh/i;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lh/i;->a(Lg/f;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lh/y;->c:Lh/f;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lh/f;->a(Lg/f;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lh/y;->a:Lh/l;

    .line 22
    .line 23
    iget v1, v1, Lh/l;->a:I

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lh/y;->d:Lh/h;

    .line 28
    .line 29
    invoke-virtual {v1}, Lh/h;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Ljava/security/cert/CertificateParsingException;

    .line 37
    .line 38
    const-string v0, "Null issuer DN not allowed in v1 certificate"

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_1
    :goto_0
    iget-object v1, p0, Lh/y;->d:Lh/h;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lh/h;->a(Lg/f;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lh/y;->e:Lh/k;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lh/k;->a(Lg/f;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lh/y;->a:Lh/l;

    .line 55
    .line 56
    iget v1, v1, Lh/l;->a:I

    .line 57
    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    iget-object v1, p0, Lh/y;->f:Lh/j;

    .line 61
    .line 62
    invoke-virtual {v1}, Lh/j;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    new-instance p1, Ljava/security/cert/CertificateParsingException;

    .line 70
    .line 71
    const-string v0, "Null subject DN not allowed in v1 certificate"

    .line 72
    .line 73
    invoke-direct {p1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_3
    :goto_1
    iget-object v1, p0, Lh/y;->f:Lh/j;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Lh/j;->a(Lg/f;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lh/y;->g:Lh/m;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Lh/m;->a(Lg/f;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lh/y;->h:Lh/g;

    .line 88
    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    invoke-virtual {v1, v0}, Lh/g;->a(Lg/f;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    const/16 v1, 0x30

    .line 95
    .line 96
    invoke-virtual {p1, v1, v0}, Lg/f;->J(BLg/f;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .line 1
    const/16 v0, 0x2e

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, -0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    move-object v2, p1

    .line 13
    move-object v0, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    sget-object v4, Lh/y;->j:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Integer;

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    :goto_1
    if-eqz v1, :cond_19

    .line 41
    .line 42
    const/16 p1, 0xa

    .line 43
    .line 44
    if-eq v1, p1, :cond_15

    .line 45
    .line 46
    const-string p1, "number"

    .line 47
    .line 48
    const-string v2, "x500principal"

    .line 49
    .line 50
    const-string v4, "dname"

    .line 51
    .line 52
    packed-switch v1, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    return-object v3

    .line 56
    :pswitch_0
    if-nez v0, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Lh/y;->g:Lh/m;

    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_2
    iget-object p1, p0, Lh/y;->g:Lh/m;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    const-string v1, "value"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iget-object p1, p1, Lh/m;->a:Ljava/security/PublicKey;

    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 78
    .line 79
    const-string v0, "Attribute name not recognized by CertAttrSet: CertificateX509Key."

    .line 80
    .line 81
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :pswitch_1
    if-nez v0, :cond_4

    .line 86
    .line 87
    iget-object p1, p0, Lh/y;->f:Lh/j;

    .line 88
    .line 89
    return-object p1

    .line 90
    :cond_4
    iget-object p1, p0, Lh/y;->f:Lh/j;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    iget-object p1, p1, Lh/j;->a:Lh/w;

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_7

    .line 109
    .line 110
    iget-object v0, p1, Lh/j;->b:Ljavax/security/auth/x500/X500Principal;

    .line 111
    .line 112
    if-nez v0, :cond_6

    .line 113
    .line 114
    iget-object v0, p1, Lh/j;->a:Lh/w;

    .line 115
    .line 116
    iget-object v0, v0, Lh/w;->d:Ljavax/security/auth/x500/X500Principal;

    .line 117
    .line 118
    iput-object v0, p1, Lh/j;->b:Ljavax/security/auth/x500/X500Principal;

    .line 119
    .line 120
    :cond_6
    iget-object p1, p1, Lh/j;->b:Ljavax/security/auth/x500/X500Principal;

    .line 121
    .line 122
    :goto_2
    return-object p1

    .line 123
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 124
    .line 125
    const-string v0, "Attribute name not recognized by CertAttrSet:CertificateSubjectName."

    .line 126
    .line 127
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1

    .line 131
    :pswitch_2
    if-nez v0, :cond_8

    .line 132
    .line 133
    iget-object p1, p0, Lh/y;->e:Lh/k;

    .line 134
    .line 135
    return-object p1

    .line 136
    :cond_8
    iget-object p1, p0, Lh/y;->e:Lh/k;

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    const-string v1, "notBefore"

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_9

    .line 148
    .line 149
    new-instance v0, Ljava/util/Date;

    .line 150
    .line 151
    iget-object p1, p1, Lh/k;->a:Ljava/util/Date;

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 154
    .line 155
    .line 156
    move-result-wide v1

    .line 157
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_9
    const-string v1, "notAfter"

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_a

    .line 168
    .line 169
    new-instance v0, Ljava/util/Date;

    .line 170
    .line 171
    iget-object p1, p1, Lh/k;->b:Ljava/util/Date;

    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 174
    .line 175
    .line 176
    move-result-wide v1

    .line 177
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 178
    .line 179
    .line 180
    :goto_3
    return-object v0

    .line 181
    :cond_a
    new-instance p1, Ljava/io/IOException;

    .line 182
    .line 183
    const-string v0, "Attribute name not recognized by CertAttrSet: CertificateValidity."

    .line 184
    .line 185
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p1

    .line 189
    :pswitch_3
    if-nez v0, :cond_b

    .line 190
    .line 191
    iget-object p1, p0, Lh/y;->d:Lh/h;

    .line 192
    .line 193
    return-object p1

    .line 194
    :cond_b
    iget-object p1, p0, Lh/y;->d:Lh/h;

    .line 195
    .line 196
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_c

    .line 204
    .line 205
    iget-object p1, p1, Lh/h;->a:Lh/w;

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_c
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_e

    .line 213
    .line 214
    iget-object v0, p1, Lh/h;->b:Ljavax/security/auth/x500/X500Principal;

    .line 215
    .line 216
    if-nez v0, :cond_d

    .line 217
    .line 218
    iget-object v0, p1, Lh/h;->a:Lh/w;

    .line 219
    .line 220
    iget-object v0, v0, Lh/w;->d:Ljavax/security/auth/x500/X500Principal;

    .line 221
    .line 222
    iput-object v0, p1, Lh/h;->b:Ljavax/security/auth/x500/X500Principal;

    .line 223
    .line 224
    :cond_d
    iget-object p1, p1, Lh/h;->b:Ljavax/security/auth/x500/X500Principal;

    .line 225
    .line 226
    :goto_4
    return-object p1

    .line 227
    :cond_e
    new-instance p1, Ljava/io/IOException;

    .line 228
    .line 229
    const-string v0, "Attribute name not recognized by CertAttrSet:CertificateIssuerName."

    .line 230
    .line 231
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw p1

    .line 235
    :pswitch_4
    if-nez v0, :cond_f

    .line 236
    .line 237
    iget-object p1, p0, Lh/y;->c:Lh/f;

    .line 238
    .line 239
    return-object p1

    .line 240
    :cond_f
    iget-object p1, p0, Lh/y;->c:Lh/f;

    .line 241
    .line 242
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    const-string v1, "algorithm"

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_10

    .line 252
    .line 253
    iget-object p1, p1, Lh/f;->a:Lh/d;

    .line 254
    .line 255
    return-object p1

    .line 256
    :cond_10
    new-instance p1, Ljava/io/IOException;

    .line 257
    .line 258
    const-string v0, "Attribute name not recognized by CertAttrSet:CertificateAlgorithmId."

    .line 259
    .line 260
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw p1

    .line 264
    :pswitch_5
    if-nez v0, :cond_11

    .line 265
    .line 266
    iget-object p1, p0, Lh/y;->b:Lh/i;

    .line 267
    .line 268
    return-object p1

    .line 269
    :cond_11
    iget-object v1, p0, Lh/y;->b:Lh/i;

    .line 270
    .line 271
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    if-eqz p1, :cond_12

    .line 279
    .line 280
    iget-object p1, v1, Lh/i;->a:Lh/u;

    .line 281
    .line 282
    return-object p1

    .line 283
    :cond_12
    new-instance p1, Ljava/io/IOException;

    .line 284
    .line 285
    const-string v0, "Attribute name not recognized by CertAttrSet:CertificateSerialNumber."

    .line 286
    .line 287
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    throw p1

    .line 291
    :pswitch_6
    if-nez v0, :cond_13

    .line 292
    .line 293
    iget-object p1, p0, Lh/y;->a:Lh/l;

    .line 294
    .line 295
    return-object p1

    .line 296
    :cond_13
    iget-object v1, p0, Lh/y;->a:Lh/l;

    .line 297
    .line 298
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    if-eqz p1, :cond_14

    .line 303
    .line 304
    new-instance p1, Ljava/lang/Integer;

    .line 305
    .line 306
    iget v0, v1, Lh/l;->a:I

    .line 307
    .line 308
    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 309
    .line 310
    .line 311
    return-object p1

    .line 312
    :cond_14
    new-instance p1, Ljava/io/IOException;

    .line 313
    .line 314
    const-string v0, "Attribute name not recognized by CertAttrSet: CertificateVersion."

    .line 315
    .line 316
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    throw p1

    .line 320
    :cond_15
    if-nez v0, :cond_16

    .line 321
    .line 322
    iget-object p1, p0, Lh/y;->h:Lh/g;

    .line 323
    .line 324
    return-object p1

    .line 325
    :cond_16
    iget-object p1, p0, Lh/y;->h:Lh/g;

    .line 326
    .line 327
    if-nez p1, :cond_17

    .line 328
    .line 329
    return-object v3

    .line 330
    :cond_17
    iget-object p1, p1, Lh/g;->a:Ljava/util/Hashtable;

    .line 331
    .line 332
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    if-eqz p1, :cond_18

    .line 337
    .line 338
    return-object p1

    .line 339
    :cond_18
    new-instance p1, Ljava/io/IOException;

    .line 340
    .line 341
    const-string v1, "No extension found with name "

    .line 342
    .line 343
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    throw p1

    .line 351
    :cond_19
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    .line 352
    .line 353
    const-string v1, "Attribute name not recognized: "

    .line 354
    .line 355
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    invoke-direct {v0, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw v0

    .line 363
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()[B
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lh/y;->i:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lg/f;

    .line 6
    .line 7
    invoke-direct {v0}, Lg/f;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lh/y;->b(Lg/f;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lh/y;->i:[B

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :catch_1
    move-exception v0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    :goto_0
    iget-object v0, p0, Lh/y;->i:[B

    .line 25
    .line 26
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    return-object v0

    .line 33
    :goto_1
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {v1, v0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v1

    .line 43
    :goto_2
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {v1, v0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v1
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/16 v0, 0x2e

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, -0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    move-object v2, p2

    .line 13
    move-object v0, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    sget-object v4, Lh/y;->j:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Integer;

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    :goto_1
    if-eqz v1, :cond_26

    .line 41
    .line 42
    iput-object v3, p0, Lh/y;->i:[B

    .line 43
    .line 44
    const-string p2, "number"

    .line 45
    .line 46
    const-string v2, "Attribute must be of type X500Name."

    .line 47
    .line 48
    const-string v4, "dname"

    .line 49
    .line 50
    const-string v5, "Invalid version"

    .line 51
    .line 52
    packed-switch v1, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    goto/16 :goto_2

    .line 56
    .line 57
    :pswitch_0
    if-nez v0, :cond_4

    .line 58
    .line 59
    iget-object p2, p0, Lh/y;->a:Lh/l;

    .line 60
    .line 61
    iget p2, p2, Lh/l;->a:I

    .line 62
    .line 63
    add-int/lit8 p2, p2, -0x2

    .line 64
    .line 65
    if-ltz p2, :cond_3

    .line 66
    .line 67
    instance-of p2, p1, Lh/g;

    .line 68
    .line 69
    if-eqz p2, :cond_2

    .line 70
    .line 71
    check-cast p1, Lh/g;

    .line 72
    .line 73
    iput-object p1, p0, Lh/y;->h:Lh/g;

    .line 74
    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :cond_2
    new-instance p1, Ljava/security/cert/CertificateException;

    .line 78
    .line 79
    const-string p2, "Extensions class type invalid."

    .line 80
    .line 81
    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_3
    new-instance p1, Ljava/security/cert/CertificateException;

    .line 86
    .line 87
    invoke-direct {p1, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_4
    iget-object p2, p0, Lh/y;->h:Lh/g;

    .line 92
    .line 93
    if-nez p2, :cond_5

    .line 94
    .line 95
    new-instance p2, Lh/g;

    .line 96
    .line 97
    invoke-direct {p2}, Lh/g;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object p2, p0, Lh/y;->h:Lh/g;

    .line 101
    .line 102
    :cond_5
    iget-object p2, p0, Lh/y;->h:Lh/g;

    .line 103
    .line 104
    invoke-virtual {p2, p1, v0}, Lh/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_2

    .line 108
    .line 109
    :pswitch_1
    if-nez v0, :cond_7

    .line 110
    .line 111
    iget-object p1, p0, Lh/y;->a:Lh/l;

    .line 112
    .line 113
    iget p1, p1, Lh/l;->a:I

    .line 114
    .line 115
    add-int/lit8 p1, p1, -0x1

    .line 116
    .line 117
    if-ltz p1, :cond_6

    .line 118
    .line 119
    new-instance p1, Ljava/security/cert/CertificateException;

    .line 120
    .line 121
    const-string p2, "SubjectUniqueId class type invalid."

    .line 122
    .line 123
    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1

    .line 127
    :cond_6
    new-instance p1, Ljava/security/cert/CertificateException;

    .line 128
    .line 129
    invoke-direct {p1, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_7
    throw v3

    .line 134
    :pswitch_2
    if-nez v0, :cond_9

    .line 135
    .line 136
    iget-object p1, p0, Lh/y;->a:Lh/l;

    .line 137
    .line 138
    iget p1, p1, Lh/l;->a:I

    .line 139
    .line 140
    add-int/lit8 p1, p1, -0x1

    .line 141
    .line 142
    if-ltz p1, :cond_8

    .line 143
    .line 144
    new-instance p1, Ljava/security/cert/CertificateException;

    .line 145
    .line 146
    const-string p2, "IssuerUniqueId class type invalid."

    .line 147
    .line 148
    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :cond_8
    new-instance p1, Ljava/security/cert/CertificateException;

    .line 153
    .line 154
    invoke-direct {p1, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p1

    .line 158
    :cond_9
    throw v3

    .line 159
    :pswitch_3
    if-nez v0, :cond_b

    .line 160
    .line 161
    instance-of p2, p1, Lh/m;

    .line 162
    .line 163
    if-eqz p2, :cond_a

    .line 164
    .line 165
    check-cast p1, Lh/m;

    .line 166
    .line 167
    iput-object p1, p0, Lh/y;->g:Lh/m;

    .line 168
    .line 169
    goto/16 :goto_2

    .line 170
    .line 171
    :cond_a
    new-instance p1, Ljava/security/cert/CertificateException;

    .line 172
    .line 173
    const-string p2, "Key class type invalid."

    .line 174
    .line 175
    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw p1

    .line 179
    :cond_b
    iget-object p2, p0, Lh/y;->g:Lh/m;

    .line 180
    .line 181
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    const-string v1, "value"

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_c

    .line 191
    .line 192
    check-cast p1, Ljava/security/PublicKey;

    .line 193
    .line 194
    iput-object p1, p2, Lh/m;->a:Ljava/security/PublicKey;

    .line 195
    .line 196
    goto/16 :goto_2

    .line 197
    .line 198
    :cond_c
    new-instance p1, Ljava/io/IOException;

    .line 199
    .line 200
    const-string p2, "Attribute name not recognized by CertAttrSet: CertificateX509Key."

    .line 201
    .line 202
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p1

    .line 206
    :pswitch_4
    if-nez v0, :cond_e

    .line 207
    .line 208
    instance-of p2, p1, Lh/j;

    .line 209
    .line 210
    if-eqz p2, :cond_d

    .line 211
    .line 212
    check-cast p1, Lh/j;

    .line 213
    .line 214
    iput-object p1, p0, Lh/y;->f:Lh/j;

    .line 215
    .line 216
    goto/16 :goto_2

    .line 217
    .line 218
    :cond_d
    new-instance p1, Ljava/security/cert/CertificateException;

    .line 219
    .line 220
    const-string p2, "Subject class type invalid."

    .line 221
    .line 222
    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw p1

    .line 226
    :cond_e
    iget-object p2, p0, Lh/y;->f:Lh/j;

    .line 227
    .line 228
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    instance-of v1, p1, Lh/w;

    .line 232
    .line 233
    if-eqz v1, :cond_10

    .line 234
    .line 235
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_f

    .line 240
    .line 241
    check-cast p1, Lh/w;

    .line 242
    .line 243
    iput-object p1, p2, Lh/j;->a:Lh/w;

    .line 244
    .line 245
    iput-object v3, p2, Lh/j;->b:Ljavax/security/auth/x500/X500Principal;

    .line 246
    .line 247
    goto/16 :goto_2

    .line 248
    .line 249
    :cond_f
    new-instance p1, Ljava/io/IOException;

    .line 250
    .line 251
    const-string p2, "Attribute name not recognized by CertAttrSet:CertificateSubjectName."

    .line 252
    .line 253
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw p1

    .line 257
    :cond_10
    new-instance p1, Ljava/io/IOException;

    .line 258
    .line 259
    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw p1

    .line 263
    :pswitch_5
    if-nez v0, :cond_12

    .line 264
    .line 265
    instance-of p2, p1, Lh/k;

    .line 266
    .line 267
    if-eqz p2, :cond_11

    .line 268
    .line 269
    check-cast p1, Lh/k;

    .line 270
    .line 271
    iput-object p1, p0, Lh/y;->e:Lh/k;

    .line 272
    .line 273
    goto/16 :goto_2

    .line 274
    .line 275
    :cond_11
    new-instance p1, Ljava/security/cert/CertificateException;

    .line 276
    .line 277
    const-string p2, "CertificateValidity class type invalid."

    .line 278
    .line 279
    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw p1

    .line 283
    :cond_12
    iget-object p2, p0, Lh/y;->e:Lh/k;

    .line 284
    .line 285
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    instance-of v1, p1, Ljava/util/Date;

    .line 289
    .line 290
    if-eqz v1, :cond_15

    .line 291
    .line 292
    const-string v1, "notBefore"

    .line 293
    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-eqz v1, :cond_13

    .line 299
    .line 300
    check-cast p1, Ljava/util/Date;

    .line 301
    .line 302
    iput-object p1, p2, Lh/k;->a:Ljava/util/Date;

    .line 303
    .line 304
    goto/16 :goto_2

    .line 305
    .line 306
    :cond_13
    const-string v1, "notAfter"

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_14

    .line 313
    .line 314
    check-cast p1, Ljava/util/Date;

    .line 315
    .line 316
    iput-object p1, p2, Lh/k;->b:Ljava/util/Date;

    .line 317
    .line 318
    goto/16 :goto_2

    .line 319
    .line 320
    :cond_14
    new-instance p1, Ljava/io/IOException;

    .line 321
    .line 322
    const-string p2, "Attribute name not recognized by CertAttrSet: CertificateValidity."

    .line 323
    .line 324
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw p1

    .line 328
    :cond_15
    new-instance p1, Ljava/io/IOException;

    .line 329
    .line 330
    const-string p2, "Attribute must be of type Date."

    .line 331
    .line 332
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    throw p1

    .line 336
    :pswitch_6
    if-nez v0, :cond_17

    .line 337
    .line 338
    instance-of p2, p1, Lh/h;

    .line 339
    .line 340
    if-eqz p2, :cond_16

    .line 341
    .line 342
    check-cast p1, Lh/h;

    .line 343
    .line 344
    iput-object p1, p0, Lh/y;->d:Lh/h;

    .line 345
    .line 346
    goto/16 :goto_2

    .line 347
    .line 348
    :cond_16
    new-instance p1, Ljava/security/cert/CertificateException;

    .line 349
    .line 350
    const-string p2, "Issuer class type invalid."

    .line 351
    .line 352
    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    throw p1

    .line 356
    :cond_17
    iget-object p2, p0, Lh/y;->d:Lh/h;

    .line 357
    .line 358
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    instance-of v1, p1, Lh/w;

    .line 362
    .line 363
    if-eqz v1, :cond_19

    .line 364
    .line 365
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    if-eqz v0, :cond_18

    .line 370
    .line 371
    check-cast p1, Lh/w;

    .line 372
    .line 373
    iput-object p1, p2, Lh/h;->a:Lh/w;

    .line 374
    .line 375
    iput-object v3, p2, Lh/h;->b:Ljavax/security/auth/x500/X500Principal;

    .line 376
    .line 377
    goto/16 :goto_2

    .line 378
    .line 379
    :cond_18
    new-instance p1, Ljava/io/IOException;

    .line 380
    .line 381
    const-string p2, "Attribute name not recognized by CertAttrSet:CertificateIssuerName."

    .line 382
    .line 383
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    throw p1

    .line 387
    :cond_19
    new-instance p1, Ljava/io/IOException;

    .line 388
    .line 389
    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    throw p1

    .line 393
    :pswitch_7
    if-nez v0, :cond_1b

    .line 394
    .line 395
    instance-of p2, p1, Lh/f;

    .line 396
    .line 397
    if-eqz p2, :cond_1a

    .line 398
    .line 399
    check-cast p1, Lh/f;

    .line 400
    .line 401
    iput-object p1, p0, Lh/y;->c:Lh/f;

    .line 402
    .line 403
    goto/16 :goto_2

    .line 404
    .line 405
    :cond_1a
    new-instance p1, Ljava/security/cert/CertificateException;

    .line 406
    .line 407
    const-string p2, "AlgorithmId class type invalid."

    .line 408
    .line 409
    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw p1

    .line 413
    :cond_1b
    iget-object p2, p0, Lh/y;->c:Lh/f;

    .line 414
    .line 415
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    instance-of v1, p1, Lh/d;

    .line 419
    .line 420
    if-eqz v1, :cond_1d

    .line 421
    .line 422
    const-string v1, "algorithm"

    .line 423
    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    if-eqz v0, :cond_1c

    .line 429
    .line 430
    check-cast p1, Lh/d;

    .line 431
    .line 432
    iput-object p1, p2, Lh/f;->a:Lh/d;

    .line 433
    .line 434
    goto :goto_2

    .line 435
    :cond_1c
    new-instance p1, Ljava/io/IOException;

    .line 436
    .line 437
    const-string p2, "Attribute name not recognized by CertAttrSet:CertificateAlgorithmId."

    .line 438
    .line 439
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    throw p1

    .line 443
    :cond_1d
    new-instance p1, Ljava/io/IOException;

    .line 444
    .line 445
    const-string p2, "Attribute must be of type AlgorithmId."

    .line 446
    .line 447
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    throw p1

    .line 451
    :pswitch_8
    if-nez v0, :cond_1f

    .line 452
    .line 453
    instance-of p2, p1, Lh/i;

    .line 454
    .line 455
    if-eqz p2, :cond_1e

    .line 456
    .line 457
    check-cast p1, Lh/i;

    .line 458
    .line 459
    iput-object p1, p0, Lh/y;->b:Lh/i;

    .line 460
    .line 461
    goto :goto_2

    .line 462
    :cond_1e
    new-instance p1, Ljava/security/cert/CertificateException;

    .line 463
    .line 464
    const-string p2, "SerialNumber class type invalid."

    .line 465
    .line 466
    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    throw p1

    .line 470
    :cond_1f
    iget-object v1, p0, Lh/y;->b:Lh/i;

    .line 471
    .line 472
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    instance-of v2, p1, Lh/u;

    .line 476
    .line 477
    if-eqz v2, :cond_21

    .line 478
    .line 479
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 480
    .line 481
    .line 482
    move-result p2

    .line 483
    if-eqz p2, :cond_20

    .line 484
    .line 485
    check-cast p1, Lh/u;

    .line 486
    .line 487
    iput-object p1, v1, Lh/i;->a:Lh/u;

    .line 488
    .line 489
    goto :goto_2

    .line 490
    :cond_20
    new-instance p1, Ljava/io/IOException;

    .line 491
    .line 492
    const-string p2, "Attribute name not recognized by CertAttrSet:CertificateSerialNumber."

    .line 493
    .line 494
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    throw p1

    .line 498
    :cond_21
    new-instance p1, Ljava/io/IOException;

    .line 499
    .line 500
    const-string p2, "Attribute must be of type SerialNumber."

    .line 501
    .line 502
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    throw p1

    .line 506
    :pswitch_9
    if-nez v0, :cond_23

    .line 507
    .line 508
    instance-of p2, p1, Lh/l;

    .line 509
    .line 510
    if-eqz p2, :cond_22

    .line 511
    .line 512
    check-cast p1, Lh/l;

    .line 513
    .line 514
    iput-object p1, p0, Lh/y;->a:Lh/l;

    .line 515
    .line 516
    goto :goto_2

    .line 517
    :cond_22
    new-instance p1, Ljava/security/cert/CertificateException;

    .line 518
    .line 519
    const-string p2, "Version class type invalid."

    .line 520
    .line 521
    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    throw p1

    .line 525
    :cond_23
    iget-object v1, p0, Lh/y;->a:Lh/l;

    .line 526
    .line 527
    instance-of v2, p1, Ljava/lang/Integer;

    .line 528
    .line 529
    if-eqz v2, :cond_25

    .line 530
    .line 531
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 532
    .line 533
    .line 534
    move-result p2

    .line 535
    if-eqz p2, :cond_24

    .line 536
    .line 537
    check-cast p1, Ljava/lang/Integer;

    .line 538
    .line 539
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 540
    .line 541
    .line 542
    move-result p1

    .line 543
    iput p1, v1, Lh/l;->a:I

    .line 544
    .line 545
    :goto_2
    return-void

    .line 546
    :cond_24
    new-instance p1, Ljava/io/IOException;

    .line 547
    .line 548
    const-string p2, "Attribute name not recognized by CertAttrSet: CertificateVersion."

    .line 549
    .line 550
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    throw p1

    .line 554
    :cond_25
    new-instance p1, Ljava/io/IOException;

    .line 555
    .line 556
    const-string p2, "Attribute must be of type Integer."

    .line 557
    .line 558
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    throw p1

    .line 562
    :cond_26
    new-instance p1, Ljava/security/cert/CertificateException;

    .line 563
    .line 564
    const-string v0, "Attribute name not recognized: "

    .line 565
    .line 566
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object p2

    .line 570
    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    throw p1

    .line 574
    nop

    .line 575
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lh/y;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    check-cast p1, Lh/y;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-ne p0, p1, :cond_1

    .line 10
    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    iget-object v2, p0, Lh/y;->i:[B

    .line 14
    .line 15
    if-eqz v2, :cond_5

    .line 16
    .line 17
    iget-object v3, p1, Lh/y;->i:[B

    .line 18
    .line 19
    if-nez v3, :cond_2

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    array-length v2, v2

    .line 23
    array-length v3, v3

    .line 24
    if-eq v2, v3, :cond_3

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_3
    const/4 v2, 0x0

    .line 28
    :goto_0
    iget-object v3, p0, Lh/y;->i:[B

    .line 29
    .line 30
    array-length v4, v3

    .line 31
    if-ge v2, v4, :cond_0

    .line 32
    .line 33
    aget-byte v3, v3, v2

    .line 34
    .line 35
    iget-object v4, p1, Lh/y;->i:[B

    .line 36
    .line 37
    aget-byte v4, v4, v2

    .line 38
    .line 39
    if-eq v3, v4, :cond_4

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_5
    :goto_1
    return v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :goto_0
    iget-object v2, p0, Lh/y;->i:[B

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_0

    .line 7
    .line 8
    aget-byte v2, v2, v1

    .line 9
    .line 10
    mul-int v2, v2, v1

    .line 11
    .line 12
    add-int/2addr v0, v2

    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lh/y;->f:Lh/j;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lh/y;->g:Lh/m;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lh/y;->e:Lh/k;

    .line 10
    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Lh/y;->d:Lh/h;

    .line 14
    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    iget-object v0, p0, Lh/y;->c:Lh/f;

    .line 18
    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    iget-object v0, p0, Lh/y;->b:Lh/i;

    .line 22
    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "[\n"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "  "

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lh/y;->a:Lh/l;

    .line 40
    .line 41
    invoke-virtual {v3}, Lh/l;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, "\n"

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v4, "  Subject: "

    .line 63
    .line 64
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v4, p0, Lh/y;->f:Lh/j;

    .line 68
    .line 69
    invoke-virtual {v4}, Lh/j;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v4, "  Signature Algorithm: "

    .line 89
    .line 90
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v4, p0, Lh/y;->c:Lh/f;

    .line 94
    .line 95
    invoke-virtual {v4}, Lh/f;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v4, "  Key:  "

    .line 115
    .line 116
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v4, p0, Lh/y;->g:Lh/m;

    .line 120
    .line 121
    invoke-virtual {v4}, Lh/m;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v4, p0, Lh/y;->e:Lh/k;

    .line 144
    .line 145
    invoke-virtual {v4}, Lh/k;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v4, "  Issuer: "

    .line 165
    .line 166
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v4, p0, Lh/y;->d:Lh/h;

    .line 170
    .line 171
    invoke-virtual {v4}, Lh/h;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object v2, p0, Lh/y;->b:Lh/i;

    .line 194
    .line 195
    invoke-virtual {v2}, Lh/i;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-object v1, p0, Lh/y;->h:Lh/g;

    .line 213
    .line 214
    if-eqz v1, :cond_3

    .line 215
    .line 216
    iget-object v1, v1, Lh/g;->a:Ljava/util/Hashtable;

    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v4, "\nCertificate Extensions: "

    .line 229
    .line 230
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    array-length v4, v1

    .line 234
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const/4 v2, 0x0

    .line 245
    :goto_0
    array-length v4, v1

    .line 246
    const-string v5, "]: "

    .line 247
    .line 248
    const-string v6, "\n["

    .line 249
    .line 250
    if-ge v2, v4, :cond_2

    .line 251
    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    add-int/lit8 v6, v2, 0x1

    .line 258
    .line 259
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    aget-object v2, v1, v2

    .line 273
    .line 274
    check-cast v2, Lh/n;

    .line 275
    .line 276
    :try_start_0
    iget-object v4, v2, Lh/n;->a:Lg/h;

    .line 277
    .line 278
    invoke-static {v4}, Lh/q;->b(Lg/h;)Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    if-nez v4, :cond_0

    .line 283
    .line 284
    invoke-virtual {v2}, Lh/n;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    iget-object v2, v2, Lh/n;->b:[B

    .line 292
    .line 293
    if-eqz v2, :cond_1

    .line 294
    .line 295
    new-instance v4, Lg/f;

    .line 296
    .line 297
    invoke-direct {v4}, Lg/f;-><init>()V

    .line 298
    .line 299
    .line 300
    const/4 v5, 0x4

    .line 301
    invoke-virtual {v4, v5, v2}, Lg/f;->K(B[B)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    new-instance v4, La/c;

    .line 309
    .line 310
    invoke-direct {v4}, La/c;-><init>()V

    .line 311
    .line 312
    .line 313
    new-instance v5, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .line 317
    .line 318
    const-string v7, "Extension unknown: DER encoded OCTET string =\n"

    .line 319
    .line 320
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4, v2}, La/b;->c([B)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    goto :goto_1

    .line 341
    :cond_0
    invoke-virtual {v2}, Lh/n;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .line 347
    .line 348
    goto :goto_1

    .line 349
    :catch_0
    const-string v2, ", Error parsing this extension"

    .line 350
    .line 351
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    :cond_1
    :goto_1
    move v2, v6

    .line 355
    goto :goto_0

    .line 356
    :cond_2
    iget-object v1, p0, Lh/y;->h:Lh/g;

    .line 357
    .line 358
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    if-nez v2, :cond_3

    .line 370
    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    const-string v3, "\nUnparseable certificate extensions: "

    .line 374
    .line 375
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    const/4 v2, 0x1

    .line 401
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    if-eqz v3, :cond_3

    .line 406
    .line 407
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    check-cast v3, Lh/n;

    .line 412
    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    add-int/lit8 v7, v2, 0x1

    .line 419
    .line 420
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    move v2, v7

    .line 437
    goto :goto_2

    .line 438
    :cond_3
    const-string v1, "\n]"

    .line 439
    .line 440
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    return-object v0

    .line 448
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 449
    .line 450
    const-string v1, "X.509 cert is incomplete"

    .line 451
    .line 452
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    goto :goto_4

    .line 456
    :goto_3
    throw v0

    .line 457
    :goto_4
    goto :goto_3
.end method
