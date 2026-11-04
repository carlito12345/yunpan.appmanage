.class public final synthetic Lha/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/o1;

.field public final synthetic c:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lha/o1;Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    iput p3, p0, Lha/s1;->a:I

    iput-object p1, p0, Lha/s1;->b:Lha/o1;

    iput-object p2, p0, Lha/s1;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lha/s1;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iget-object v0, p0, Lha/s1;->b:Lha/o1;

    .line 8
    .line 9
    iget-object v1, p0, Lha/s1;->c:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lha/o1;->a(Landroid/widget/TextView;Z)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    const/4 p1, 0x1

    .line 16
    iget-object v0, p0, Lha/s1;->b:Lha/o1;

    .line 17
    .line 18
    iget-object v1, p0, Lha/s1;->c:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Lha/o1;->a(Landroid/widget/TextView;Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    const/4 p1, 0x0

    .line 25
    iget-object v0, p0, Lha/s1;->b:Lha/o1;

    .line 26
    .line 27
    iget-object v1, p0, Lha/s1;->c:Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Lha/o1;->a(Landroid/widget/TextView;Z)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_2
    const/4 p1, 0x1

    .line 34
    iget-object v0, p0, Lha/s1;->b:Lha/o1;

    .line 35
    .line 36
    iget-object v1, p0, Lha/s1;->c:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {v0, v1, p1}, Lha/o1;->a(Landroid/widget/TextView;Z)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
