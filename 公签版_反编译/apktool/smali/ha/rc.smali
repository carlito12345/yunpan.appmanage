.class public final synthetic Lha/rc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/d2;

.field public final synthetic c:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lha/d2;Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    iput p3, p0, Lha/rc;->a:I

    iput-object p1, p0, Lha/rc;->b:Lha/d2;

    iput-object p2, p0, Lha/rc;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lha/rc;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/rc;->b:Lha/d2;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lha/r0;

    .line 12
    .line 13
    new-instance v1, Lha/sc;

    .line 14
    .line 15
    iget-object v2, p0, Lha/rc;->c:Landroid/widget/TextView;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v1, p1, v2, v3}, Lha/sc;-><init>(Lha/d2;Landroid/widget/TextView;I)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    iget-object v3, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 23
    .line 24
    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 25
    .line 26
    invoke-direct {v0, v3, p1, v2, v1}, Lha/r0;-><init>(Landroid/app/Activity;Landroid/content/Context;ILha/q0;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    iget-object p1, p0, Lha/rc;->b:Lha/d2;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance v0, Lha/r0;

    .line 39
    .line 40
    new-instance v1, Lha/sc;

    .line 41
    .line 42
    iget-object v2, p0, Lha/rc;->c:Landroid/widget/TextView;

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-direct {v1, p1, v2, v3}, Lha/sc;-><init>(Lha/d2;Landroid/widget/TextView;I)V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    iget-object v3, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 50
    .line 51
    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 52
    .line 53
    invoke-direct {v0, v3, p1, v2, v1}, Lha/r0;-><init>(Landroid/app/Activity;Landroid/content/Context;ILha/q0;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
