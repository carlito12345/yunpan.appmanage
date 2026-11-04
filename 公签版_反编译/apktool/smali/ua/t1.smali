.class public final Lua/t1;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lx9/b6;

.field public final synthetic e:Lcom/yunpan/appmanage/ui/ActivityDownload;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityDownload;Ljava/lang/String;Lx9/b6;I)V
    .locals 0

    .line 1
    iput p4, p0, Lua/t1;->b:I

    iput-object p1, p0, Lua/t1;->e:Lcom/yunpan/appmanage/ui/ActivityDownload;

    iput-object p2, p0, Lua/t1;->c:Ljava/lang/String;

    iput-object p3, p0, Lua/t1;->d:Lx9/b6;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Throwable;)V
    .locals 12

    .line 1
    iget p1, p0, Lua/t1;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v3, Lx9/n5;

    .line 7
    .line 8
    const/16 p1, 0x15

    .line 9
    .line 10
    const-string v0, "\u5149\u9e2d\u7f51\u76d8"

    .line 11
    .line 12
    invoke-direct {v3, p1, v0}, Lx9/n5;-><init>(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string p1, ""

    .line 16
    .line 17
    iput-object p1, v3, Lx9/n5;->e:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p1, v3, Lx9/n5;->f:Ljava/lang/String;

    .line 20
    .line 21
    new-instance p1, Lha/bf;

    .line 22
    .line 23
    sget v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->P0:I

    .line 24
    .line 25
    iget-object v1, p0, Lua/t1;->e:Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 26
    .line 27
    iget-object v2, v1, Lda/g;->A:Lda/g;

    .line 28
    .line 29
    new-instance v4, Lma/b;

    .line 30
    .line 31
    const/16 v0, 0xe

    .line 32
    .line 33
    invoke-direct {v4, p0, v0, v3}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    move-object v0, p1

    .line 38
    invoke-direct/range {v0 .. v5}, Lha/bf;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_0
    new-instance v9, Lx9/n5;

    .line 46
    .line 47
    const/4 p1, 0x2

    .line 48
    const-string v0, "123\u7f51\u76d8"

    .line 49
    .line 50
    invoke-direct {v9, p1, v0}, Lx9/n5;-><init>(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string p1, "123"

    .line 54
    .line 55
    iput-object p1, v9, Lx9/n5;->e:Ljava/lang/String;

    .line 56
    .line 57
    iput-object p1, v9, Lx9/n5;->f:Ljava/lang/String;

    .line 58
    .line 59
    new-instance p1, Lha/bf;

    .line 60
    .line 61
    sget v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->P0:I

    .line 62
    .line 63
    iget-object v7, p0, Lua/t1;->e:Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 64
    .line 65
    iget-object v8, v7, Lda/g;->A:Lda/g;

    .line 66
    .line 67
    new-instance v10, Lma/b;

    .line 68
    .line 69
    const/16 v0, 0xd

    .line 70
    .line 71
    invoke-direct {v10, p0, v0, v9}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    const/4 v11, 0x1

    .line 75
    move-object v6, p1

    .line 76
    invoke-direct/range {v6 .. v11}, Lha/bf;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/n5;Ljava/lang/Object;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final E(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lua/t1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lx9/n5;

    .line 7
    .line 8
    iget-object v0, p0, Lua/t1;->e:Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 9
    .line 10
    iput-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->Z:Lx9/n5;

    .line 11
    .line 12
    iget-object p1, p0, Lua/t1;->c:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lua/t1;->d:Lx9/b6;

    .line 15
    .line 16
    invoke-virtual {v0, p1, v1}, Lcom/yunpan/appmanage/ui/ActivityDownload;->E(Ljava/lang/String;Lx9/b6;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    check-cast p1, Lx9/n5;

    .line 21
    .line 22
    iget-object v0, p0, Lua/t1;->e:Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 23
    .line 24
    iput-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->Y:Lx9/n5;

    .line 25
    .line 26
    iget-object p1, p0, Lua/t1;->c:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, p0, Lua/t1;->d:Lx9/b6;

    .line 29
    .line 30
    invoke-virtual {v0, p1, v1}, Lcom/yunpan/appmanage/ui/ActivityDownload;->E(Ljava/lang/String;Lx9/b6;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
