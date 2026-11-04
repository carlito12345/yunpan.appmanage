.class public final Lha/p4;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lha/q4;


# direct methods
.method public synthetic constructor <init>(Lha/q4;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/p4;->b:I

    iput-object p1, p0, Lha/p4;->c:Lha/q4;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget v0, p0, Lha/p4;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lha/p4;->c:Lha/q4;

    .line 11
    .line 12
    invoke-virtual {p1}, Lha/q4;->a()V

    .line 13
    .line 14
    .line 15
    sget-object p1, Lfa/b0;->a:La2/w0;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {}, La2/w0;->N()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const-string p1, "\u6e05\u7406\u5931\u8d25\uff0c\u8bf7\u7528\u5176\u5b83\u6a21\u5f0f"

    .line 27
    .line 28
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p1, "\u6e05\u7406\u5b8c\u6210"

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public E(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lha/p4;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lha/p4;->c:Lha/q4;

    .line 8
    .line 9
    iget-object v0, v0, Lha/q4;->h:Landroid/widget/TextView;

    .line 10
    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete()V
    .locals 3

    .line 1
    iget v0, p0, Lha/p4;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lha/p4;->c:Lha/q4;

    .line 8
    .line 9
    iget v1, v0, Lha/q4;->i:I

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    const-string v1, "\u6e05\u7406\u5b8c\u6210"

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-static {v1, v2}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lha/q4;->a()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
