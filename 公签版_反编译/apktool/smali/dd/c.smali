.class public final Ldd/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/f;
.implements Lvc/j;


# instance fields
.field public final synthetic a:I

.field public b:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, Ldd/c;->a:I

    packed-switch p1, :pswitch_data_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Ldd/c;->b:J

    return-void

    .line 4
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 5
    iput-wide v0, p0, Ldd/c;->b:J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Ldd/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lr1/s;)V
    .locals 2

    const/4 v0, 0x4

    iput v0, p0, Ldd/c;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-wide v0, p1, Lr1/r;->a:J

    iput-wide v0, p0, Ldd/c;->b:J

    return-void
.end method


# virtual methods
.method public b()Lr1/s;
    .locals 1

    .line 1
    new-instance v0, Lr1/s;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lr1/s;-><init>(Ldd/c;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public c(I[B)I
    .locals 2

    .line 1
    iget v0, p0, Ldd/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Ldd/c;->b:J

    .line 7
    .line 8
    invoke-static {v0, v1, p2, p1}, Lrd/a;->g(J[BI)V

    .line 9
    .line 10
    .line 11
    const/16 p1, 0x8

    .line 12
    .line 13
    return p1

    .line 14
    :pswitch_0
    iget-wide v0, p0, Ldd/c;->b:J

    .line 15
    .line 16
    invoke-static {v0, v1, p2, p1}, Lrd/a;->g(J[BI)V

    .line 17
    .line 18
    .line 19
    const/16 p1, 0x8

    .line 20
    .line 21
    return p1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public i(II[B)I
    .locals 0

    .line 1
    iget p2, p0, Ldd/c;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p3}, Lrd/a;->c(I[B)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    iput-wide p1, p0, Ldd/c;->b:J

    .line 11
    .line 12
    const/16 p1, 0x8

    .line 13
    .line 14
    return p1

    .line 15
    :pswitch_0
    invoke-static {p1, p3}, Lrd/a;->c(I[B)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    iput-wide p1, p0, Ldd/c;->b:J

    .line 20
    .line 21
    const/16 p1, 0x8

    .line 22
    .line 23
    return p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Ldd/c;->a:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x8

    return v0

    :pswitch_0
    const/16 v0, 0x8

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Ldd/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "SmbQueryFileInternalInfo[indexNumber="

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-wide v2, p0, Ldd/c;->b:J

    .line 21
    .line 22
    const-string v4, "]"

    .line 23
    .line 24
    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/media/session/a;->t(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "EndOfFileInformation[endOfFile="

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-wide v2, p0, Ldd/c;->b:J

    .line 42
    .line 43
    const-string v4, "]"

    .line 44
    .line 45
    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/media/session/a;->t(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
