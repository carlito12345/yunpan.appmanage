.class public final Lha/pd;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lha/qd;


# direct methods
.method public synthetic constructor <init>(Lha/qd;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/pd;->b:I

    iput-object p1, p0, Lha/pd;->c:Lha/qd;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method

.method private final Y()V
    .locals 0

    .line 1
    return-void
.end method

.method private final Z(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget p1, p0, Lha/pd;->b:I

    return-void
.end method

.method public E(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lha/pd;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lha/pd;->c:Lha/qd;

    .line 8
    .line 9
    iget-object v0, v0, Lha/qd;->m:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 10
    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p1, v1, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->u(Ljava/lang/CharSequence;ZZ)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    check-cast p1, Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const-string p1, "\u6ca1\u6709\u627e\u5230\u5b89\u88c5\u5305\u6587\u4ef6"

    .line 27
    .line 28
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lha/b6;

    .line 33
    .line 34
    iget-object v1, p0, Lha/pd;->c:Lha/qd;

    .line 35
    .line 36
    iget-object v2, v1, Lha/a4;->a:Landroid/app/Activity;

    .line 37
    .line 38
    iget-object v1, v1, Lha/a4;->b:Landroid/content/Context;

    .line 39
    .line 40
    new-instance v3, Lha/p7;

    .line 41
    .line 42
    const/16 v4, 0x14

    .line 43
    .line 44
    invoke-direct {v3, v4, p0}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v2, v1, p1, v3}, Lha/b6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/a6;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lgc/b;)V
    .locals 1

    .line 1
    iget p1, p0, Lha/pd;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p1, p0, Lha/pd;->c:Lha/qd;

    .line 8
    .line 9
    iget-object p1, p1, Lha/qd;->s:Lha/u9;

    .line 10
    .line 11
    const-string v0, "\u5b89\u88c5\u4e2d"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget v0, p0, Lha/pd;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lha/pd;->c:Lha/qd;

    .line 8
    .line 9
    iget-object v0, v0, Lha/qd;->s:Lha/u9;

    .line 10
    .line 11
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 12
    .line 13
    .line 14
    :pswitch_1
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
