.class public final synthetic Lha/xd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/ge;


# direct methods
.method public synthetic constructor <init>(Lha/ge;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/xd;->a:I

    iput-object p1, p0, Lha/xd;->b:Lha/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lha/xd;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/xd;->b:Lha/ge;

    .line 7
    .line 8
    iget-object v0, v0, Lha/ge;->i:Landroid/widget/TextView;

    .line 9
    .line 10
    const-string v1, "\u8bd5\u542c\u64ad\u653e"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lha/xd;->b:Lha/ge;

    .line 17
    .line 18
    invoke-virtual {v0}, Lha/ge;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
