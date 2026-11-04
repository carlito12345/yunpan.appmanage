.class public final Lzh/a;
.super Lbi/a;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lzh/a;->c:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lbi/a;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/zip/CRC32;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lzh/a;->d:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 p1, 0x4

    .line 17
    iput p1, p0, Lbi/a;->a:I

    .line 18
    .line 19
    const-string p1, "CRC32"

    .line 20
    .line 21
    iput-object p1, p0, Lbi/a;->b:Ljava/lang/Object;

    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    invoke-direct {p0}, Lbi/a;-><init>()V

    .line 25
    .line 26
    .line 27
    const/16 p1, 0x20

    .line 28
    .line 29
    iput p1, p0, Lbi/a;->a:I

    .line 30
    .line 31
    const-string p1, "SHA-256"

    .line 32
    .line 33
    iput-object p1, p0, Lbi/a;->b:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lzh/a;->d:Ljava/lang/Object;

    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()[B
    .locals 4

    .line 1
    iget v0, p0, Lzh/a;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lzh/a;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/security/MessageDigest;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :pswitch_0
    const/4 v0, 0x4

    .line 19
    new-array v0, v0, [B

    .line 20
    .line 21
    iget-object v1, p0, Lzh/a;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Ljava/util/zip/CRC32;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    long-to-int v3, v2

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static {v2, v3, v0}, Lq4/a;->Z(II[B)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b([BII)V
    .locals 1

    .line 1
    iget v0, p0, Lzh/a;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lzh/a;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/security/MessageDigest;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lzh/a;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/util/zip/CRC32;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
