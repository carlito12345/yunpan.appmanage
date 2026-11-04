.class public final synthetic Lha/nd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/qd;


# direct methods
.method public synthetic constructor <init>(Lha/qd;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/nd;->a:I

    iput-object p1, p0, Lha/nd;->b:Lha/qd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lha/nd;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/nd;->b:Lha/qd;

    .line 7
    .line 8
    iget-object v0, p1, Lha/qd;->l:Landroid/widget/EditText;

    .line 9
    .line 10
    invoke-static {v0}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string p1, "\u8bf7\u8f93\u5165\u547d\u4ee4"

    .line 21
    .line 22
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v1, Lfg/b;

    .line 27
    .line 28
    new-instance v2, La2/c0;

    .line 29
    .line 30
    const/16 v3, 0x17

    .line 31
    .line 32
    invoke-direct {v2, p1, v3, v0}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    invoke-direct {v1, v2, p1}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :pswitch_0
    iget-object p1, p0, Lha/nd;->b:Lha/qd;

    .line 44
    .line 45
    invoke-virtual {p1}, Lha/qd;->dismiss()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_1
    iget-object p1, p0, Lha/nd;->b:Lha/qd;

    .line 50
    .line 51
    iget-object v0, p1, Lha/qd;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    const-string p1, "\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 60
    .line 61
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/4 v0, 0x1

    .line 66
    invoke-static {v0}, Ld/b;->k0(I)Lmc/g;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Lha/pd;

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-direct {v1, p1, v2}, Lha/pd;-><init>(Lha/qd;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 77
    .line 78
    .line 79
    :goto_1
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
