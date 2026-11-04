.class public final Lha/x3;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lha/y3;


# direct methods
.method public synthetic constructor <init>(Lha/y3;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/x3;->b:I

    iput-object p1, p0, Lha/x3;->c:Lha/y3;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget p1, p0, Lha/x3;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/x3;->c:Lha/y3;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object p1, p0, Lha/x3;->c:Lha/y3;

    .line 13
    .line 14
    iget-object v0, p1, Lha/y3;->j:Landroid/widget/TextView;

    .line 15
    .line 16
    iget-object v1, p1, Lha/y3;->g:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const-string v1, "\u786e\u5b9a\u5bfc\u51fa"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v1, "\u786e\u5b9a\u5bfc\u5165"

    .line 28
    .line 29
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public E(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lha/x3;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lha/x3;->c:Lha/y3;

    .line 8
    .line 9
    iget-object v0, v0, Lha/y3;->l:Lx9/v0;

    .line 10
    .line 11
    check-cast p1, Lx9/x0;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete()V
    .locals 3

    .line 1
    iget v0, p0, Lha/x3;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lha/x3;->c:Lha/y3;

    .line 8
    .line 9
    iget-object v1, v0, Lha/y3;->j:Landroid/widget/TextView;

    .line 10
    .line 11
    iget-object v2, v0, Lha/y3;->g:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const-string v2, "\u786e\u5b9a\u5bfc\u51fa"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v2, "\u786e\u5b9a\u5bfc\u5165"

    .line 23
    .line 24
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
