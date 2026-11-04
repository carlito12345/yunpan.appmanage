.class public final Lma/d;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lha/ze;


# direct methods
.method public synthetic constructor <init>(Lha/ze;I)V
    .locals 0

    .line 1
    iput p2, p0, Lma/d;->b:I

    iput-object p1, p0, Lma/d;->c:Lha/ze;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget v0, p0, Lma/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lma/d;->c:Lha/ze;

    .line 7
    .line 8
    iget-object p1, p1, Lha/ze;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Lha/u9;

    .line 11
    .line 12
    invoke-virtual {p1}, Lha/u9;->a()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lma/d;->c:Lha/ze;

    .line 17
    .line 18
    iget-object v0, v0, Lha/ze;->e:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lha/u9;

    .line 21
    .line 22
    const-string v1, ""

    .line 23
    .line 24
    invoke-static {v0, v1}, Ll2/z;->r(Lha/u9;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public E(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lma/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lma/d;->c:Lha/ze;

    .line 8
    .line 9
    iget-object v0, v0, Lha/ze;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lha/u9;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Lha/u9;->b(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lgc/b;)V
    .locals 1

    .line 1
    iget p1, p0, Lma/d;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lma/d;->c:Lha/ze;

    .line 7
    .line 8
    iget-object p1, p1, Lha/ze;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Lha/u9;

    .line 11
    .line 12
    const-string v0, "\u5b89\u88c5\u4e2d"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object p1, p0, Lma/d;->c:Lha/ze;

    .line 19
    .line 20
    iget-object p1, p1, Lha/ze;->e:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lha/u9;

    .line 23
    .line 24
    const-string v0, "\u5b89\u88c5\u4e2d"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onComplete()V
    .locals 10

    .line 1
    iget v0, p0, Lma/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lma/d;->c:Lha/ze;

    .line 7
    .line 8
    iget-object v0, v0, Lha/ze;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lha/u9;

    .line 11
    .line 12
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lma/d;->c:Lha/ze;

    .line 17
    .line 18
    iget-object v1, v0, Lha/ze;->e:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lha/u9;

    .line 21
    .line 22
    invoke-virtual {v1}, Lha/u9;->a()V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lha/z6;

    .line 26
    .line 27
    new-instance v9, Lha/j2;

    .line 28
    .line 29
    const/16 v2, 0x14

    .line 30
    .line 31
    invoke-direct {v9, v2}, Lha/j2;-><init>(I)V

    .line 32
    .line 33
    .line 34
    const-string v7, "\u660e\u767d\u4e86"

    .line 35
    .line 36
    const-string v8, ""

    .line 37
    .line 38
    iget-object v2, v0, Lha/ze;->c:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v3, v2

    .line 41
    check-cast v3, Landroid/app/Activity;

    .line 42
    .line 43
    iget-object v0, v0, Lha/ze;->d:Ljava/lang/Object;

    .line 44
    .line 45
    move-object v4, v0

    .line 46
    check-cast v4, Landroid/content/Context;

    .line 47
    .line 48
    const-string v5, "\u5b89\u88c5\u6210\u529f"

    .line 49
    .line 50
    const-string v6, "\u6b64\u5e94\u7528\u9700\u8981\u91cd\u542f\u7cfb\u7edf\u624d\u53ef\u751f\u6548"

    .line 51
    .line 52
    move-object v2, v1

    .line 53
    invoke-direct/range {v2 .. v9}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
