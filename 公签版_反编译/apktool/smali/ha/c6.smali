.class public final synthetic Lha/c6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/e6;


# direct methods
.method public synthetic constructor <init>(Lha/e6;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/c6;->a:I

    iput-object p1, p0, Lha/c6;->b:Lha/e6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lha/c6;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    iget-object v0, p0, Lha/c6;->b:Lha/e6;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lha/e6;->b(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    const/4 p1, 0x1

    .line 14
    iget-object v0, p0, Lha/c6;->b:Lha/e6;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lha/e6;->b(I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    const/4 p1, 0x0

    .line 21
    iget-object v0, p0, Lha/c6;->b:Lha/e6;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lha/e6;->b(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
