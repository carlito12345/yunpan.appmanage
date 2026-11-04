.class public final Lo5/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf5/k;


# instance fields
.field public final synthetic a:I

.field public final b:Lo5/p;


# direct methods
.method public synthetic constructor <init>(Lo5/p;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo5/f;->a:I

    iput-object p1, p0, Lo5/f;->b:Lo5/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILf5/i;)Lh5/z;
    .locals 9

    .line 1
    iget v0, p0, Lo5/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 7
    .line 8
    new-instance v1, Lv3/f;

    .line 9
    .line 10
    iget-object v0, p0, Lo5/f;->b:Lo5/p;

    .line 11
    .line 12
    iget-object v2, v0, Lo5/p;->d:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v3, v0, Lo5/p;->c:La2/k1;

    .line 15
    .line 16
    invoke-direct {v1, p1, v2, v3}, Lv3/f;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;La2/k1;)V

    .line 17
    .line 18
    .line 19
    sget-object v5, Lo5/p;->k:Lha/l2;

    .line 20
    .line 21
    move v2, p2

    .line 22
    move v3, p3

    .line 23
    move-object v4, p4

    .line 24
    invoke-virtual/range {v0 .. v5}, Lo5/p;->a(Lv3/f;IILf5/i;Lo5/o;)Lo5/d;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :pswitch_0
    move-object v2, p1

    .line 30
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    new-instance p1, Lv3/f;

    .line 33
    .line 34
    iget-object v6, p0, Lo5/f;->b:Lo5/p;

    .line 35
    .line 36
    iget-object v3, v6, Lo5/p;->d:Ljava/util/ArrayList;

    .line 37
    .line 38
    iget-object v4, v6, Lo5/p;->c:La2/k1;

    .line 39
    .line 40
    const/16 v1, 0x15

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    move-object v0, p1

    .line 44
    invoke-direct/range {v0 .. v5}, Lv3/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 45
    .line 46
    .line 47
    sget-object v8, Lo5/p;->k:Lha/l2;

    .line 48
    .line 49
    move-object v3, v6

    .line 50
    move-object v4, p1

    .line 51
    move v5, p2

    .line 52
    move v6, p3

    .line 53
    move-object v7, p4

    .line 54
    invoke-virtual/range {v3 .. v8}, Lo5/p;->a(Lv3/f;IILf5/i;Lo5/o;)Lo5/d;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;Lf5/i;)Z
    .locals 3

    .line 1
    iget p2, p0, Lo5/f;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 7
    .line 8
    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "HUAWEI"

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string v0, "HONOR"

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    .line 27
    .line 28
    .line 29
    move-result-wide p1

    .line 30
    const-wide/32 v0, 0x20000000

    .line 31
    .line 32
    .line 33
    cmp-long v2, p1, v0

    .line 34
    .line 35
    if-gtz v2, :cond_2

    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Lo5/f;->b:Lo5/p;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/bumptech/glide/load/data/i;->e()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 p1, 0x0

    .line 51
    :goto_0
    return p1

    .line 52
    :pswitch_0
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    iget-object p1, p0, Lo5/f;->b:Lo5/p;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
