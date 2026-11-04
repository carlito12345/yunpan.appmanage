.class public final synthetic Lha/vd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/z6;


# direct methods
.method public synthetic constructor <init>(Lha/z6;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/vd;->a:I

    iput-object p1, p0, Lha/vd;->b:Lha/z6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lha/vd;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/vd;->b:Lha/z6;

    .line 7
    .line 8
    iget-object v0, p1, Lha/z6;->m:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lha/wd;

    .line 11
    .line 12
    invoke-interface {v0}, Lha/wd;->t()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    iget-object p1, p0, Lha/vd;->b:Lha/z6;

    .line 20
    .line 21
    iget-object v0, p1, Lha/z6;->m:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lha/wd;

    .line 24
    .line 25
    invoke-interface {v0}, Lha/wd;->D()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
