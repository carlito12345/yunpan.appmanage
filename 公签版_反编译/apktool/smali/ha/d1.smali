.class public final synthetic Lha/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/g1;


# direct methods
.method public synthetic constructor <init>(Lha/g1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/d1;->a:I

    iput-object p1, p0, Lha/d1;->b:Lha/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lha/d1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/d1;->b:Lha/g1;

    .line 7
    .line 8
    iget-object v0, v0, Lha/g1;->h:Landroid/widget/TextView;

    .line 9
    .line 10
    const-string v1, "\u6d4b\u8bd5\u558a\u9ea6"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lha/d1;->b:Lha/g1;

    .line 17
    .line 18
    iget-object v0, v0, Lha/g1;->h:Landroid/widget/TextView;

    .line 19
    .line 20
    const-string v1, "\u505c\u6b62\u558a\u9ea6"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
