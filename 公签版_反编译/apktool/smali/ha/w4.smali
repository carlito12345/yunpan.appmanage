.class public final synthetic Lha/w4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/y4;


# direct methods
.method public synthetic constructor <init>(Lha/y4;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/w4;->a:I

    iput-object p1, p0, Lha/w4;->b:Lha/y4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget p1, p0, Lha/w4;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lha/w4;->b:Lha/y4;

    invoke-static {p1}, Lha/y4;->b(Lha/y4;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lha/w4;->b:Lha/y4;

    invoke-static {p1}, Lha/y4;->a(Lha/y4;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lha/w4;->b:Lha/y4;

    invoke-static {p1}, Lha/y4;->c(Lha/y4;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
